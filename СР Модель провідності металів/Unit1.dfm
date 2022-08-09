object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1052#1086#1076#1077#1083#1100' '#1087#1088#1086#1074#1110#1076#1085#1086#1089#1090#1110' '#1084#1077#1090#1072#1083#1110#1074
  ClientHeight = 471
  ClientWidth = 681
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 512
    Top = 10
    Width = 9
    Height = 19
    Caption = 'q'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 512
    Top = 50
    Width = 14
    Height = 19
    Caption = 'm'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 512
    Top = 89
    Width = 18
    Height = 19
    Caption = 'dE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 512
    Top = 129
    Width = 22
    Height = 19
    Caption = 'tau'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 512
    Top = 169
    Width = 39
    Height = 19
    Caption = 'Emax'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 512
    Top = 209
    Width = 35
    Height = 19
    Caption = 'tmax'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 511
    Top = 289
    Width = 40
    Height = 19
    Caption = 'a1/a2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 489
    Height = 225
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 't (1e-12)'
    LeftAxis.Title.Caption = 'x (1e6)'
    View3D = False
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      SeriesColor = clRed
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loNone
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 512
    Top = 249
    Width = 75
    Height = 25
    Caption = 'Start'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 598
    Top = 249
    Width = 75
    Height = 25
    Caption = 'Stop'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Chart2: TChart
    Left = 8
    Top = 239
    Width = 489
    Height = 225
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 'e^2 (1e6)'
    LeftAxis.Title.Caption = 'r0 (1e24)'
    View3D = False
    TabOrder = 3
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series2: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Edit1: TEdit
    Left = 552
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '1,6e-19'
  end
  object Edit2: TEdit
    Left = 552
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '9,1e-31'
  end
  object Edit3: TEdit
    Left = 552
    Top = 87
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '100'
  end
  object Edit4: TEdit
    Left = 552
    Top = 127
    Width = 121
    Height = 21
    TabOrder = 7
    Text = '1e-14'
  end
  object Edit5: TEdit
    Left = 552
    Top = 167
    Width = 121
    Height = 21
    TabOrder = 8
    Text = '1e4'
  end
  object Edit6: TEdit
    Left = 552
    Top = 207
    Width = 121
    Height = 21
    TabOrder = 9
    Text = '1e-12'
  end
  object Edit7: TEdit
    Left = 512
    Top = 314
    Width = 161
    Height = 21
    TabOrder = 10
    Text = '0'
  end
end
