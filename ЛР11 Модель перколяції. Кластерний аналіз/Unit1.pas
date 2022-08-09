unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.StdCtrls,
  VclTee.Series, VclTee.TeEngine, Vcl.ExtCtrls, VclTee.TeeProcs, VclTee.Chart,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Series1: TPointSeries;
    Chart2: TChart;
    Series2: TLineSeries;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Button3: TButton;
    Label3: TLabel;
    TrackBar1: TTrackBar;
    Series3: TLineSeries;
    RadioGroup1: TRadioGroup;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button4: TButton;
    Button5: TButton;
    Label9: TLabel;
    Series4: TPointSeries;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  flag: Boolean;
  n, l, s: integer;
  p, q, dp: Real;
  a: array [1 .. 100, 1 .. 100] of integer;
  b: array [0 .. 100, 1 .. 2] of Real;
  c: array [1 .. 100] of Real;
  procedure virus(i, j: integer);

implementation

{$R *.dfm}

procedure virus(i, j: integer);
begin
  if (i > 0) and (i < n + 1) and (j > 0) and (j < n + 1) then
    if a[j, i] = 1 then
      begin
        a[j, i] := 2;

        if Form1.RadioGroup1.itemIndex = 1 then
          begin
            Form1.Series1.AddXY(i, j, '', clBlue);
            Application.ProcessMessages;
          end;

        virus(i + 1, j);
        virus(i - 1, j);
        virus(i, j + 1);
        virus(i, j - 1);
      end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i, j: integer;
begin
  Series1.Clear;

  p := StrToFloat(Edit1.Text);
  n := StrToInt(Edit2.Text);

  for i := 1 to n do
    for j := 1 to n do
      begin
        if Random < p
          then
            begin
              a[j, i] := 1;
              Series1.AddXY(i, j, '', clWhite);
            end
          else
            begin
              a[j, i] := 0;
              Series1.AddXY(i, j, '', clBlack);
            end;
      end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i, j: integer;
begin
  flag := True;

  label3.Caption := 'Протікання:';

  for i := 1 to n do
    begin
      j := n;
      virus(i, j);
    end;

  if RadioGroup1.itemIndex = 0 then
    for j := n downto 1 do
      begin
        for i := 1 to n do
          if a[j, i] = 2
            then Series1.AddXY(i, j, '', clBlue);

        Application.ProcessMessages;
      end;

  i := 1;

  while flag and (i <= n) do
    begin
      if a[1, i] = 2 then
        begin
          label3.Caption := 'Протікання: True';
          flag := False;
        end;

      i := i + 1;
    end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i, j, k, k2: integer;
begin
  n := StrToInt(Edit2.Text);
  dp := 0.01;

  Series2.Clear;
  Series3.Clear;

  for k2 := 0 to 100 do
    begin
      p := dp * k2;
      s := 0;

      for k := 1 to 1000 do
        begin
          for i := 1 to n do
            for j := 1 to n do
              begin
                if Random < p
                  then a[j, i] := 1
                  else a[j, i] := 0;
              end;

          for i := 1 to n do
            begin
              j := 1;   //n
              virus(i, j);
            end;

          i := 0;
          j := n;   //1

          repeat
            i := i + 1;

            if a[j, i] = 2
              then  s := s + 1;
          until (a[j, i] = 2) or (i = n);
        end;

      q := s / 1000;
      b[k2, 1] := p;
      b[k2, 2] := q;
      Series2.AddXY(p, q);

      Application.ProcessMessages;
    end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  i, j, k, k1, k2: Integer;
  f: array [0 .. 100, 1 .. 11] of Real;
begin
  n := StrToInt(Edit2.Text);
  dp := 0.01;

  Series2.Clear;
  Series3.Clear;

  for k2 := 0 to 100 do
    for k1 := 1 to 11 do
      begin
        f[k2, k1] := 0;
      end;

  for k1 := 1 to 10 do
    begin
      for k2 := 0 to 100 do
        begin
          p := dp * k2;
          s := 0;

          for k := 1 to 1000 do
            begin
              for i := 1 to n do
                for j := 1 to n do
                  begin
                    if Random < p
                      then a[j, i] := 1
                      else a[j, i] := 0;
                  end;

              for i := 1 to n do
                begin
                  j := 1;
                  virus(i, j);
                end;

              i := 0;
              j := n;

              repeat
                i := i + 1;
                if a[j, i] = 2
                  then s := s + 1;
              until (a[j, i] = 2) or (i = n);
            end;

          q := s / 1000;
          //Series2.AddXY(p, q);
          f[k2, k1] := q;
        end;
    end;

  for k2 := 0 to 100 do
    for k1 := 1 to 10 do
      begin
        f[k2, 11] := f[k2, 11] + f[k2, k1];
      end;

  for k2 := 0 to 100 do
    begin
      Series3.AddXY(dp * k2, f[k2, 11] / 10);
      b[k2, 1] := dp * k2;
      b[k2, 2] := f[k2, 11] / 10;
    end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  k2: Integer;
begin
  Series4.Clear;

  for k2 := 2 to 100 do
    begin
      p := (b[k2, 2] - 2 * b[k2-1, 2] + b[k2-2, 2]) / 1;
      if p > 0
        then Series4.AddXY(b[k2, 1], b[k2, 2],'', clred);

      if p < 0
        then Series4.AddXY(b[k2, 1], b[k2, 2],'', clblack);
      Application.ProcessMessages;
    end;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
var
  i, j, r: integer;
begin
  Series3.Clear;

  r := TrackBar1.Position;

  for i := 1 + (r div 2) to 100 - (r div 2) do
    begin
      c[i] := 0;

      for j := i - (r div 2) to i + (r div 2) do
        begin
          c[i] := c[i] + b[j, 2];
        end;

      c[i] := c[i] / r;
      Series3.AddXY(b[i, 1], c[i]);
      Application.ProcessMessages;
    end;
end;

end.
