object frmPrinciapal: TfrmPrinciapal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Renomear Arquivos'
  ClientHeight = 278
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbCaminho: TLabel
    Left = 8
    Top = 11
    Width = 45
    Height = 13
    Caption = 'Caminho:'
  end
  object btnListar: TButton
    Left = 562
    Top = 4
    Width = 75
    Height = 25
    Caption = 'Listar'
    TabOrder = 0
    OnClick = btnListarClick
  end
  object edtCaminho: TEdit
    Left = 59
    Top = 8
    Width = 498
    Height = 21
    TabOrder = 1
  end
  object mArquivos: TMemo
    Left = 8
    Top = 35
    Width = 629
    Height = 206
    Lines.Strings = (
      '')
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object btnRenomear: TButton
    Left = 8
    Top = 247
    Width = 75
    Height = 25
    Caption = 'Renomear'
    Enabled = False
    TabOrder = 3
    OnClick = btnRenomearClick
  end
  object pbProgresso: TProgressBar
    Left = 89
    Top = 247
    Width = 548
    Height = 25
    TabOrder = 4
  end
end
