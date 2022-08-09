unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VclTee.TeEngine, VclTee.Series, Vcl.ExtCtrls, VclTee.TeeProcs, VclTee.Chart,
  VclTee.BubbleCh;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Chart2: TChart;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Series2: TBarSeries;
    Chart3: TChart;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Series1: TPointSeries;
    Series4: TBubbleSeries;
    Series3: TLineSeries;
    Label4: TLabel;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  n, n1, i, j, k, x, y, h: Integer;
  c: array [1 .. 1000] of Integer;
  p, dr, r, s: Real;
begin
  Randomize;

  Series1.Clear;
  Series2.Clear;
  Series3.Clear;
  Series4.Clear;

  n := strtoint(Edit1.Text);
  dr := strtofloat(Edit2.Text);
  n1 := strtoint(Edit3.Text);
  h := strtoint(Edit4.Text);

  Chart1.LeftAxis.SetMinMax(-n, n);
  Chart1.BottomAxis.SetMinMax(-n, n);

  for i := 1 to n do
    begin
      c[i] := 0;
    end;

  for i := 1 to n1 do
    begin
      x := 0;
      y := 0;

      for j := 1 to n do
        begin
          case Random(4) of
            0:  x := x + h;
            1:  x := x + h;
            2:  x := x + h;
            3:  x := x - h;
//            2:  y := y + h;
//            3:  y := y - h;
          end;

          //Series1.AddXY(x, y, '', clBlue);
        end;

      //Series1.AddXY(0, 0, '', clBlack);
      //Series1.AddXY(x, y, '', clRed);
      Series4.AddBubble(x, y, 1, '', clRed);
      //Application.ProcessMessages;

      r := Sqrt(Sqr(x) + Sqr(y));
      k := round(r / dr) + 1;
      c[k] := c[k] + 1;
    end;

  s := 0;
  for i := 1 to n do
    begin
      s := s + c[i] / n1 /(pi * dr * dr * (2 * i - 1))
    end;

  for i := 1 to n do
    if c[i] > 0
      then
        begin
          Series2.AddXY(i, c[i] / n1 /(pi * dr * dr * (2 * i - 1)) / s);
          Series3.AddXY(i * i, ln(c[i]/ n1 /(pi * dr * dr * (2 * i - 1)) / s));
        end;

  {for i := 1 to n do
    begin
      p := c[i] / (pi * sqr(dr) * (2 * i - 1));
      Series3.AddXY(i, p);
    end;

  for i := 1 to n do
    begin
      Series2.AddXY(i, c[i]);
    end;

  for i := 1 to n do
    begin
      if c[i] <> 0
        then Series4.AddXY(i*i, ln(c[i] / (pi * sqr(dr) * (2 * i - 1))));
    end;}
end;

end.
