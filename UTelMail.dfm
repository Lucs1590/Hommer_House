object frmTelEmail: TfrmTelEmail
  Tag = 2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Telefone/Email'
  ClientHeight = 420
  ClientWidth = 662
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object spCabecalhoTop: TShape
    Left = 0
    Top = 0
    Width = 662
    Height = 56
    Align = alTop
    Brush.Color = 11699521
  end
  object spCabecalhoBot: TShape
    Left = 0
    Top = 361
    Width = 662
    Height = 59
    Align = alBottom
    Brush.Color = 11699521
    ExplicitTop = 368
  end
  object btnCancelar: TBitBtn
    Left = 272
    Top = 383
    Width = 95
    Height = 36
    Caption = 'Cancelar'
    Kind = bkCancel
    NumGlyphs = 2
    TabOrder = 0
  end
  object pcTelMail: TPageControl
    Left = 0
    Top = 32
    Width = 660
    Height = 345
    ActivePage = tsTelefone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object tsTelefone: TTabSheet
      Caption = 'TELEFONE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      object lblCodigoTel: TLabel
        Left = 25
        Top = 14
        Width = 56
        Height = 22
        Caption = 'CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblTipo: TLabel
        Left = 25
        Top = 53
        Width = 32
        Height = 22
        Caption = 'TIPO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblDDD: TLabel
        Left = 25
        Top = 107
        Width = 30
        Height = 22
        Caption = 'DDD'
        FocusControl = edtDDD
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblNumero: TLabel
        Left = 132
        Top = 107
        Width = 63
        Height = 22
        Caption = 'N'#218'MERO'
        FocusControl = edtNumero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblOperadora: TLabel
        Left = 25
        Top = 167
        Width = 88
        Height = 22
        Caption = 'OPERADORA'
        FocusControl = edtOperadora
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblCODTEL: TDBText
        Left = 85
        Top = 16
        Width = 65
        Height = 17
        DataField = 'telCodigo'
        DataSource = DSTelefone
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object spBtnInserir: TShape
        Left = 536
        Top = 45
        Width = 89
        Height = 34
        Brush.Color = 11699521
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object spBtnEditar: TShape
        Left = 536
        Top = 96
        Width = 89
        Height = 34
        Brush.Color = 11699521
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object spBtnExcluir: TShape
        Left = 536
        Top = 209
        Width = 89
        Height = 34
        Brush.Color = 11699521
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object spBtnSalvar: TShape
        Left = 536
        Top = 152
        Width = 89
        Height = 34
        Brush.Color = 11699521
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object lblInserir: TLabel
        Left = 557
        Top = 53
        Width = 48
        Height = 19
        Caption = 'Inserir'
      end
      object lblEditar: TLabel
        Left = 557
        Top = 104
        Width = 45
        Height = 19
        Caption = 'Editar'
      end
      object lblSalvar: TLabel
        Left = 557
        Top = 160
        Width = 48
        Height = 19
        Caption = 'Salvar'
      end
      object lblExcluir: TLabel
        Left = 553
        Top = 217
        Width = 53
        Height = 19
        Caption = 'Excluir'
      end
      object imgBtnInserir: TImage
        Left = 536
        Top = 45
        Width = 89
        Height = 34
        OnClick = imgBtnInserirClick
      end
      object imgBtnEditar: TImage
        Left = 536
        Top = 96
        Width = 89
        Height = 34
        OnClick = imgBtnEditarClick
      end
      object imgBtnSalvar: TImage
        Left = 536
        Top = 152
        Width = 89
        Height = 34
        OnClick = imgBtnSalvarClick
      end
      object imgBtnExcluir: TImage
        Left = 536
        Top = 209
        Width = 89
        Height = 34
        OnClick = imgBtnExcluirClick
      end
      object edtDDD: TDBEdit
        Left = 39
        Top = 129
        Width = 88
        Height = 26
        DataField = 'telDDD'
        DataSource = DSTelefone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edtNumero: TDBEdit
        Left = 149
        Top = 129
        Width = 175
        Height = 26
        DataField = 'telNumero'
        DataSource = DSTelefone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtOperadora: TDBEdit
        Left = 39
        Top = 186
        Width = 194
        Height = 26
        DataField = 'telOperadora'
        DataSource = DSTelefone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object cbbTipo: TDBComboBox
        Left = 39
        Top = 72
        Width = 145
        Height = 26
        DataField = 'telTipo'
        DataSource = DSTelefone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Items.Strings = (
          'Telefone'
          'Celular')
        ParentFont = False
        TabOrder = 3
      end
      object DBNavegar1: TDBNavigator
        Left = 477
        Top = 283
        Width = 172
        Height = 25
        DataSource = DSTelefone
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Hints.Strings = (
          'Primeiro Registro'
          'Registro Anterior'
          'Proximo Registro'
          'Ultimo Registro')
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
    end
    object tsEmail: TTabSheet
      Caption = 'EMAIL'
      ImageIndex = 1
      object spBtnInserirEmail: TShape
        Left = 536
        Top = 45
        Width = 89
        Height = 34
        Brush.Color = 11699521
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object lblCodigoEmail: TLabel
        Left = 25
        Top = 17
        Width = 56
        Height = 22
        Caption = 'CODIGO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblEmail: TLabel
        Left = 25
        Top = 57
        Width = 42
        Height = 22
        Caption = 'EMAIL'
        FocusControl = edtEmail
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblCODMAIL: TDBText
        Left = 89
        Top = 19
        Width = 65
        Height = 17
        DataField = 'emaCodigo'
        DataSource = DSEmail
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object spEditarEmail: TShape
        Left = 536
        Top = 92
        Width = 89
        Height = 34
        Brush.Color = 11699521
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object spBtnSalvarEmail: TShape
        Left = 536
        Top = 152
        Width = 89
        Height = 34
        Brush.Color = 11699521
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object lblSalvarEmail: TLabel
        Left = 556
        Top = 159
        Width = 48
        Height = 19
        Caption = 'Salvar'
      end
      object lblInserirEmail: TLabel
        Left = 557
        Top = 53
        Width = 48
        Height = 19
        Caption = 'Inserir'
      end
      object lblEditarEmail: TLabel
        Left = 559
        Top = 99
        Width = 45
        Height = 19
        Caption = 'Editar'
      end
      object spBtnExcluirEmail: TShape
        Left = 536
        Top = 209
        Width = 89
        Height = 34
        Brush.Color = 11699521
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object lblExcluirEmail: TLabel
        Left = 556
        Top = 217
        Width = 53
        Height = 19
        Caption = 'Excluir'
      end
      object imgBtnInserirEmail: TImage
        Left = 536
        Top = 45
        Width = 89
        Height = 34
        OnClick = imgBtnInserirEmailClick
      end
      object imgBtnEditarEmail: TImage
        Left = 536
        Top = 92
        Width = 89
        Height = 34
        OnClick = imgBtnEditarEmailClick
      end
      object imgBtnSalvarEmail: TImage
        Left = 536
        Top = 152
        Width = 89
        Height = 34
        OnClick = imgBtnSalvarEmailClick
      end
      object imgBtnExcluirEmail: TImage
        Left = 536
        Top = 209
        Width = 89
        Height = 34
        OnClick = imgBtnExcluirEmailClick
      end
      object edtEmail: TDBEdit
        Left = 41
        Top = 76
        Width = 337
        Height = 26
        DataField = 'emaEmail'
        DataSource = DSEmail
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBNavigar2: TDBNavigator
        Left = 477
        Top = 283
        Width = 172
        Height = 25
        DataSource = DSEmail
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Hints.Strings = (
          'Primeiro Registro'
          'Registro Anterior'
          'Proximo Registro'
          'Ultimo Registro')
        TabOrder = 1
      end
    end
  end
  object DSTelefone: TDataSource
    AutoEdit = False
    DataSet = DM.qryTelefones
    OnStateChange = DSTelefoneStateChange
    Left = 512
    Top = 368
  end
  object DSEmail: TDataSource
    DataSet = DM.qryEmails
    OnStateChange = DSEmailStateChange
    Left = 464
    Top = 368
  end
  object DSFuncionario: TDataSource
    DataSet = DM.qryFuncionarios
    Left = 64
    Top = 360
  end
  object DSServTerceirizado: TDataSource
    DataSet = DM.qryServTerceirizados
    Left = 120
    Top = 360
  end
  object DSCliente: TDataSource
    DataSet = DM.qryClientes
    Left = 8
    Top = 360
  end
end
