unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Button1: TButton;
    Button2: TButton;
    Chart2: TChart;
    Series2: TLineSeries;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit7: TEdit;
    Series1: TLineSeries;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  flag: Boolean;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
const
  g = 9.8;
var
  q, m, dE, tau, Emax, tmax, E, s, x, tt, a, t, v, vs, r0: Real;
  sx, sy, sxy, sx2, a1, a2: Real;
  n: Integer;
begin
  flag := True;

  Series1.Clear;

  q := StrToFloat(Edit1.Text);
  m := StrToFloat(Edit2.Text);
  dE := StrToFloat(Edit3.Text);
  tau := StrToFloat(Edit4.Text);
  Emax := StrToFloat(Edit5.Text);
  tmax := StrToFloat(Edit6.Text);

  E := dE;
///////////////////////////////////////
  n := 0;
  sx := 0;
  sy := 0;
  sxy := 0;
  sx2 := 0;
///////////////////////////////////////
  while flag and (E < Emax) do
    begin
      s := 0;
      x := 0;
      tt := 0;
      a := g * E / m;

      while flag and (tt < tmax) do
        begin
          t :=  tau * ln(1  / random);
          tt := tt + t;
          v := a * t;
          x := x + a * t * t / 2;
          s := s + m * v * v / 2;

          Series1.AddXY(tt * 1e12, x * 1e-6);
        end;

      vs := x / tt;
      r0 := s / tt;
      e := e + de;
///////////////////////////////////////
      n := n + 1;
      sx := sx + e;
      sy := sy + r0;
      sxy := sxy + e * r0;
      sx2 := sx2 + sqr(e);
///////////////////////////////////////
      Series2.AddXY(e * e * 1e-6, r0 * 1e-24);
      Application.ProcessMessages;
    end;

  a1 := (n * sxy - sx * sy) / (n * sx2 - sx * sx);
  a2 := q * q * tau / m;
  Edit7.Text := FloatToStr(a1 / a2);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  flag := False;
end;

end.
