unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, ExtCtrls, TeeProcs, Chart, StdCtrls, Buttons,
  ArrowCha, VclTee.TeeGDIPlus;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Button1: TButton;
    BitBtn1: TBitBtn;
    Series1: TArrowSeries;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  kb = 1.38E-23;
  n = 10;
  m = 1E-25;
  dt = 1E-14;
  um = 1E-21;
  a = 1E-10;
  Ii = m * a * a / 4;
  Tt = 50;
  k = 2;

var
  Form1: TForm1;
  stop: Boolean;
  j, i: integer;
  y, s, x, w, f: array [1 .. 100] of Double;
  rr: Double;

implementation

{$R *.dfm}

function bk(l: integer): integer;

begin
  if l < 1 then
    l := l + n;
  if l > n then
    l := l - n;
  bk := l;
end;

function u_fi(fi1, fi2: Double): Double;
begin
  u_fi := um * sqr(sin(k * (fi1 - fi2)));
end;

function f_fi(fi1, fi2: Double): Double;
begin
  f_fi := -um * k * sin(2 * k * (fi1 - fi2));
end;

procedure init;
begin
  randomize;
  Form1.Chart1.BottomAxis.Automatic := False;
  Form1.Chart1.Leftaxis.maximum := 1;
  Form1.Chart1.Leftaxis.Minimum := -1;
  Form1.Chart1.BottomAxis.maximum := (n + 1) * 1;
  Form1.Chart1.BottomAxis.Minimum := 0;
  for i := 1 to n do
  begin
    x[i] := a * i;
    s[i] := pi * random;
    w[i] := 0;
  end;

end;

procedure algoritm;
var
  T, ep, ek, E_i, E_etalon, d, gam, temp: Double;
begin
  stop := true;
  T := 0;
  gam := 1E13;
  E_etalon := (d * n * kb * T) / 2;

  while stop do
  begin
    ep := 0;
    ek := 0;
    for i := 1 to n do
    begin
      // for j := i + 1 to n do
      // begin
      temp := f_fi(s[i], s[bk(i - 1)]) + f_fi(s[i], s[bk(i + 1)]);
      // -(((um * k * (sin(k * 2 * (s[i]-s[i - 1])) + sin(k * 2 *(s[i]- s[i + 1])))) +
      E_i := (f_fi(s[i], s[bk(i - 1)]) + f_fi(s[i], s[bk(i + 1)]) -
        (gam * Ii * w[i])) / Ii;
      w[i] := w[i] + E_i * dt;
      s[i] := s[i] + w[i] * dt;

      ek := ek + Ii * sqr(w[i]) / 2;

      // end;

    end;
    for i := 1 to n do
    begin
      ep := ep + u_fi(s[i], s[bk(i - 1)]) + u_fi(s[i], s[bk(i + 1)]);
    end;
    T := T + dt;

    Form1.Series1.Clear;
    for i := 1 to n do
      Form1.Series1.AddArrow(i - sin(s[i]) / 2, -cos(s[i]) / 2,
        i + sin(s[i]) / 2, cos(s[i]) / 2);
    Application.ProcessMessages;
  end;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  init;
  algoritm;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  stop := False;
end;

end.
