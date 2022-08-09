unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Math,
  Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Series1: TPointSeries;
    Button1: TButton;
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
    Chart2: TChart;
    Label7: TLabel;
    Edit7: TEdit;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Series2: TLineSeries;
    GroupBox1: TGroupBox;
    CheckBox4: TCheckBox;
    Label8: TLabel;
    Edit8: TEdit;
    Label9: TLabel;
    Edit9: TEdit;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  e = 1.6e-19;
  h = 6.62e-34 / (2* pi);
  me = 9.1e-31;
  kb = 1.38e-23;
  ub = e * h / (2 * me);

var
  Form1: TForm1;
  flag: Boolean;
  n, Steps: Integer;
  B, T, J1, dB, dT, P, B_max, T_max: Real;
  S: array [1..100, 1..100] of Real;
  di: array [1 .. 4] of Integer = (-1, 0, 1, 0);
  dj: array [1 .. 4] of Integer = (0, 1, 0, -1);

implementation

{$R *.dfm}

function bk(ii: integer): integer;
begin
  if ii < 1
    then ii := ii + n;

  if ii > n
    then ii := ii - n;

  bk := ii;
end;

procedure visual(S: Real; i, j: Integer);
begin
  if S = 1
    then
      begin
        Form1.Series1.AddXY(i + 0.1, j, '', clRed);
        //Form1.Series1.AddXY(i - 0.1, j, '', clBlue);
      end
    else
      begin
        Form1.Series1.AddXY(i + 0.1, j, '', clBlue);
        //Form1.Series1.AddXY(i - 0.1, j, '', clRed);
      end;
end;

procedure A1;
var
  i, j: Integer;
  q: Real;
begin
  //q := ub * B / (kb * T);
  //P := exp(q) / (exp(q) + exp(-q));

  for i := 1 to n do
    for j := 1 to n do
      begin
        if random < P
          then
            begin
              S[i, j] := 1;
            end
          else
            begin
              S[i, j] := -1;
            end;

        if Form1.CheckBox4.Checked
        then  Form1.Series1.Visible := True
        else  Form1.Series1.Visible := False;

        visual(S[i, j], i, j);
      end;
end;

function A2: Real;
var
  i, j: Integer;
  K: Real;
begin
  K := 0;

  for i := 1 to n do
    for j := 1 to n do
      begin
        K := K + S[i, j];
      end;

  A2 := ub * K;
end;

procedure A3_1;
var
  i, j, o: Integer;
  U, q, K: Real;
begin
  i := random(n) + 1;
  j := random(n) + 1;

  U := -ub * B * S[i, j];

  for o := 1 to 4 do
    begin
      U := U - J1 * S[i, j] * S[bk(i + di[o]), bk(j + dj[o])] / 2;
    end;

  q := -U / (kb * T);
  P := exp(q) / (exp(q) + exp(-q));

  if random < P
    then  S[i, j] := S[i, j]
    else  S[i, j] := -S[i, j];

  if Form1.CheckBox4.Checked
    then  Form1.Series1.Visible := True
    else  Form1.Series1.Visible := False;

  visual(S[i, j], i, j);
  Application.ProcessMessages;

  K := 0;
  for i := 1 to n do
    for j := 1 to n do
      begin
        K := K + S[i, j];
      end;
  Form1.Edit9.Text := FloatToStr(K);
end;

procedure A3;
var
  L: Integer;
begin
  if Form1.RadioButton1.Checked
    then
      while flag do
        A3_1;

  if Form1.RadioButton3.Checked
    then
      for L := 1 to n * n * Steps do
        A3_1;
end;

procedure A4;
begin
  A1;
  A3;
end;

procedure A6(var T: Real);
var
  Mr: Real;
begin
  B := 0;

  A1;

  while flag and (B <= B_max) do
    begin
      A3;
      Mr := A2;

      Form1.Series2.AddXY(B, Mr * 1e21);
      Application.ProcessMessages;
      B := B + dB;
    end;

  while flag and (B >= -B_max) do
    begin
      A3;
      Mr := A2;

      Form1.Series2.AddXY(B, Mr * 1e21);
      Application.ProcessMessages;
      B := B - dB;
    end;

  while flag and (B <= B_max) do
    begin
      A3;
      Mr := A2;

      Form1.Series2.AddXY(B, Mr * 1e21);
      Application.ProcessMessages;
      B := B + dB;
    end;
end;

procedure MMS(var x, y: array of Real; var i1: Integer);
var
  i: Integer;
  a, b, c, d, k, z: Real;
begin
  a := 0;
  b := 0;
  c := 0;
  d := 0;

  for i := 0 to i1 do
    begin
      a := a + x[i];
      b := b + y[i];
      c := c + x[i] * x[i];
      d := d + x[i] * y[i];
    end;

  k := (a * b - n * d) / (a * a - n * c);
  z := (b - k * a) / n;

  for i := 0 to i1 do
    begin
      y[i] := z + k * x[i];
    end;

end;

{procedure A5;
var
  i: Integer;
  w: Real;
  B_mas, M_mas: array [0..100] of Real;
begin
  T := 1;

  while T <= T_max do
    begin
      B := 0;
      i := 0;

      while B <= B_max do
        begin
          A1;
          B_mas[i] := B;
          M_mas[i] := A2;
          i := i + 1;
          B := B + dB;
        end;

      MMS(B_mas, M_mas, i);     //, w, temp

      //w := (M_mas[i] - M_mas[i]) * ub / (B_mas[i] - B_mas[i])

      //Form1.Series2.AddXY(T, w);
      Application.ProcessMessages;

      T := T + dT;
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
begin
  Randomize;

  flag := True;

  Series1.Clear;
  Series2.Clear;
  Series3.Clear;
  Series4.Clear;

  n := StrToInt(Edit1.Text);
  B := StrToFloat(Edit2.Text);
  T := StrToFloat(Edit3.Text);
  J1 := StrToFloat(Edit4.Text);
  dB := StrToFloat(Edit5.Text);
  dT := StrToFloat(Edit6.Text);
  steps := StrToInt(Edit7.Text);
  P := StrToFloat(Edit8.Text);
  B_max := B;
  T_max := T;

  if Form1.RadioButton1.Checked
    then A4;

  //if Form1.RadioButton2.Checked
    //then A5;

  if Form1.RadioButton3.Checked
    then
      begin
        Form1.Series3.AddXY(-B_max, 0);
        Form1.Series3.AddXY(B_max, 0);
        Form1.Series4.AddXY(0, ub * n * n * 1e21);
        Form1.Series4.AddXY(0, -ub * n * n * 1e21);

        A6(T);
      end;

end;

end.
