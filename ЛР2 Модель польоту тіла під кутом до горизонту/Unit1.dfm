object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1051#1056'2 '#1052#1086#1076#1077#1083#1100' '#1087#1086#1083#1100#1086#1090#1091' '#1090#1110#1083#1072' '#1087#1110#1076' '#1082#1091#1090#1086#1084' '#1076#1086' '#1075#1086#1088#1080#1079#1086#1085#1090#1091
  ClientHeight = 520
  ClientWidth = 851
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
    Left = 544
    Top = 8
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
  object Label2: TLabel
    Left = 698
    Top = 8
    Width = 17
    Height = 19
    Caption = 'v0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 520
    Top = 35
    Width = 38
    Height = 19
    Caption = 'angle'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 707
    Top = 35
    Width = 8
    Height = 19
    Caption = 'k'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 549
    Top = 62
    Width = 9
    Height = 19
    Caption = 'h'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 701
    Top = 62
    Width = 14
    Height = 19
    Caption = 'dt'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 511
    Top = 89
    Width = 47
    Height = 19
    Caption = 'dangle'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 697
    Top = 91
    Width = 18
    Height = 19
    Caption = 'dh'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 551
    Top = 185
    Width = 84
    Height = 25
    Caption = 'Start 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 564
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '10'
  end
  object Edit2: TEdit
    Left = 721
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '30'
  end
  object Edit3: TEdit
    Left = 564
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '30'
  end
  object Edit4: TEdit
    Left = 721
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '2'
  end
  object Edit5: TEdit
    Left = 564
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '0'
  end
  object Edit6: TEdit
    Left = 721
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '0,01'
  end
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 499
    Height = 250
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 'x'
    LeftAxis.Title.Caption = 'y'
    View3D = False
    TabOrder = 7
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loNone
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TBubbleSeries
      Marks.Frame.Visible = False
      ClickableLine = False
      Pointer.HorizSize = 11
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 11
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      RadiusValues.Name = 'Radius'
      RadiusValues.Order = loNone
    end
  end
  object Chart2: TChart
    Left = 8
    Top = 264
    Width = 449
    Height = 250
    Legend.Alignment = laTop
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 'angle'
    LeftAxis.Title.Caption = 'H / L'
    View3D = False
    TabOrder = 8
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series3: TPointSeries
      Marks.Callout.Length = 8
      SeriesColor = clBlue
      Title = '/'
      ClickableLine = False
      Pointer.HorizSize = 3
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 3
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series4: TLineSeries
      SeriesColor = clBlue
      Title = 'flight length'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series5: TPointSeries
      SeriesColor = clRed
      Title = '/'
      ClickableLine = False
      Pointer.HorizSize = 3
      Pointer.InflateMargins = True
      Pointer.Style = psDonut
      Pointer.VertSize = 3
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series6: TLineSeries
      SeriesColor = clRed
      Title = 'flight altitude'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Button2: TButton
    Left = 641
    Top = 185
    Width = 84
    Height = 25
    Caption = 'Start 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = Button2Click
  end
  object Edit7: TEdit
    Left = 564
    Top = 89
    Width = 121
    Height = 21
    TabOrder = 10
    Text = '0,1'
  end
  object CheckBox1: TCheckBox
    Left = 620
    Top = 146
    Width = 129
    Height = 17
    Caption = 'Clear trajectory'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 11
  end
  object Chart3: TChart
    Left = 463
    Top = 264
    Width = 380
    Height = 250
    Legend.Visible = False
    Title.Text.Strings = (
      #1047#1072#1083#1077#1078#1085#1110#1089#1090#1100' '#1076#1072#1083#1100#1085#1086#1089#1090#1110' '#1087#1086#1083#1100#1086#1090#1091' '#1074#1110#1076' '#1087#1086#1095#1072#1090#1082#1086#1074#1086#1111' '#1074#1080#1089#1086#1090#1080' '#1090#1110#1083#1072)
    BottomAxis.Title.Caption = 'h0'
    LeftAxis.Title.Caption = 'L'
    View3D = False
    TabOrder = 12
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series7: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Button3: TButton
    Left = 731
    Top = 185
    Width = 84
    Height = 25
    Caption = 'Start 3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = Button3Click
  end
  object Edit8: TEdit
    Left = 721
    Top = 91
    Width = 121
    Height = 21
    TabOrder = 14
    Text = '0,1'
  end
end
