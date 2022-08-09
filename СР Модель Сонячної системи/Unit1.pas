unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Math,
  VCLTee.BubbleCh;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Button2: TButton;
    Series1: TLineSeries;
    Button3: TButton;
    Series2: TLineSeries;
    Series3: TBubbleSeries;
    CheckBox1: TCheckBox;
    Button4: TButton;
    Chart2: TChart;
    Series4: TLineSeries;
    Edit5: TEdit;
    Edit6: TEdit;
    Series5: TPointSeries;
    Label5: TLabel;
    Label6: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Label8: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit12: TEdit;
    Label12: TLabel;
    Edit13: TEdit;
    Edit14: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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
begin
  flag := False;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  r, m, G, dt, x, y, vx, vy: Real;
begin
  flag := True;

  series1.Clear;
  series3.Clear;

  r := StrToFloat(Edit1.Text);
  m := StrToFloat(Edit2.Text);
  G := StrToFloat(Edit3.Text);
  dt := StrToFloat(Edit4.Text);

  x := r;
  y := 0;

  vx := 0;
  vy := sqrt(G * m / r);

  chart1.LeftAxis.SetMinMax(-r - r / 10, r + r / 10);
  chart1.BottomAxis.SetMinMax(-r - r / 10, r + r / 10);

  While flag do
    begin
      if CheckBox1.Checked
        then
          series1.Visible := True
        else
          series1.Visible := False;

      series1.AddXY(x, y);

      series3.Clear;
      series3.AddBubble(0, 0, r / 5, '', clRed);
      series3.AddBubble(x, y, r / 20, '', clBlue);

      x := x + vx * dt;
      y := y + vy * dt;

      vx := vx + (-G * m * x / power(r, 3)) * dt;
      vy := vy + (-G * m * y / power(r, 3)) * dt;

      Application.ProcessMessages;
    end;

end;

procedure TForm1.Button3Click(Sender: TObject);
var
  rz, rm, ms, mz, mm, G, dt, xz, yz, vxz, vyz, xm, ym, vxm, vym, rms: Real;
begin
  flag := True;

  series1.Clear;
  series2.Clear;
  series3.Clear;

  rz := 149.6e9;
  rm := 384400e3;
  ms := 1.989e30;
  mz := 5.972e24;
  mm := 7.3477e22;
  G := 6.67e-11;
  dt := 24192;

  xz := rz;
  yz := 0;
  xm := xz + rm;
  ym := 0;

  vxz := 0;
  vyz := sqrt(G * ms / rz);
  vxm := 0;
  vym := vyz + sqrt(G * mz / rm);

  chart1.LeftAxis.SetMinMax((-rz - rm) * 1.3e-10, (rz + rm) * 1.3e-10);
  chart1.BottomAxis.SetMinMax((-rz - rm) * 1.3e-10, (rz + rm) * 1.3e-10);

  While flag do
    begin
      if CheckBox1.Checked
        then
          begin
            series1.Visible := True;
            series2.Visible := True;
          end
        else
          begin
            series1.Visible := False;
            series2.Visible := False;
          end;

      series1.AddXY(xz * 1e-10, yz * 1e-10);
      series2.AddXY((xz + (xm - xz) * 60) * 1e-10, (yz + (ym - yz) * 60) * 1e-10);

      series3.Clear;
      series3.AddBubble(0, 0, rz / 4 * 1e-10, '', clRed);
      series3.AddBubble(xz * 1e-10, yz * 1e-10, rz / 14 * 1e-10, '', clBlue);
      series3.AddBubble((xz + (xm - xz) * 60) * 1e-10,
                        (yz + (ym - yz) * 60) * 1e-10, rz / 34 * 1e-10, '', clGray);

      xz := xz + vxz * dt;
      yz := yz + vyz * dt;
      xm := xm + vxm * dt;
      ym := ym + vym * dt;

      rms := sqrt(xm * xm + ym * ym);
      vxz := vxz + (-G * ms * xz / power(rz, 3) - G * mm * (xz - xm) / power(rm, 3)) * dt;
      vyz := vyz + (-G * ms * yz / power(rz, 3) - G * mm * (yz - ym) / power(rm, 3)) * dt;
      vxm := vxm + (-G * ms * xm / power(rms, 3) - G * mz * (xm - xz) / power(rm, 3)) * dt;
      vym := vym + (-G * ms * ym / power(rms, 3) - G * mz * (ym - yz) / power(rm, 3)) * dt;

      Application.ProcessMessages;
    end;

end;

procedure TForm1.Button4Click(Sender: TObject);
var
  r, m, G, dt, dr, r1, tter, vter, avter, y, vy, t: Real;
begin
  series4.Clear;
  series5.Clear;

  r := StrToFloat(Edit1.Text);
  m := StrToFloat(Edit2.Text);
  G := StrToFloat(Edit3.Text);
  dt := StrToFloat(Edit4.Text);
  r1 := StrToFloat(Edit5.Text);
  dr := StrToFloat(Edit6.Text);

  tter := sqrt(4 * sqr(pi) * power(r, 3) / (G * m));
  vter := 2 * pi * r / tter;
  avter := 2 * pi / tter;

  edit7.Text := floattostr(tter);
  edit8.Text := floattostr(1 / tter);
  edit9.Text := floattostr(vter);
  edit10.Text := floattostr(avter);

  y := 0;
  vy := sqrt(G * m / r);
  t := 0;

  While y >= 0 do
    begin
      y := y + vy * dt;
      vy := vy + (-G * m * y / power(r, 3)) * dt;
      t := t + dt;
    end;

  edit11.Text := floattostr(t * 2);
  edit12.Text := floattostr(1 / (t * 2));
  edit13.Text := floattostr(pi * r / t);
  edit14.Text := floattostr(pi / t);

  While r1 <= r do
    begin
      y := 0;
      vy := sqrt(G * m / r1);
      t := 0;

      While y >= 0 do
        begin
          y := y + vy * dt;
          vy := vy + (-G * m * y / power(r1, 3)) * dt;
          t := t + dt;
        end;

      series4.AddXY(r1, sqrt(G * m / r1));
      series5.AddXY(r1, pi * r1 / t);
      Application.ProcessMessages;

      r1 := r1 + dr;
    end;

end;

end.
