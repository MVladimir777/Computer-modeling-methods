unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, VCLTee.Series, VCLTee.TeEngine, VCLTee.TeeProcs,
  VCLTee.Chart;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Chart2: TChart;
    Series1: TPointSeries;
    Series2: TLineSeries;
    Button1: TButton;
    Button2: TButton;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    RadioGroup1: TRadioGroup;
    Button3: TButton;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  flag: Boolean;
  n, z, i, j, k, i1, j1, q: Integer;
  p, e0, e1, e2, e3, ED: Real;
  a: array [1 .. 100, 1 .. 100] of Integer;
  fi: array [0 .. 2, 0 .. 2] of Real = ((0, 0, 0), (0, -2, -5), (0, -5, -3));
  di: array [1 .. 8] of integer = (-1, 0, 1, 0, -1, -1, 1, 1);
  dj: array [1 .. 8] of integer = (0, -1, 0, 1, -1, 1, 1, -1);
  temp: array [1 .. 1, 1 .. 1] of Integer;

implementation

{$R *.dfm}

function BC(m: Integer): Integer;
begin
  BC := m;

  if m < 1
    then BC := m + n;

  if m > n
    then BC := m - n;
end;

procedure visual(var i, j: Integer);
begin
  if a[i, j] = 1
    then  Form1.Series1.AddXY(i, j, '', clWhite)          // A
    else  Form1.Series1.AddXY(i, j, '', clBlack);         // B
end;

procedure change;
begin
  temp[1, 1] := a[i, j];
  a[i, j] := a[i1, j1];
  a[i1, j1] := temp[1, 1];
end;

procedure profitably;
begin
  if e3 < 0
    then
      begin
        e0 := e0 + e3;
        q := q + 1;

        Form1.Series2.AddXY(q, e0);

        visual(i, j);
        visual(i1, j1);
      end
    else
      begin
        temp[1, 1] := a[i, j];
        a[i, j] := a[i1, j1];
        a[i1, j1] := temp[1, 1];
      end;
end;

procedure Metropolis;
begin
  if (e3 > 0) and (Random >= Exp(-e3))    //(e3 <= 0) or ((e3 > 0) and (Random < Exp(-e3))) //�������� Random < Exp(-e3) // (e3<0) or ((Exp(-e3)<Random) and (e3>=0))
    then
      begin
        temp[1, 1] := a[i, j];
        a[i, j] := a[i1, j1];
        a[i1, j1] := temp[1, 1];
      end
    else
      begin
        e0 := e0 + e3;
        q := q + 1;

        Form1.Series2.AddXY(q, e0);

        visual(i, j);
        visual(i1, j1);
      end;
end;

procedure Glauber;
begin
  p := exp(-e3) / (exp(-e3) + 1);

  if Random < p
    then
      begin
        e0 := e0 + e3;
        q := q + 1;

        Form1.Series2.AddXY(q, e0);

        visual(i, j);
        visual(i1, j1);
      end
    else
      begin
        temp[1, 1] := a[i, j];
        a[i, j] := a[i1, j1];
        a[i1, j1] := temp[1, 1];
      end;
end;

procedure Daemon;
begin
  if e3 <= 0
    then
      begin
        ED := ED + abs(e3);
        e0 := e0 + e3;
        q := q + 1;

        Form1.Series2.AddXY(q, e0);

        visual(i, j);
        visual(i1, j1);
      end
    else  if ED >= e3
            then
              begin
                ED := ED - e3;
                e0 := e0 + e3;
                q := q + 1;

                Form1.Series2.AddXY(q, e0);

                visual(i, j);
                visual(i1, j1);
              end
            else
              begin
                temp[1, 1] := a[i, j];
                a[i, j] := a[i1, j1];
                a[i1, j1] := temp[1, 1];
              end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Randomize;

  flag := True;

  Series1.Clear;
  Series2.Clear;

  n := StrToInt(LabeledEdit1.Text);
  p := StrToFloat(LabeledEdit2.Text);
  z := 4;
  e0 := 0;
  q := 0;
  ED := 0;

  for i := 1 to n do
    for j := 1 to n do
      begin
        if i <= n div 2 // Random < p
          then  a[i, j] := 1                              // A
          else  a[i, j] := 2;                             // B

        visual(i, j);
      end;

  for i := 1 to n do
    for j := 1 to n do
      for k := 1 to z do
        begin
          e0 := e0 + fi[a[i, j], a[BC(i + di[k]), BC(j + dj[k])]];
        end;

  LabeledEdit3.Text := FloatToStr(e0);
  Series2.AddXY(q, e0);

  while flag = True do
    begin
      e1 := 0;
      e2 := 0;

      i := Random(n) + 1;
      j := Random(n) + 1;

      k := Random(z) + 1;

      i1 := BC(i + di[k]);
      j1 := BC(j + dj[k]);

      for k := 1 to z do
        begin
          e1 := e1 + fi[a[i, j], a[BC(i + di[k]), BC(j + dj[k])]]
                   + fi[a[i1, j1], a[BC(i1 + di[k]), BC(j1 + dj[k])]];
        end;

      temp[1, 1] := a[i, j];
      a[i, j] := a[i1, j1];
      a[i1, j1] := temp[1, 1];

      for k := 1 to z do
        begin
          e2 := e2 + fi[a[i, j], a[BC(i + di[k]), BC(j + dj[k])]]
                   + fi[a[i1, j1], a[BC(i1 + di[k]), BC(j1 + dj[k])]];
        end;

      e3 := e2 - e1;

      case RadioGroup1.ItemIndex of
        0:  profitably;
        1:  Metropolis;
        2:  Glauber;
        3:  Daemon;
      end;

      Application.ProcessMessages;
      LabeledEdit4.Text := FloatToStr(e0);
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  flag := False;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  flag := False;
end;

end.
