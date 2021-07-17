object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 326
  ClientWidth = 706
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object BtnSuccess: TButton
    Left = 176
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Success'
    TabOrder = 0
    OnClick = BtnSuccessClick
  end
  object BtnInfo: TButton
    Left = 257
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Info'
    TabOrder = 1
    OnClick = BtnInfoClick
  end
  object BtnError: TButton
    Left = 338
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Error'
    TabOrder = 2
    OnClick = BtnErrorClick
  end
end
