object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1051#1056'3 '#1052#1086#1076#1077#1083#1100' '#1086#1076#1085#1086#1072#1090#1086#1084#1085#1086#1075#1086' '#1083#1072#1085#1094#1102#1078#1082#1072' '#1079#1074#8217#1103#1079#1072#1085#1080#1093' '#1086#1089#1094#1080#1083#1103#1090#1086#1088#1110#1074
  ClientHeight = 465
  ClientWidth = 907
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
    Left = 560
    Top = 6
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
    Left = 566
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
  object Label3: TLabel
    Left = 557
    Top = 62
    Width = 17
    Height = 19
    Caption = 'kg'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 566
    Top = 89
    Width = 8
    Height = 19
    Caption = 'L'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 677
    Top = 8
    Width = 17
    Height = 19
    Caption = 'dx'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 680
    Top = 35
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
    Left = 676
    Top = 62
    Width = 18
    Height = 19
    Caption = 'tgl'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 685
    Top = 89
    Width = 9
    Height = 19
    Caption = 'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 797
    Top = 8
    Width = 17
    Height = 19
    Caption = 'dv'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 802
    Top = 35
    Width = 12
    Height = 19
    Caption = 'vl'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 800
    Top = 62
    Width = 14
    Height = 19
    Caption = 'vr'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 551
    Top = 116
    Width = 82
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
    Left = 580
    Top = 8
    Width = 77
    Height = 21
    TabOrder = 1
    Text = '1'
  end
  object Edit2: TEdit
    Left = 580
    Top = 35
    Width = 77
    Height = 21
    TabOrder = 2
    Text = '10'
  end
  object Edit3: TEdit
    Left = 580
    Top = 62
    Width = 77
    Height = 21
    TabOrder = 3
    Text = '2'
  end
  object Edit4: TEdit
    Left = 580
    Top = 89
    Width = 77
    Height = 21
    TabOrder = 4
    Text = '2'
  end
  object Edit5: TEdit
    Left = 700
    Top = 8
    Width = 77
    Height = 21
    TabOrder = 5
    Text = '0,5'
  end
  object Edit6: TEdit
    Left = 700
    Top = 35
    Width = 77
    Height = 21
    TabOrder = 6
    Text = '0,01'
  end
  object Edit7: TEdit
    Left = 700
    Top = 62
    Width = 77
    Height = 21
    TabOrder = 7
    Text = '10'
  end
  object Button2: TButton
    Left = 726
    Top = 116
    Width = 80
    Height = 25
    Caption = 'Stop'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = Button2Click
  end
  object Chart2: TChart
    Left = 8
    Top = 127
    Width = 537
    Height = 162
    Legend.Alignment = laTop
    MarginBottom = 2
    MarginTop = 0
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 't'
    LeftAxis.Title.Caption = 'u'
    View3D = False
    TabOrder = 9
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series3: TLineSeries
      Title = 'Uk'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series4: TLineSeries
      Title = 'Up'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series5: TLineSeries
      Title = 'U'
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Chart3: TChart
    Left = 8
    Top = 295
    Width = 537
    Height = 162
    Legend.Visible = False
    MarginBottom = 2
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 't'
    LeftAxis.Title.Caption = 'x'
    View3D = False
    TabOrder = 10
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series6: TLineSeries
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
    Left = 639
    Top = 116
    Width = 81
    Height = 25
    Caption = 'Start 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = Button3Click
  end
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 537
    Height = 113
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
    TabOrder = 12
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series2: TLineSeries
      SeriesColor = 4194304
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series1: TBubbleSeries
      Marks.Frame.Visible = False
      ClickableLine = False
      Pointer.HorizSize = 10
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 10
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      RadiusValues.Name = 'Radius'
      RadiusValues.Order = loNone
    end
  end
  object Chart4: TChart
    Left = 551
    Top = 149
    Width = 346
    Height = 308
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 'v'
    LeftAxis.Title.Caption = 'd'
    View3D = False
    TabOrder = 13
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
    object Series8: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Button4: TButton
    Left = 812
    Top = 116
    Width = 85
    Height = 25
    Caption = 'Start 3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = Button4Click
  end
  object Edit8: TEdit
    Left = 700
    Top = 89
    Width = 77
    Height = 21
    TabOrder = 15
    Text = '5'
  end
  object Edit9: TEdit
    Left = 820
    Top = 8
    Width = 77
    Height = 21
    TabOrder = 16
    Text = '0,1'
  end
  object Edit10: TEdit
    Left = 820
    Top = 35
    Width = 77
    Height = 21
    TabOrder = 17
    Text = '2'
  end
  object Edit11: TEdit
    Left = 820
    Top = 62
    Width = 77
    Height = 21
    TabOrder = 18
    Text = '6'
  end
end
