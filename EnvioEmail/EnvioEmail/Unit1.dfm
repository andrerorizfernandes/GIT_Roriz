object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 393
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtPara: TEdit
    Left = 24
    Top = 32
    Width = 441
    Height = 21
    TabOrder = 0
  end
  object edtAssunto: TEdit
    Left = 24
    Top = 80
    Width = 441
    Height = 21
    TabOrder = 1
  end
  object edtAnexo: TEdit
    Left = 24
    Top = 304
    Width = 441
    Height = 21
    TabOrder = 2
  end
  object memCorpo: TMemo
    Left = 24
    Top = 131
    Width = 441
    Height = 142
    TabOrder = 3
  end
  object Button1: TButton
    Left = 200
    Top = 344
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 4
    OnClick = Button1Click
  end
end
