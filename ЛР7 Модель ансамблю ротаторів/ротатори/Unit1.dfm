object Form1: TForm1
  Left = 225
  Top = 176
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 822
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    822
    441)
  PixelsPerInch = 96
  TextHeight = 13
  object Chart1: TChart
    Left = 127
    Top = 8
    Width = 687
    Height = 161
    BackWall.Brush.Style = bsClear
    Legend.Visible = False
    Title.Text.Strings = (
      'TChart')
    Title.Visible = False
    AxisVisible = False
    LeftAxis.Automatic = False
    LeftAxis.AutomaticMaximum = False
    LeftAxis.AutomaticMinimum = False
    LeftAxis.Maximum = 1788.000000000000000000
    TopAxis.Automatic = False
    TopAxis.AutomaticMaximum = False
    TopAxis.AutomaticMinimum = False
    View3D = False
    TabOrder = 0
    Anchors = [akLeft, akTop, akRight]
    DefaultCanvas = 'TGDIPlusCanvas'
    ColorPaletteIndex = 13
    object Series1: TArrowSeries
      Marks.Frame.Visible = False
      Marks.Transparent = True
      SeriesColor = clBlack
      ClickableLine = False
      Pointer.InflateMargins = False
      Pointer.Style = psRectangle
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
      EndXValues.Name = 'EndX'
      EndXValues.Order = loNone
      EndYValues.Name = 'EndY'
      EndYValues.Order = loNone
      StartXValues.Name = 'X'
      StartXValues.Order = loAscending
      StartYValues.Name = 'Y'
      StartYValues.Order = loNone
    end
  end
  object Button1: TButton
    Left = 8
    Top = 24
    Width = 105
    Height = 33
    Caption = #1055#1091#1089#1082
    TabOrder = 1
    OnClick = Button1Click
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 63
    Width = 105
    Height = 33
    Caption = #1057#1090#1086#1087
    TabOrder = 2
    OnClick = BitBtn1Click
  end
end
