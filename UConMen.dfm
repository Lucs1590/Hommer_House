object frmContMens: TfrmContMens
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Mensagem'
  ClientHeight = 457
  ClientWidth = 778
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Arial Narrow'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 23
  object lblContTitulo: TLabel
    Left = 301
    Top = 33
    Width = 4
    Height = 23
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object lblRemetente: TLabel
    Left = 32
    Top = 72
    Width = 81
    Height = 23
    Caption = 'Remetente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDestinatario: TLabel
    Left = 384
    Top = 72
    Width = 91
    Height = 23
    Caption = 'Destinat'#225'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblContRemetente: TLabel
    Left = 32
    Top = 97
    Width = 4
    Height = 23
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object lblContDestinatario: TLabel
    Left = 384
    Top = 97
    Width = 4
    Height = 23
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object lblTitulo: TLabel
    Left = 310
    Top = 8
    Width = 43
    Height = 23
    Caption = 'T'#237'tulo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblConteudo: TLabel
    Left = 32
    Top = 224
    Width = 75
    Height = 23
    Caption = 'Conte'#250'do'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object mmoConteudo: TMemo
    Left = 32
    Top = 249
    Width = 715
    Height = 200
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 792
    Top = 97
    Width = 120
    Height = 41
    Caption = 'Panel1'
    TabOrder = 1
  end
end
