object frmConfiguracao: TfrmConfiguracao
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Configura'#231#227'o'
  ClientHeight = 148
  ClientWidth = 541
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblCorForm: TLabel
    Left = 8
    Top = 40
    Width = 161
    Height = 13
    Caption = 'Definir cor do formul'#225'rio principal:'
  end
  object Label1: TLabel
    Left = 272
    Top = 40
    Width = 213
    Height = 13
    Caption = 'Defina o tempo limite inatividade do sistema:'
  end
  object lblPadTempo: TLabel
    Left = 272
    Top = 83
    Width = 108
    Height = 13
    Caption = '*Padr'#227'o de 3 minutos.'
  end
  object btnAplicar: TBitBtn
    Left = 166
    Top = 115
    Width = 75
    Height = 25
    Caption = 'Aplicar'
    Kind = bkOK
    NumGlyphs = 2
    TabOrder = 1
    OnClick = btnAplicarClick
  end
  object btnCancelar: TBitBtn
    Left = 272
    Top = 115
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 2
  end
  object edtCor: TDBEdit
    Left = 24
    Top = 59
    Width = 97
    Height = 21
    DataField = 'confCor'
    DataSource = DSConfig
    TabOrder = 4
  end
  object edtTempoData: TDBEdit
    Left = 280
    Top = 59
    Width = 77
    Height = 21
    DataField = 'confTempo'
    DataSource = DSConfig
    TabOrder = 5
  end
  object cbCoresForm: TColorBox
    Left = 24
    Top = 59
    Width = 145
    Height = 22
    DefaultColorColor = clBtnFace
    Selected = clBtnFace
    Ctl3D = True
    DoubleBuffered = False
    ParentCtl3D = False
    ParentDoubleBuffered = False
    TabOrder = 0
  end
  object edtTempo: TMaskEdit
    Left = 281
    Top = 59
    Width = 204
    Height = 21
    Hint = 'HH:MM:SS'
    EditMask = '00:00:00;1;_'
    MaxLength = 8
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    Text = '00:03:00'
  end
  object DSConfig: TDataSource
    DataSet = DM.qryConfig
    OnDataChange = DSConfigDataChange
    Left = 496
    Top = 96
  end
end
