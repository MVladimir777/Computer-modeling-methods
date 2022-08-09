unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Vcl.StdCtrls,
  VCLTee.BubbleCh;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Chart1: TChart;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Button2: TButton;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    Series1: TBubbleSeries;
    Label7: TLabel;
    Edit7: TEdit;
    Chart2: TChart;
    Series2: TLineSeries;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    Label8: TLabel;
    Label9: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Label10: TLabel;
    CheckBox1: TCheckBox;
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

procedure fixed_walls(var x, y, vx, vy: array of Extended; var lx, ly: Extended; var n: Integer);
var
  i: Integer;
begin
  for i := 0 to n-1 do
    begin
      if x[i] < 0 then
        begin
          x[i] := 2 *  0 - x[i];
          vx[i] := -vx[i];
        end;

      if x[i] > lx then
        begin
          x[i] := 2 * lx - x[i];
          vx[i] := -vx[i];
        end;

      if y[i] < 0 then
        begin
          y[i] := 2 * 0 - y[i];
          vy[i] := -vy[i];
        end;

      if y[i] > ly then
        begin
          y[i] := 2 * ly - y[i];
          vy[i] := -vy[i];
        end;
    end;
end;

procedure BC1(var x1, x2, y1, y2, lx, ly, dx, dy: Extended);
begin
  if (x2 - x1) > (lx / 2)
    then dx := -lx;

  if (x1 - x2) > (lx / 2)
    then dx := lx;

  if (y2 - y1) > (ly / 2)
    then dy := -ly;

  if (y1 - y2) > (ly / 2)
    then dy := ly;
end;

procedure BC2(var x, y: array of Extended; var lx, ly: Extended; var n: Integer);
var
  i: Integer;
begin
  for i := 0 to n-1 do
    begin
      if x[i] < 0
        then x[i] := x[i] + lx;

      if x[i] > lx
        then x[i] := x[i] - lx;

      if y[i] < 0
        then y[i] := y[i] + ly;

      if y[i] > ly
        then y[i] := y[i] - ly;
    end;
end;

procedure force(var x, y, fx, fy: array of Extended; var sigma, r0, lx, ly: Extended; var n: Integer);
var
  dx, dy, r, f: Extended;
  i, j: Integer;
begin
  for i := 0 to n-1 do
    begin
      fx[i] := 0;
      fy[i] := 0;
    end;

  for i := 0 to n-1 do
    for j := i + 1 to n-1 do
      begin
        dx := 0;
        dy := 0;

        if Form1.RadioGroup1.itemIndex = 2
          then BC1(x[i], x[j], y[i], y[j], lx, ly, dx, dy);

        r := sqrt(sqr(x[i] - (x[j] + dx)) + sqr(y[i] - (y[j] + dy)));
        f := 24 * sigma / r * (2 * exp(12 * ln(r0 / r)) - exp(6 * ln(r0 / r)));

        fx[i] := fx[i] + f * (x[i] - (x[j] + dx)) / r;
        fx[j] := fx[j] - f * (x[i] - (x[j] + dx)) / r;
        fy[i] := fy[i] + f * (y[i] - (y[j] + dy)) / r;
        fy[j] := fy[j] - f * (y[i] - (y[j] + dy)) / r;
      end;
end;

procedure method_EC(var x, y, vx, vy, fx, fy: array of Extended; var m, dt: Extended; var n: Integer);
var
  i: Integer;
begin
  for i := 0 to n-1 do
    begin
      vx[i] := vx[i] + fx[i] / m * dt;
      vy[i] := vy[i] + fy[i] / m * dt;

      x[i] := x[i] + vx[i] * dt;
      y[i] := y[i] + vy[i] * dt;
    end;
end;

procedure midpoint(var x, y, vx, vy, fx, fy: array of Extended; var m, dt: Extended; var n: Integer);
var
  vx1, vy1: Extended;
  i: Integer;
begin
  for i := 0 to n-1 do
    begin
      vx1 := vx[i];
      vy1 := vy[i];

      vx[i] := vx[i] + fx[i] / m * dt;
      vy[i] := vy[i] + fy[i] / m * dt;

      x[i] := x[i] + (vx[i] + vx1) / 2 * dt;
      y[i] := y[i] + (vy[i] + vy1) / 2 * dt;
    end;
end;

procedure verlespeed(var x, y, vx, vy, fx, fy, fx_old, fy_old: array of Extended; var m, dt: Extended; var n: Integer);
var
  i: Integer;
begin
  for i := 0 to n-1 do
    begin
      x[i] := x[i] + vx[i] * dt + fx_old[i] * sqr(dt) / (2 * m);
      y[i] := y[i] + vy[i] * dt + fy_old[i] * sqr(dt) / (2 * m);

      vx[i] := vx[i] + (fx[i] + fx_old[i]) * dt / (2 * m);
      vy[i] := vy[i] + (fy[i] + fy_old[i]) * dt / (2 * m);
    end;
end;

procedure BeamanSchofield(var x, y, vx, vy, fx, fy, fx_old, fy_old, fx_2old, fy_2old: array of Extended; var m, dt: Extended; var n: Integer);
var
  i: Integer;
begin
  for i := 0 to n-1 do
    begin
      x[i] := x[i] + vx[i] * dt + (4 * fx_old[i] - fx_2old[i]) * sqr(dt) / (6 * m);
      y[i] := y[i] + vy[i] * dt + (4 * fy_old[i] - fy_2old[i]) * sqr(dt) / (6 * m);

      vx[i] := vx[i] + (2 * fx[i] + 5 * fx_old[i] - fx_2old[i]) * dt / (6 * m);
      vy[i] := vy[i] + (2 * fy[i] + 5 * fy_old[i] - fy_2old[i]) * dt / (6 * m);
    end;
end;

procedure halfstep(var x, y, vx, vy, fx, fy: array of Extended; var sigma, r0, m, dt, lx, ly: Extended; var n: Integer);
var
  i: Integer;
begin
  force(x, y, fx, fy, sigma, r0, lx, ly, n);

  for i := 0 to n-1 do
    begin
      vx[i] := vx[i] + fx[i] / (2 * m) * dt;
      vy[i] := vy[i] + fy[i] / (2 * m) * dt;
    end;
end;

procedure canonical(var vx, vy: array of Extended; var m, Ek, E0: Extended; var n: Integer);
var
  norma: Extended;
  i: Integer;
begin
  Ek := 0;

  for i := 0 to n-1 do
    begin
      Ek := Ek + m * (vx[i] * vx[i] + vy[i] * vy[i]);
    end;

  norma := sqrt(E0 / Ek);

  for i := 0 to n-1 do
    begin
      vx[i] := vx[i] * norma;
      vy[i] := vy[i] * norma;
    end;
end;

procedure microcanonical(var x, y, vx, vy: array of Extended; var sigma, r0, m, Ek, Ep, E0: Extended; var n: Integer);
var
  r, norma: Extended;
  i, j: Integer;
begin
  Ek := 0;
  Ep := 0;

  for i := 0 to n-1 do
    for j := i + 1 to n-1 do
      begin
        r := sqrt(sqr(x[i] - x[j]) + sqr(y[i] - y[j]));
        Ep := Ep + 4 * sigma * (exp(12 * ln(r0 / r)) - exp(6 * ln(r0 / r)));
      end;

  for i := 0 to n-1 do
    begin
      Ek := Ek + m * (vx[i] * vx[i] + vy[i] * vy[i]);
    end;

  norma := sqrt(2 * (E0 - Ep) / Ek);

  for i := 0 to n-1 do
    begin
      vx[i] := vx[i] * norma;
      vy[i] := vy[i] * norma;
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  flag := False;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  lx, ly, m, r0, k, sigma, temp, dt, t, Ek, Ep, E0: Extended;
  n, i, j: Integer;
  x, y, vx, vy, fx, fy, fx_old, fy_old, fx_2old, fy_2old: array [0..150] of Extended;
begin
  Randomize;

  flag := True;

  Series1.Clear;
  Series2.Clear;

  for i := 0 to 150 do
    begin
      x[i] := 0;
      y[i] := 0;

      vx[i] := 0;
      vy[i] := 0;

      fx[i] := 0;
      fy[i] := 0;

      fx_old[i] := 0;
      fy_old[i] := 0;

      fx_2old[i] := 0;
      fy_2old[i] := 0;
    end;

  lx := strtofloat(Edit1.Text);
  ly := strtofloat(Edit2.Text);
  m := strtofloat(Edit3.Text);
  r0 := strtofloat(Edit4.Text);
  k := strtofloat(Edit5.Text);
  sigma := strtofloat(Edit6.Text) * k;
  n := strtoint(Edit7.Text);
  temp := strtofloat(Edit8.Text);
  dt := strtofloat(Edit9.Text);

  if RadioGroup1.itemIndex = 0
    then  begin
            chart1.LeftAxis.Automatic := True;
            chart1.BottomAxis.Automatic := True;
          end
    else  begin
            chart1.LeftAxis.SetMinMax(0, lx * 1e9);
            chart1.BottomAxis.SetMinMax(0, ly * 1e9);
          end;

  for i := 0 to n-1 do
    begin
      repeat
        x[i] := (lx - 2 * r0) * random + r0;
        y[i] := (ly - 2 * r0) * random + r0;

        flag := true;
        j := 0;

        while (j <= i-1) and flag do
          begin
            if sqrt(sqr(x[i] - x[j]) + sqr(y[i] - y[j])) < (2 * r0)
              then flag := false;

            j := j + 1;
          end;

      until flag;

      vx[i] := sqrt(2 * k * temp * ln(1 / random) / m) * sin(2 * pi * random);
      vy[i] := sqrt(2 * k * temp * ln(1 / random) / m) * sin(2 * pi * random);

      series1.AddBubble(x[i] * 1e9, y[i] * 1e9, r0 * 1e9/2, '', clRed);
      Application.ProcessMessages;
    end;

  if RadioGroup2.itemIndex = 4
    then halfstep(x, y, vx, vy, fx, fy, sigma, r0, m, dt, lx, ly, n);

  t := 0;
  E0 := n * 2 * k * Temp;

  while flag do
    begin
      fx_2old := fx_old;
      fy_2old := fy_old;

      fx_old := fx;
      fy_old := fy;

      force(x, y, fx, fy, sigma, r0, lx, ly, n);

      case RadioGroup2.itemIndex of
        0:  method_EC(x, y, vx, vy, fx, fy, m, dt, n);
        1:  midpoint(x, y, vx, vy, fx, fy, m, dt, n);
        2:  verlespeed(x, y, vx, vy, fx, fy, fx_old, fy_old, m, dt, n);
        3:  BeamanSchofield(x, y, vx, vy, fx, fy, fx_old, fy_old, fx_2old, fy_2old, m, dt, n);
        4:  method_EC(x, y, vx, vy, fx, fy, m, dt, n);
      end;

      case RadioGroup1.itemIndex of
        1:  fixed_walls(x, y, vx, vy, lx, ly, n);
        2:  BC2(x, y, lx, ly, n);
      end;

      if CheckBox1.Checked then
        begin
          series1.Clear;

          for i := 0 to n-1 do
            begin
              series1.AddBubble(x[i] * 1e9, y[i] * 1e9, r0 * 1e9 / 2, '', clRed);
            end;
        end;

      case RadioGroup3.itemIndex of
        1:  begin
              canonical(vx, vy, m, Ek, E0, n);

              if round(t / dt) mod 1000 = 0
                then Series2.AddXY(round(t / dt), Ek / E0);
            end;
        2:  begin
              microcanonical(x, y, vx, vy, sigma, r0, m, Ek, Ep, E0, n);

              if round(t / dt) mod 1000 = 0
                then Series2.AddXY(round(t / dt), (Ek / 2 + Ep) / E0);
            end;
      end;

      t := t + dt;

      Application.ProcessMessages;
    end;

end;

end.
