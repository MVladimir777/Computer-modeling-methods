object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1051#1056'11 '#1052#1086#1076#1077#1083#1100' '#1087#1077#1088#1082#1086#1083#1103#1094#1110#1111'. '#1050#1083#1072#1089#1090#1077#1088#1085#1080#1081' '#1072#1085#1072#1083#1110#1079
  ClientHeight = 507
  ClientWidth = 864
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
    Left = 32
    Top = 429
    Width = 9
    Height = 19
    Caption = 'P'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 456
    Width = 11
    Height = 19
    Caption = 'N'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 480
    Width = 89
    Height = 19
    Caption = #1055#1088#1086#1090#1110#1082#1072#1085#1085#1103':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 561
    Top = 440
    Width = 163
    Height = 19
    Caption = #1042#1080#1088#1110#1074#1085#1102#1074#1072#1085#1085#1103' '#1075#1088#1072#1092#1110#1082#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 433
    Top = 486
    Width = 6
    Height = 13
    Caption = '3'
  end
  object Label6: TLabel
    Left = 569
    Top = 486
    Width = 6
    Height = 13
    Caption = '7'
  end
  object Label7: TLabel
    Left = 702
    Top = 486
    Width = 12
    Height = 13
    Caption = '11'
  end
  object Label8: TLabel
    Left = 845
    Top = 486
    Width = 12
    Height = 13
    Caption = '15'
  end
  object Label9: TLabel
    Left = 597
    Top = 394
    Width = 67
    Height = 19
    Caption = #1047#1085#1072#1095#1085#1085#1103':'
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
    Width = 409
    Height = 409
    Legend.Visible = False
    MarginBottom = 0
    MarginLeft = 0
    MarginRight = 0
    MarginTop = 0
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    AxisVisible = False
    View3D = False
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TPointSeries
      ClickableLine = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Chart2: TChart
    Left = 423
    Top = 8
    Width = 434
    Height = 347
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Maximum = 1.030000000000000000
    BottomAxis.Minimum = -0.030000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 1.030000000000000000
    LeftAxis.Minimum = -0.030000000000000000
    View3D = False
    TabOrder = 1
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series2: TLineSeries
      SeriesColor = clRed
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series3: TLineSeries
      SeriesColor = clBlue
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series4: TPointSeries
      ClickableLine = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 127
    Top = 423
    Width = 176
    Height = 25
    Caption = #1047#1072#1087#1086#1074#1085#1080#1090#1080' '#1084#1086#1076#1077#1083#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 127
    Top = 450
    Width = 176
    Height = 25
    Caption = #1042#1080#1079#1085#1072#1095#1080#1090#1080' '#1087#1088#1086#1090#1110#1082#1072#1085#1085#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 49
    Top = 427
    Width = 72
    Height = 21
    TabOrder = 4
    Text = '0,6'
  end
  object Edit2: TEdit
    Left = 49
    Top = 454
    Width = 72
    Height = 21
    TabOrder = 5
    Text = '10'
  end
  object Button3: TButton
    Left = 455
    Top = 363
    Width = 168
    Height = 25
    Caption = #1055#1086#1073#1091#1076#1091#1074#1072#1090#1080' '#1075#1088#1072#1092#1110#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button3Click
  end
  object TrackBar1: TTrackBar
    Left = 423
    Top = 465
    Width = 434
    Height = 34
    Max = 15
    Min = 3
    Position = 3
    TabOrder = 7
    OnChange = TrackBar1Change
  end
  object RadioGroup1: TRadioGroup
    Left = 309
    Top = 422
    Width = 81
    Height = 53
    Caption = #1042#1110#1079#1091#1072#1083#1110#1079#1072#1094#1110#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      #1050#1072#1089#1082#1072#1076
      #1056#1077#1082#1091#1088#1089#1110#1103)
    ParentFont = False
    TabOrder = 8
  end
  object Button4: TButton
    Left = 661
    Top = 363
    Width = 168
    Height = 25
    Caption = #1042#1080#1088#1110#1074#1085#1103#1085#1080#1081' '#1075#1088#1072#1092#1110#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 423
    Top = 392
    Width = 168
    Height = 25
    Caption = #1055#1077#1088#1082#1086#1083#1103#1094#1110#1081#1085#1080#1081' '#1087#1086#1088#1110#1075
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = Button5Click
  end
end
