unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.BubbleCh;

const
  g = 9.8;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TBubbleSeries;
    Chart2: TChart;
    Button2: TButton;
    Series4: TLineSeries;
    Series3: TPointSeries;
    Series5: TPointSeries;
    Series6: TLineSeries;
    Label7: TLabel;
    Edit7: TEdit;
    CheckBox1: TCheckBox;
    Chart3: TChart;
    Series7: TLineSeries;
    Button3: TButton;
    Label8: TLabel;
    Edit8: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  m, v0, angle, k, h0, dt, ang, vx, vy, x, y, v: Real;
  dang, y1, y2, y3, h, l: Real;
  h1, dh: Real;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if CheckBox1.Checked
    then series1.Clear
    else series1.AddNullXY(x, y);

  m := strtofloat(edit1.Text);
  v0 := strtofloat(edit2.Text);
  angle := strtofloat(edit3.Text);
  k := strtofloat(edit4.Text);
  h0 := strtofloat(edit5.Text);
  dt := strtofloat(edit6.Text);

  ang := pi * angle / 180;
  vx := v0 * cos(ang);
  vy := v0 * sin(ang);
  x := 0;
  y := h0;

  while y >= 0 do
    begin
      series1.AddXY(x, y);
      series2.Clear;
      series2.AddBubble(x, y, 0.1, ' ', clRed);

      x := x + vx * dt;
      y := y + vy * dt;
      v := sqrt(sqr(vx) + sqr(vy));
      vx := vx + (-k / m * v * vx) * dt;
      vy := vy + (-g - k / m * v * vy) * dt;

      Application.ProcessMessages;
    end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  series3.Clear;
  series4.Clear;
  series5.Clear;
  series6.Clear;

  v0 := strtofloat(edit2.Text);
  dt := strtofloat(edit6.Text);
  dang := strtofloat(edit7.Text);
  ang := 0;

  while ang <= (pi / 2) do
    begin
      vx := v0 * cos(ang);
      vy := v0 * sin(ang);
      x := 0;
      y1 := 0;

      x := x + vx * dt;
      y2 := y1 + vy * dt;
      vy := vy - g * dt;

      x := x + vx * dt;
      y3 := y2 + vy * dt;

      while (y1 - y2) * (y2 - y3) > 0 do
        begin
          y1 := y2;
          y2 := y3;
          vy := vy - g * dt;
          x := x + vx * dt;
          y3 := y3 + vy * dt;
        end;

      l := sqr(v0) * sin(2 * ang) / g;
      h := sqr(v0) * sqr(sin(ang)) / (2 * g);

      series3.AddXY(ang, 2 * x);
      series4.AddXY(ang, l);
      series5.AddXY(ang, y2);
      series6.AddXY(ang, h);
      Application.ProcessMessages;

      ang := ang + dang;
    end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  series7.Clear;

  m := strtofloat(edit1.Text);
  v0 := strtofloat(edit2.Text);
  angle := strtofloat(edit3.Text);
  k := strtofloat(edit4.Text);
  h := strtofloat(edit5.Text);
  dt := strtofloat(edit6.Text);
  dh := strtofloat(edit8.Text);

  ang := pi * angle / 180;
  h1 := 0;

  while h1 < h do
    begin
      vx := v0 * cos(ang);
      vy := v0 * sin(ang);
      x := 0;
      y := h1;

      while y >= 0 do
        begin
          x := x + vx * dt;
          y := y + vy * dt;
          v := sqrt(sqr(vx) + sqr(vy));
          vx := vx + (-k / m * v * vx) * dt;
          vy := vy + (-g - k / m * v * vy) * dt;
        end;

      series7.AddXY(h1, x);
      Application.ProcessMessages;

      h1 := h1 + dh;
    end;

end;

end.
