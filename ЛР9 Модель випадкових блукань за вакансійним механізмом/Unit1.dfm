object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 
    #1051#1056'9 '#1052#1086#1076#1077#1083#1100' '#1074#1080#1087#1072#1076#1082#1086#1074#1080#1093' '#1073#1083#1091#1082#1072#1085#1100' '#1079#1072' '#1074#1072#1082#1072#1085#1089#1110#1081#1085#1080#1084' '#1084#1077#1093#1072#1085#1110#1079#1084#1086#1084' '#1076#1083#1103' '#1091#1087#1086#1088 +
    #1103#1076#1082#1086#1074#1072#1085#1086#1111' '#1089#1090#1088#1091#1082#1090#1091#1088#1080
  ClientHeight = 474
  ClientWidth = 882
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
    Left = 521
    Top = 415
    Width = 10
    Height = 19
    Caption = 'T'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 696
    Top = 415
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
  object Button1: TButton
    Left = 598
    Top = 441
    Width = 75
    Height = 25
    Caption = 'Start'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 679
    Top = 441
    Width = 75
    Height = 25
    Caption = 'Stop'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 545
    Top = 413
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '1e4'
  end
  object Edit2: TEdit
    Left = 721
    Top = 413
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '30'
  end
  object Chart1: TChart
    Left = 8
    Top = 8
    Width = 457
    Height = 457
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
    TabOrder = 4
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
    Left = 471
    Top = 8
    Width = 403
    Height = 399
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 't'
    LeftAxis.Title.Caption = #1050#1086#1088#1077#1083#1103#1094#1110#1081#1085#1080#1081' '#1084#1085#1086#1078#1085#1080#1082
    View3D = False
    TabOrder = 5
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series2: TPointSeries
      ClickableLine = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
end
