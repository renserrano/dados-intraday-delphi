object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Import B3 IntraDay'
  ClientHeight = 231
  ClientWidth = 505
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
  object btnIntraDay: TButton
    Left = 8
    Top = 39
    Width = 137
    Height = 25
    Caption = 'Importar IntraDay'
    Enabled = False
    TabOrder = 1
    OnClick = btnIntraDayClick
  end
  object btnOpenFile: TButton
    Left = 8
    Top = 8
    Width = 137
    Height = 25
    Caption = 'Abrir Arquivo Desejado...'
    TabOrder = 0
    OnClick = btnOpenFileClick
  end
  object OpenDialog1: TOpenDialog
    Left = 216
    Top = 32
  end
end
