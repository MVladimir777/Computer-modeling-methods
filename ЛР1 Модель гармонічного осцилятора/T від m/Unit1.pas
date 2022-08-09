unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.BubbleCh;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Chart2: TChart;
    Series1: TLineSeries;
    Series2: TPointSeries;
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
const
  m0 = 10;
  k = 1;
  xeq = 0;
  dt = 0.01;
  dm = 0.1;
var
  m, x, v, t, Tp, x1, x2, x3, t1, t2, a: Real;
  I: Integer;
begin
  series1.Clear;
  series2.Clear;

  m := 0.1;
  Tp := 0;

  while m < m0 do
    begin
      t := 0;
      x := 1;
      x1 := x;
      v := 1;

      x2 := x1 + v * dt;
      v := v + ((-k * (x - xeq)) / m) * dt;

      x3 := x2 + v * dt;
      v := v + ((-k * (x - xeq)) / m) * dt;

      while (x1 - x2) * (x2 - x3) > 0 do
        begin
          x1 := x2;
          x2 := x3;
          x3 := x3 + v * dt;
          a := (-k * (x3 - xeq)) / m;
          v := v + a * dt;
          t := t + dt;
        end;

      t1 := t;

      for I := 1 to 10 do
       begin
         x1 := x2;
         x2 := x3;
         x3 := x3 + v * dt;
         a := (-k * (x3 - xeq)) / m;
         v := v + a * dt;
         t := t + dt;
       end;


      while (x1 - x2) * (x2 - x3) > 0 do
        begin
          x1 := x2;
          x2 := x3;
          x3 := x3 + v * dt;
          a := (-k * (x3 - xeq)) / m;
          v := v + a * dt;
          t := t + dt;
        end;

      t2 := t;

      series2.AddXY(m, 2*(t2-t1));

      Tp := 2 * pi * sqrt(m/k);
      series1.AddXY(m, Tp);
      Application.ProcessMessages;

      m := m + dm;
    end;

end;

end.
