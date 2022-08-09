unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VclTee.TeEngine,
  VclTee.Series, Vcl.ExtCtrls, VclTee.TeeProcs, VclTee.Chart, Vcl.StdCtrls,
  Math, VclTee.BubbleCh;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Series1: TBubbleSeries;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  flag: Boolean;
  n: integer;
  r0, m, kb, sigma, Temp, dt, t, d, E0, r, dx, dy, F: Extended;
  vx, vy, x, y, Fx, Fy: array [1 .. 100, 1 .. 100] of Extended;
  //di: array [1 .. 4] of integer = (-1, 0, 1, 0);
  //dj: array [1 .. 4] of integer = (0, -1, 0, 1);
  //di: array [1 .. 6] of integer = (-1, -1, 0, 1, 1, 0);
  //dj: array [1 .. 6] of integer = (-1, 1, 2, 1, -1, -2);
  di: array [1 .. 8] of integer = (-1, 0, 1, 0, -1, -1, 1, 1);
  dj: array [1 .. 8] of integer = (0, -1, 0, 1, -1, 1, 1, -1);

implementation

{$R *.dfm}

function BCx(ii: integer): integer;
begin
  dx := 0;

  if ii < 1 then
    begin
      BCx := ii + n;
      dx := -n * r0
    end;

  if ii > n then
    begin
      BCx := ii - n;
      dx := n * r0
    end;

end;

function BCy(jj: integer): integer;
begin
  dy := 0;

  if jj < 1 then
    begin
      BCy := jj + n;
      dy := -n * r0
    end;

  if jj > n then
    begin
      BCy := jj - n;
      dy := n * r0
    end;

end;

{function BCx(var ii: integer): integer;
begin
  dx := 0;

  if ii < 1 then
    begin
      BCx := ii + n;
      dx := -n * r0
    end;

  if ii > n then
    begin
      BCx := ii - n;
      dx := n * r0
    end;

end;

function BCy(var jj: integer): integer;
begin
  dy := 0;
  if jj < 1 then
    begin
      BCy := jj + n;
      dy := -n * r0 * sqrt(3) / 2
    end;

  if jj > n then
    begin
      BCy := jj - n;
      dy := n * r0 * sqrt(3) / 2
    end;
end;}

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  flag := False;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  flag := False;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  n, i, j, k: integer;
begin
  Randomize;

  flag := True;

  Series1.Clear;

  r0 := StrToFloat(Edit1.Text);
  m := StrToFloat(Edit2.Text);
  n := StrToInt(Edit3.Text);
  kb := strtofloat(Edit4.Text);
  sigma := strtofloat(Edit5.Text) * kb;
  Temp := strtofloat(Edit6.Text);
  dt := strtofloat(Edit7.Text);

  Form1.Chart1.LeftAxis.SetMinMax(0, r0 * (n + 1) * 1E9 * 1.1);
  Form1.Chart1.BottomAxis.SetMinMax(0, r0 * (n + 1) * 1E9 * 1.1);

  //Form1.Chart1.LeftAxis.SetMinMax(0, ((n + 1) * r0 * sqrt(3) / 2) * 1E9 * 1.1);
  //Form1.Chart1.BottomAxis.SetMinMax(0, ((n + 1) * r0 + r0 / 2) * 1E9 * 1.1);

  for i := 1 to n do
    for j := 1 to n do
      begin
        //x[i, j] := (r0 * i + (j mod 2) * r0 / 2) * 1.1;
        //y[i, j] := (r0 * j * sqrt(3) / 2) * 1.1;
        x[i, j] := r0 * i * 1.1;
        y[i, j] := r0 * j * 1.1;

        vx[i, j] := sqrt(2 * kb * Temp * ln(1 / random) / m) * sin(2 * pi * random);
        vy[i, j] := sqrt(2 * kb * Temp * ln(1 / random) / m) * sin(2 * pi * random);
      end;

  for i := 1 to n do
    for j := 1 to n do
      begin
        Form1.Series1.AddBubble(x[i, j] * 1e9, y[i, j] * 1e9, r0 * 1e9/2, '', clRed);
      end;

  d := 2;
  t := 0;
  E0 := (n * d * kb * Temp);

  while flag do
    begin
      for i := 1 to n do
        for j := 1 to n do
          begin
            Fx[i, j] := 0;
            Fy[i, j] := 0;
          end;


      for i := 1 to n do
        for j := 1 to n do
          for k := 1 to 8 do
            begin
              r := sqrt(sqr(x[i, j] - (x[BCx(i + di[k]), BCy(j + dj[k])] + dx)) +
                        sqr(y[i, j] - (y[BCx(i + di[k]), BCy(j + dj[k])] + dy)));

              f := 24 * sigma / r * (2 * exp(12 * ln(r0 / r)) - exp(6 * ln(r0 / r)));


              Fx[i, j] := Fx[i, j] + f / r * (x[i, j] - (x[BCx(i + di[k]), BCy(j + dj[k])] + dx));
              Fy[i, j] := Fy[i, j] + f / r * (y[i, j] - (y[BCx(i + di[k]), BCy(j + dj[k])] + dy));
            end;

      for i := 1 to n do
        for j := 1 to n do
          begin
            vx[i, j] := vx[i, j] + Fx[i, j] / m * dt;
            vy[i, j] := vy[i, j] + Fy[i, j] / m * dt;

            x[i, j] := x[i, j] + vx[i, j] * dt;
            y[i, j] := y[i, j] + vy[i, j] * dt;
          end;

      if CheckBox1.Checked then
        begin
          series1.Clear;

          for i := 1 to n do
            for j := 1 to n do
              begin
                Form1.Series1.AddBubble(x[i, j] * 1e9, y[i, j] * 1e9, r0 * 1e9 / 2, '', clRed);
              end;
        end;

      t := t + dt;

      Application.ProcessMessages;
     end;

end;

end.
