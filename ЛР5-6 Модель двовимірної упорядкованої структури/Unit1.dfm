object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 481
  ClientWidth = 657
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 498
    Top = 10
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
    Left = 498
    Top = 37
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
    Left = 498
    Top = 64
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
  object Label5: TLabel
    Left = 479
    Top = 118
    Width = 42
    Height = 19
    Caption = 'sigma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 498
    Top = 91
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
  object Label6: TLabel
    Left = 498
    Top = 145
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
  object Label7: TLabel
    Left = 498
    Top = 172
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
  object Label8: TLabel
    Left = 626
    Top = 118
    Width = 22
    Height = 19
    Caption = '* k'
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
    Width = 465
    Height = 465
    Legend.Visible = False
    MarginBottom = 0
    MarginLeft = 0
    MarginRight = 0
    MarginTop = 0
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    BottomAxis.Automatic = False
    BottomAxis.AutomaticMaximum = False
    BottomAxis.AutomaticMinimum = False
    BottomAxis.Maximum = 7.000000000000000000
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 898.666666666666600000
    LeftAxis.Minimum = 50.333333333333340000
    View3D = False
    TabOrder = 0
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TBubbleSeries
      Marks.Frame.Visible = False
      ClickableLine = False
      Pointer.HorizSize = 82
      Pointer.InflateMargins = True
      Pointer.Style = psCircle
      Pointer.VertSize = 82
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      RadiusValues.Name = 'Radius'
      RadiusValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 479
    Top = 243
    Width = 82
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
  object Button2: TButton
    Left = 566
    Top = 243
    Width = 82
    Height = 25
    Caption = 'Start'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 527
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '3,4e-10'
  end
  object Edit2: TEdit
    Left = 527
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '6,64e-26'
  end
  object Edit3: TEdit
    Left = 527
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '10'
  end
  object Edit4: TEdit
    Left = 527
    Top = 89
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '1,38e-23'
  end
  object Edit5: TEdit
    Left = 527
    Top = 116
    Width = 93
    Height = 21
    TabOrder = 7
    Text = '119'
  end
  object Edit6: TEdit
    Left = 527
    Top = 143
    Width = 121
    Height = 21
    TabOrder = 8
    Text = '1'
  end
  object Edit7: TEdit
    Left = 527
    Top = 170
    Width = 121
    Height = 21
    TabOrder = 9
    Text = '2e-15'
  end
  object CheckBox1: TCheckBox
    Left = 511
    Top = 212
    Width = 109
    Height = 17
    Caption = 'Visualization'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    State = cbChecked
    TabOrder = 10
  end
end
