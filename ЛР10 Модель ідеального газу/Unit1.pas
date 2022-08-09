unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Vcl.StdCtrls, VCLTee.Series;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Chart1: TChart;
    Button2: TButton;
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
  n: Integer;
  temp, m, l, tgl, dt, k, t, s, p: Real;
  x, v: array [1 .. 10000] of Real;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  flag := True;

  Series1.Clear;

  temp := StrToFloat(Edit1.Text);
  m := StrToFloat(Edit2.Text);
  n := StrToInt(Edit3.Text);
  l := StrToFloat(Edit4.Text);
  tgl := StrToFloat(Edit5.Text);
  dt := StrToFloat(Edit6.Text);
  k := StrToFloat(Edit7.Text);

  t := 0;
  s := 0;

  for i := 1 to n do
    begin
      x[i] := random * l;
      v[i] := sqrt(3 * k * Temp / m) * (2 * random - 1);
    end;

  while flag and (t <= tgl) do
    begin
      for i := 1 to n do
        begin
          x[i] := x[i] + v[i] * dt;
          v[i] := sqrt(3 * k * Temp / m) * (2 * random - 1);

          if x[i] < 0 then
            begin
              x[i] := -x[i];
              s := s + abs(v[i]);
            end;

          if x[i] > l then
            begin
              x[i] := 2 * l - x[i];
              s := s + abs(v[i]);
            end;
        end;

      t := t + dt;

      p := 2 * m * s / (2 * sqr(l) * t);

      Series1.AddXY(t * 1e6, p);
      Application.ProcessMessages;
    end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  flag := False;
end;

end.
