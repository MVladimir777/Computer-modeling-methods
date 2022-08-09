object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 498
  ClientWidth = 889
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
    Left = 513
    Top = 6
    Width = 10
    Height = 19
    Caption = 'R'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 511
    Top = 33
    Width = 12
    Height = 19
    Caption = 'M'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 511
    Top = 60
    Width = 11
    Height = 19
    Caption = 'G'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 508
    Top = 87
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
  object Label5: TLabel
    Left = 507
    Top = 116
    Width = 15
    Height = 19
    Caption = 'r0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 508
    Top = 141
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
  object Label8: TLabel
    Left = 800
    Top = 8
    Width = 70
    Height = 19
    Caption = 'Practically'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 691
    Top = 8
    Width = 90
    Height = 19
    Caption = 'Theoretically'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 640
    Top = 33
    Width = 45
    Height = 19
    Caption = 'Period'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 613
    Top = 60
    Width = 72
    Height = 19
    Caption = 'Frequency'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 630
    Top = 87
    Width = 55
    Height = 19
    Caption = 'Velocity'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 611
    Top = 116
    Width = 74
    Height = 19
    Caption = 'Angular v.'
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
    Width = 481
    Height = 481
    Legend.Visible = False
    MarginBottom = 0
    MarginLeft = 0
    MarginRight = 0
    MarginTop = 0
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    View3D = False
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      SeriesColor = 10485760
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loNone
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      SeriesColor = clGreen
      Brush.BackColor = clDefault
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loNone
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series3: TBubbleSeries
      Marks.Frame.Visible = False
      ClickableLine = False
      Pointer.HorizSize = 40
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 40
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      RadiusValues.Name = 'Radius'
      RadiusValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 495
    Top = 177
    Width = 92
    Height = 25
    Caption = 'Stop'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 537
    Top = 8
    Width = 72
    Height = 21
    TabOrder = 2
    Text = '7'
  end
  object Edit2: TEdit
    Left = 537
    Top = 35
    Width = 72
    Height = 21
    TabOrder = 3
    Text = '1'
  end
  object Edit3: TEdit
    Left = 537
    Top = 62
    Width = 72
    Height = 21
    TabOrder = 4
    Text = '1'
  end
  object Edit4: TEdit
    Left = 537
    Top = 89
    Width = 72
    Height = 21
    TabOrder = 5
    Text = '0,1'
  end
  object Button2: TButton
    Left = 593
    Top = 176
    Width = 92
    Height = 25
    Caption = 'Start 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 691
    Top = 176
    Width = 92
    Height = 25
    Caption = 'Start 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button3Click
  end
  object CheckBox1: TCheckBox
    Left = 691
    Top = 143
    Width = 97
    Height = 17
    Caption = 'Trajectory'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object Button4: TButton
    Left = 789
    Top = 177
    Width = 92
    Height = 25
    Caption = 'Start 3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = Button4Click
  end
  object Chart2: TChart
    Left = 495
    Top = 208
    Width = 386
    Height = 282
    Legend.Visible = False
    MarginBottom = 1
    MarginLeft = 1
    MarginRight = 1
    MarginTop = 1
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Title.Caption = 'r'
    LeftAxis.Title.Caption = 'v'
    View3D = False
    TabOrder = 10
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series4: TLineSeries
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
  end
  object Edit5: TEdit
    Left = 537
    Top = 116
    Width = 72
    Height = 21
    TabOrder = 11
    Text = '1'
  end
  object Edit6: TEdit
    Left = 537
    Top = 143
    Width = 72
    Height = 21
    TabOrder = 12
    Text = '0,1'
  end
  object Edit7: TEdit
    Left = 691
    Top = 35
    Width = 92
    Height = 21
    TabOrder = 13
  end
  object Edit8: TEdit
    Left = 691
    Top = 62
    Width = 92
    Height = 21
    TabOrder = 14
  end
  object Edit9: TEdit
    Left = 691
    Top = 89
    Width = 92
    Height = 21
    TabOrder = 15
  end
  object Edit10: TEdit
    Left = 691
    Top = 116
    Width = 92
    Height = 21
    TabOrder = 16
  end
  object Edit11: TEdit
    Left = 789
    Top = 35
    Width = 92
    Height = 21
    TabOrder = 17
  end
  object Edit12: TEdit
    Left = 789
    Top = 62
    Width = 92
    Height = 21
    TabOrder = 18
  end
  object Edit13: TEdit
    Left = 789
    Top = 89
    Width = 92
    Height = 21
    TabOrder = 19
  end
  object Edit14: TEdit
    Left = 789
    Top = 116
    Width = 92
    Height = 21
    TabOrder = 20
  end
end
