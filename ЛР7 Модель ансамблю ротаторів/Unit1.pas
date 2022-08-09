unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VclTee.TeEngine,
  VclTee.Series, VclTee.ArrowCha, Vcl.StdCtrls, Vcl.ExtCtrls, VclTee.TeeProcs,
  VclTee.Chart;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Chart1: TChart;
    Series1: TArrowSeries;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
  n, i, j, k: integer;
  l, kqp, gama, m, dt, Um, II, x0, y0, x1, y1, e: Real;
  qp, w: array [1 .. 100, 1..100] of Real;
  di: array [1 .. 4] of Integer = (-1, 0, 1, 0);
  dj: array [1 .. 4] of Integer = (0, 1, 0, -1);

implementation

{$R *.dfm}

function bk(l: integer): integer;
begin
  if l < 1
    then l := l + n;

  if l > n
    then l := l - n;

  bk := l;
end;

function force(angle1, angle2: Real): Real;
begin
  force := -Um * kqp * sin(2 * kqp * (angle1 - angle2));
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  flag := False;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  flag := False;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Randomize;

  flag := True;

  Series1.Clear;

  n := StrToInt(Edit1.Text);
  l := StrToFloat(Edit2.Text);
  kqp := StrToFloat(ComboBox1.Text);
  gama := StrToFloat(Edit3.Text);
  m := StrToFloat(Edit4.Text);
  dt := StrToFloat(Edit5.Text);
  Um := StrToFloat(Edit6.Text);
  II := m * sqr(l) / 4;

  Chart1.LeftAxis.SetMinMax(0, n * l + l);
  Chart1.BottomAxis.SetMinMax(0, n * l + l);

  for i := 1 to n do
    for j := 1 to n do
      begin
        qp[i, j] := 2 * pi * random;
        w[i, j] := 0;

        x0 := l * i - l/2 * cos(qp[i, j]);
        y0 := l * j - l/2 * sin(qp[i, j]);
        x1 := l * i + l/2 * cos(qp[i, j]);
        y1 := l * j + l/2 * sin(qp[i, j]);

        Series1.AddArrow(x0, y0, x1, y1);
      end;

  while flag do
    begin
      for i := 1 to n do
        for j := 1 to n do
          begin
            {e := (force(qp[i, j], qp[bk(i - 1), j]) + force(qp[i, j], qp[bk(i + 1), j])
                + force(qp[i, j], qp[i, bk(j - 1)]) + force(qp[i, j], qp[i, bk(j - 1)])
                - gama * II * w[i, j]) / II;}
            e := 0;

            for k := 1 to 4 do
              begin
                e := e + force(qp[i, j], qp[bk(i + di[k]), bk(j + dj[k])]) / II;
              end;

            e := e - gama * w[i, j];

            w[i, j] := w[i, j] + e * dt;
            qp[i, j] := qp[i, j] + w[i, j] * dt;
          end;

      Series1.Clear;
      for i := 1 to n do
        for j := 1 to n do
          begin
            x0 := l * i - l/2 * cos(qp[i, j]);
            y0 := l * j - l/2 * sin(qp[i, j]);
            x1 := l * i + l/2 * cos(qp[i, j]);
            y1 := l * j + l/2 * sin(qp[i, j]);

            Series1.AddArrow(x0, y0, x1, y1);
          end;

      Application.ProcessMessages;
    end;

end;

end.
