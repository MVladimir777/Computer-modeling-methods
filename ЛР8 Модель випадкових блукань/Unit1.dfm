object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1051#1056'8 '#1052#1086#1076#1077#1083#1100' '#1074#1080#1087#1072#1076#1082#1086#1074#1080#1093' '#1073#1083#1091#1082#1072#1085#1100' ('#1076#1074#1086#1074#1080#1084#1110#1088#1085#1072')'
  ClientHeight = 457
  ClientWidth = 857
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
    Left = 473
    Top = 372
    Width = 117
    Height = 19
    Caption = 'Number of steps'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 575
    Top = 399
    Width = 15
    Height = 19
    Caption = 'dr'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 455
    Top = 426
    Width = 135
    Height = 19
    Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1087#1086#1074#1090#1086#1088#1110#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 725
    Top = 372
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
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 441
    Height = 441
    Legend.Visible = False
    MarginBottom = 1
    MarginLeft = 1
    MarginRight = 1
    MarginTop = 1
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
    object Series4: TBubbleSeries
      Marks.Frame.Visible = False
      ClickableLine = False
      Pointer.HorizSize = 39
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 39
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      RadiusValues.Name = 'Radius'
      RadiusValues.Order = loNone
    end
  end
  object Chart2: TChart
    Left = 455
    Top = 8
    Width = 395
    Height = 177
    Legend.Visible = False
    MarginBottom = 2
    MarginLeft = 2
    MarginRight = 2
    MarginTop = 2
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 'Number of steps'
    LeftAxis.Title.Caption = 'P'
    View3D = False
    TabOrder = 1
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series2: TBarSeries
      Marks.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
  object Edit1: TEdit
    Left = 596
    Top = 370
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '100'
  end
  object Button1: TButton
    Left = 751
    Top = 424
    Width = 75
    Height = 25
    Caption = 'Start'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object Chart3: TChart
    Left = 455
    Top = 187
    Width = 395
    Height = 177
    Legend.Visible = False
    MarginBottom = 2
    MarginLeft = 2
    MarginRight = 2
    MarginTop = 2
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 'Number of steps'
    LeftAxis.Title.Caption = 'P'
    View3D = False
    TabOrder = 4
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series3: TLineSeries
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Edit2: TEdit
    Left = 596
    Top = 397
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '1'
  end
  object Edit3: TEdit
    Left = 596
    Top = 424
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '1000'
  end
  object Edit4: TEdit
    Left = 740
    Top = 370
    Width = 110
    Height = 21
    TabOrder = 7
    Text = '1'
  end
end
