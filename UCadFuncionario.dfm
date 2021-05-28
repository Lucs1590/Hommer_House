object frmCadFuncionario: TfrmCadFuncionario
  Left = 0
  Top = 64
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastrar Funcion'#225'rio'
  ClientHeight = 776
  ClientWidth = 1013
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object spCabecalhoBot: TShape
    Left = 0
    Top = 746
    Width = 1013
    Height = 30
    Align = alBottom
    Brush.Color = 11699521
    Pen.Style = psClear
    ExplicitTop = 752
  end
  object spCabecalhoTop: TShape
    Left = 0
    Top = 0
    Width = 1013
    Height = 38
    Align = alTop
    Brush.Color = 11699521
    Pen.Style = psClear
  end
  object pnlDadosPessoais: TPanel
    Left = 0
    Top = 39
    Width = 465
    Height = 333
    TabOrder = 0
    object DBCodigo: TDBText
      Left = 49
      Top = 41
      Width = 73
      Height = 17
      DataField = 'funCodigo'
      DataSource = DSFuncionarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblCodigo: TLabel
      Left = 31
      Top = 16
      Width = 56
      Height = 22
      Caption = 'C'#211'DIGO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblCPF: TLabel
      Left = 31
      Top = 185
      Width = 28
      Height = 22
      Caption = 'CPF'
      FocusControl = edtCPF
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblDtNascimento: TLabel
      Left = 31
      Top = 255
      Width = 157
      Height = 22
      Caption = 'DATA DE NASCIMENTO'
      FocusControl = edtDtaNascimento
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblNome: TLabel
      Left = 31
      Top = 71
      Width = 43
      Height = 22
      Caption = 'NOME'
      FocusControl = edtNome
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblRG: TLabel
      Left = 31
      Top = 128
      Width = 21
      Height = 22
      Caption = 'RG'
      FocusControl = edtRG
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object edtCPF: TDBEdit
      Left = 49
      Top = 210
      Width = 283
      Height = 26
      DataField = 'funCPF'
      DataSource = DSFuncionarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtDtaNascimento: TDBEdit
      Left = 50
      Top = 280
      Width = 133
      Height = 26
      DataField = 'funDataNascimento'
      DataSource = DSFuncionarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Visible = False
    end
    object edtNome: TDBEdit
      Left = 48
      Top = 96
      Width = 333
      Height = 26
      DataField = 'funNome'
      DataSource = DSFuncionarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtRG: TDBEdit
      Left = 50
      Top = 153
      Width = 283
      Height = 26
      DataField = 'funRG'
      DataSource = DSFuncionarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object dtpNascimento: TDateTimePicker
      Left = 50
      Top = 280
      Width = 186
      Height = 26
      Date = 42643.459586099540000000
      Time = 42643.459586099540000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnChange = dtpNascimentoChange
    end
  end
  object pnlContato: TPanel
    Left = 0
    Top = 376
    Width = 465
    Height = 290
    TabOrder = 1
    object lblBairro: TLabel
      Left = 13
      Top = 172
      Width = 52
      Height = 22
      Caption = 'BAIRRO'
      FocusControl = edtBairro
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblCidade: TLabel
      Left = 13
      Top = 118
      Width = 51
      Height = 22
      Caption = 'CIDADE'
      FocusControl = edtCidade
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblEndereco: TLabel
      Left = 13
      Top = 59
      Width = 78
      Height = 22
      Caption = 'ENDERE'#199'O'
      FocusControl = edtEndereco
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblEstado: TLabel
      Left = 13
      Top = 230
      Width = 57
      Height = 22
      Caption = 'ESTADO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblNumero: TLabel
      Left = 349
      Top = 53
      Width = 63
      Height = 22
      Caption = 'NUMERO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblCEP: TLabel
      Left = 13
      Top = 10
      Width = 28
      Height = 22
      Caption = 'CEP'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object btnVerNet: TSpeedButton
      Left = 182
      Top = 26
      Width = 29
      Height = 29
      OnClick = btnVerNetClick
    end
    object btnTelMail: TSpeedButton
      Left = 414
      Top = 248
      Width = 33
      Height = 34
      Action = actTelMail
      Flat = True
    end
    object edtBairro: TDBEdit
      Left = 32
      Top = 192
      Width = 210
      Height = 26
      DataField = 'funBairro'
      DataSource = DSFuncionarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object edtCidade: TDBEdit
      Left = 32
      Top = 140
      Width = 283
      Height = 26
      DataField = 'funCidade'
      DataSource = DSFuncionarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edtEndereco: TDBEdit
      Left = 31
      Top = 80
      Width = 299
      Height = 26
      DataField = 'funEndereco'
      DataSource = DSFuncionarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object cbbEstado: TDBComboBox
      Left = 32
      Top = 249
      Width = 47
      Height = 26
      DataField = 'funEstado'
      DataSource = DSFuncionarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Items.Strings = (
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
      ParentFont = False
      TabOrder = 5
    end
    object edtNumero: TDBEdit
      Left = 359
      Top = 80
      Width = 73
      Height = 26
      DataField = 'funNumeroImovel'
      DataSource = DSFuncionarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtCEP: TDBEdit
      Left = 31
      Top = 29
      Width = 145
      Height = 26
      DataField = 'funCEP'
      DataSource = DSFuncionarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = edtCEPExit
    end
  end
  object pnlDadosTrab: TPanel
    Left = 471
    Top = 39
    Width = 538
    Height = 627
    TabOrder = 2
    object lblConfirmaSenha: TLabel
      Left = 18
      Top = 541
      Width = 136
      Height = 22
      Caption = 'CONFIRMAR SENHA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblCRECI: TLabel
      Left = 16
      Top = 156
      Width = 42
      Height = 22
      Caption = 'CRECI'
      FocusControl = edtCRECI
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblCTPS: TLabel
      Left = 16
      Top = 100
      Width = 37
      Height = 22
      Caption = 'CTPS'
      FocusControl = edtCTPS
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblDtAdmicao: TLabel
      Left = 16
      Top = 213
      Width = 137
      Height = 22
      Caption = 'DATA DE ADMISS'#195'O'
      FocusControl = edtDtaAdmissao
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblDtDemicao: TLabel
      Left = 16
      Top = 270
      Width = 137
      Height = 22
      Caption = 'DATA DE DEMISS'#195'O'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblLogin: TLabel
      Left = 16
      Top = 432
      Width = 43
      Height = 22
      Caption = 'LOGIN'
      FocusControl = edtLogin
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblSenha: TLabel
      Left = 18
      Top = 488
      Width = 47
      Height = 22
      Caption = 'SENHA'
      FocusControl = edtSenha
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblTipo: TLabel
      Left = 16
      Top = 43
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
    object lblCargo: TLabel
      Left = 16
      Top = 324
      Width = 51
      Height = 22
      Caption = 'CARGO'
      FocusControl = edtCargo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblPagBruto: TLabel
      Left = 16
      Top = 380
      Width = 143
      Height = 22
      Caption = 'PAGAMENTO BRUTO'
      FocusControl = edtPagBruto
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object btnObs: TSpeedButton
      Left = 496
      Top = 586
      Width = 41
      Height = 33
      Action = actObs
      Flat = True
    end
    object cbbTipo: TDBComboBox
      Left = 39
      Top = 68
      Width = 162
      Height = 26
      DataField = 'funTipo'
      DataSource = DSFuncionarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Items.Strings = (
        'Administrador'
        'Comum')
      ParentFont = False
      TabOrder = 1
    end
    object edtCargo: TDBEdit
      Left = 39
      Top = 344
      Width = 199
      Height = 26
      DataField = 'funCargo'
      DataSource = DSFuncionarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object edtConfirmaSenha: TMaskEdit
      Left = 38
      Top = 566
      Width = 176
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 10
      Text = ''
    end
    object edtCRECI: TDBEdit
      Left = 38
      Top = 175
      Width = 179
      Height = 26
      DataField = 'funCRECI'
      DataSource = DSFuncionarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edtCTPS: TDBEdit
      Left = 38
      Top = 120
      Width = 179
      Height = 26
      DataField = 'funCTPS'
      DataSource = DSFuncionarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtDtaAdmissao: TDBEdit
      Left = 49
      Top = 236
      Width = 85
      Height = 21
      DataField = 'funDataAdmissao'
      DataSource = DSFuncionarios
      TabOrder = 11
      Visible = False
    end
    object edtDtaDemissao: TDBEdit
      Left = 49
      Top = 295
      Width = 36
      Height = 21
      DataField = 'funDataDemissao'
      DataSource = DSFuncionarios
      TabOrder = 12
    end
    object edtLogin: TDBEdit
      Left = 38
      Top = 456
      Width = 178
      Height = 26
      DataField = 'funLogin'
      DataSource = DSFuncionarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object edtPagBruto: TDBEdit
      Left = 39
      Top = 402
      Width = 183
      Height = 26
      DataField = 'funPagamentoBruto'
      DataSource = DSFuncionarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object edtSenha: TDBEdit
      Left = 38
      Top = 510
      Width = 178
      Height = 26
      DataField = 'funSenha'
      DataSource = DSFuncionarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 9
    end
    object dtpAdmicao: TDateTimePicker
      Left = 39
      Top = 232
      Width = 155
      Height = 26
      Date = 42642.389740671300000000
      Time = 42642.389740671300000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnChange = dtpAdmicaoChange
    end
    object dtpDemicao: TDateTimePicker
      Left = 38
      Top = 292
      Width = 130
      Height = 26
      Date = 42642.389745636570000000
      Time = 42642.389745636570000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnChange = dtpDemicaoChange
    end
    object checkBSituacao: TDBCheckBox
      Left = 18
      Top = 15
      Width = 187
      Height = 23
      Caption = 'Trabalhando Atualmente'
      DataField = 'funSituacao'
      DataSource = DSFuncionarios
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = checkBSituacaoClick
    end
    object pnlObservacoes: TPanel
      Left = 240
      Top = 371
      Width = 9
      Height = 6
      TabOrder = 13
      Visible = False
      object lblObservacoes: TLabel
        Left = 12
        Top = 10
        Width = 125
        Height = 19
        Caption = 'OBSERVA'#199#213'ES'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblFechar: TLabel
        Left = 274
        Top = 6
        Width = 13
        Height = 23
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = lblFecharClick
      end
      object mmoObservacao: TDBMemo
        Left = 8
        Top = 35
        Width = 281
        Height = 209
        DataField = 'funObservacoes'
        DataSource = DSFuncionarios
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object pnlBotoes: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 671
    Width = 1007
    Height = 72
    Align = alBottom
    TabOrder = 3
    ExplicitLeft = -2
    ExplicitTop = 672
    object spBtnSalvar: TShape
      Left = 531
      Top = 8
      Width = 90
      Height = 30
      Brush.Color = 11699521
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object spBtnInserir: TShape
      Left = 187
      Top = 8
      Width = 90
      Height = 30
      Brush.Color = 11699521
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object spBtnCancelar: TShape
      Left = 653
      Top = 8
      Width = 90
      Height = 30
      Brush.Color = 11699521
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object spBtnEditar: TShape
      Left = 296
      Top = 8
      Width = 90
      Height = 30
      Brush.Color = 11699521
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object lblBtnSalvar: TLabel
      Left = 553
      Top = 11
      Width = 40
      Height = 22
      Caption = 'Salvar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblBtnInserir: TLabel
      Left = 213
      Top = 11
      Width = 39
      Height = 22
      Caption = 'Inserir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblBtnEditar: TLabel
      Left = 322
      Top = 11
      Width = 36
      Height = 22
      Caption = 'Editar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblBtnCancelar: TLabel
      Left = 671
      Top = 11
      Width = 57
      Height = 22
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object imgBtnSalvar: TImage
      Left = 531
      Top = 8
      Width = 90
      Height = 30
      OnClick = imgBtnSalvarClick
    end
    object imgBtnInserir: TImage
      Left = 187
      Top = 8
      Width = 90
      Height = 30
      OnClick = imgBtnInserirClick
    end
    object imgBtnEditar: TImage
      Left = 296
      Top = 8
      Width = 90
      Height = 30
      OnClick = imgBtnEditarClick
    end
    object imgBtnCancelar: TImage
      Left = 653
      Top = 8
      Width = 90
      Height = 30
      OnClick = imgBtnCancelarClick
    end
    object spBtnRemover: TShape
      Left = 411
      Top = 8
      Width = 90
      Height = 30
      Brush.Color = 11699521
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object lblBtnRemover: TLabel
      Left = 427
      Top = 11
      Width = 59
      Height = 22
      Caption = 'Remover'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object btnRemover: TImage
      Left = 411
      Top = 8
      Width = 90
      Height = 30
      OnClick = btnRemoverClick
    end
    object DBnavegar: TDBNavigator
      Left = 357
      Top = 44
      Width = 220
      Height = 25
      DataSource = DSFuncionarios
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Primeiro Registro'
        'Proximo Registro'
        'Ultimo Registro'
        '')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
  end
  object DSFuncionarios: TDataSource
    DataSet = DM.qryFuncionarios
    OnStateChange = DSFuncionariosStateChange
    OnDataChange = DSFuncionariosDataChange
    Left = 169
    Top = 643
  end
  object actFuncionario: TActionList
    Images = imgListaFunc
    Left = 24
    Top = 640
    object actObs: TAction
      ImageIndex = 1
      OnExecute = actObsExecute
    end
    object actTelMail: TAction
      ImageIndex = 0
      OnExecute = actTelMailExecute
    end
  end
  object imgListaFunc: TImageList
    Height = 32
    Width = 32
    Left = 72
    Top = 640
    Bitmap = {
      494C010102000800700020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000002000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000070000
      004900000098000000C1000000DA000000F3000000F3000000DA000000C10000
      0098000000490000000700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000080000
      00200000003E0000005D000000780000008A0000008B0000007D000000670000
      004A000000290000000D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001900000097000000F20000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000F200000097000000190000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000002010011100703473F1B0AA67132
      14DB97441CEEB55223FAC35A27FFC15A27FFBC5625FFAD4F21FC8F3E19F46C2D
      12E7431C0BD41A0B04A0060201550000001B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000800000084000000F5000000FF000000FF0000
      00CD0000007E00000040000000260000000C0000000C00000026000000400000
      007E000000CD000000FF000000FF000000F50000008400000008000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000051107033E5C2810B8A64B20EFDE7135FFF187
      49FFF79756FFFBA365FFFDAF70FFFDB176FFFDAB6EFFFA9D5EFFF68E4CFFEA7B
      3DFFD2642EFF9A451BF85C260FE3210D05AE0301014C0000000D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000018000000C8000000FF000000FF000000AE000000270000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000027000000AE000000FF000000FF000000C8000000180000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000030201103416097AA14920E9E97C3EFFF89A5DFFFDAD71FFFCAA
      6CFFFA9F5FFFF89755FFF68E4DFFF38B49FFF38949FFF48C4AFFF69250FFF999
      57FFFA9C5CFFF48C4BFFDD6D33FF9C451CF7451D0BD80C0502770000001D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000002D000000E3000000FF000000E00000003D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000003D000000E0000000FF000000E30000
      002D000000000000000000000000000000000000000000000000000000000000
      00000603011458260FA2C45F2BF7F79958FFFCAC70FFFBA666FFF89756FFF691
      50FFF69250FFF69250FFF68F4FFFF68E4CFFF48B4AFFF38849FFF28745FFF082
      41FFF18241FFF68E4BFFF99756FFF38B4AFFC55B27FE622910E7160903920000
      0024000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0018000000E3000000FF000000BF000000140000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000014000000BF000000FF0000
      00E3000000180000000000000000000000000000000000000000000000000502
      010F602B12A6DC6F36FDFBA565FFFDAF71FFF89857FFF69250FFF79353FFF793
      52FFF79352FFF69351FFF6914FFFF68F4DFFF48D4BFFF38B4AFFF38847FFF286
      45FFF08342FFEF7E3EFFEF8040FFF89351FFF89452FFD76730FF713013EB160A
      03910000001D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000080000
      00C8000000FF000000BF00000005000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000005000000BF0000
      00FF000000C80000000800000000000000000000000000000000010000044D21
      0D88DB6F34FCFBA668FFFBA768FFF79352FFF79352FFF79453FFF79353FFDA84
      5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACF
      B5FFF08343FFEF8142FFEE7E3FFFEC7B3DFFF48C4AFFF79352FFDB6830FF652B
      11E70D0502770000000C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000840000
      00FF000000E00000001400000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001000000330000007F0000
      00BC000000D6000000EE000000E10000004C0000000000000000000000140000
      00E0000000FF00000084000000000000000000000000000000002812074BC05C
      2AF2FBA565FFFBA668FFF69251FFF79352FFF79451FFF79453FFF79451FFE37C
      41FFD86E37FFD27042FFFFFFFFFFFFFFFFFFFFFFFFFFFBD1B7FFF3894AFFF287
      46FFF08343FFEF8142FFEF7F3FFFEC7C3EFFEB7A3BFFF48B49FFF89452FFC45C
      29FD4B1F0DD80201004B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000019000000F50000
      00FF0000003D0000000000000000000000000000000000000000000000000000
      000000000000000000000000000400000065000000E1000000FF000000FF0000
      00FF000000FF000000FF000000FF000000F90000004700000000000000000000
      003D000000FF000000F50000001900000000000000000603010D98461ED1F796
      56FFFCAC70FFF79350FFF69352FFF79351FFF79351FFF69352FFF79351FFF693
      52FFF69151FFD26D3DFFFFFFFFFFFFFFFFFFFFFFFFFFF9C29FFFF38B49FFF287
      45FFF08544FFF08240FFEF7F3EFFEC7C3DFFEC7B3DFFEB793AFFF6914FFFF48B
      4BFFA74B20F8261006AE0000001B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000097000000FF0000
      00AE000000000000000000000000000000000000000000000000000000000000
      00000000000000000044000000D9000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000D700000000000000000000
      0000000000AE000000FF0000009700000000000000003D1B0B62E7793BFFFCAD
      70FFF79455FFF69150FFF69350FFF69250FFF69250FFF69250FFF69250FFF692
      51FFF69150FFD26B3AFFFFFFFFFFFFFFFFFFFFFFFFFFF9C29EFFF38B49FFF288
      46FFF18343FFF08140FFEF7F3EFFEC7C3DFFEC7B3CFFEA773AFFEB793CFFF896
      53FFE37337FF682D12E305020154000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000007000000F2000000FF0000
      0027000000000000000000000000000000000000000000000000000000000000
      000000000070000000FC000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000E500000000000000000000
      000000000027000000FF000000F2000000070201000498461FCDF89C5DFFFBA2
      62FFF48E4CFFF69150FFF6914DFFF6914FFFF6914FFFF68F4FFFF6914FFFF691
      4FFFF6914FFFD26B3AFFFFFFFFFFFFFFFFFFFFFFFFFFF8BA93FFF38947FFF287
      46FFF18544FFF08140FFEF7F3FFFEC7C3DFFEC7A3CFFEB783BFFE87438FFF286
      45FFF68E4DFFAF4F22F8200E06A10000000D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000049000000FF000000CD0000
      0000000000000000000000000000000000000000000000000000000000000000
      0094000000FF000000FF000000FF000000FF000000FF000000DE000000ED0000
      00FF000000FF000000FF000000FF000000F40000004600000000000000000000
      000000000000000000CD000000FF000000491D0D062EDC6E34FCFCAF73FFF692
      50FFF48F4DFFF48E4DFFF48E4DFFF48E4CFFF48E4DFFF48E4DFFF48E4CFFF48D
      4BFFF48E4CFFD26B3AFFFFFFFFFFFFFFFFFFFFFFFFFFF8B992FFF28847FFF286
      45FFF08343FFEF8141FFEC7E3FFFEC7A3CFFEB783AFFE97839FFE97739FFE977
      38FFF99856FFDE6D33FF51240ED40000002A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000098000000FF0000007E0000
      0000000000000000000000000000000000000000000000000000000000730000
      00FF000000FF000000FF000000FF000000CD0000004A000000020000002D0000
      00CF000000FF000000DD00000097000000310000000000000000000000000000
      0000000000000000007E000000FF0000009850251070F18747FFFBA869FFF48C
      4AFFF48D4CFFF48D4BFFF48C4BFFF38C4AFFF48D4CFFF6914FFFF69251FFF693
      51FFF69250FFD26B3AFFFFFFFFFFFFFFFFFFFFFFFFFFF8BA92FFF38B4AFFF288
      49FFF18545FFEF8041FFEC7A3DFFEA793BFFEA773AFFE87538FFE97538FFE572
      35FFF68D4BFFEE8041FF7F3818E70000004A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000C1000000FF000000400000
      000000000000000000000000000000000000000000000000004A000000FD0000
      00FF000000FF000000FF0000009C000000070000000000000000000000000000
      0000000000040000000000000000000000000000000000000000000000000000
      00000000000000000040000000FF000000C1833C1AADF89A59FFF99A59FFF48C
      4AFFF48B4AFFF38B49FFF6914FFFF79756FFF89C5CFFF99F5FFFF89D5EFFF89C
      59FFF79857FFD26C3BFFFFFFFFFFFFFFFFFFFFFFFFFFF8BB93FFF48E4DFFF491
      50FFF69251FFF48E4FFFF28746FFEC7E3FFFE87538FFE57336FFE77436FFE571
      35FFEF8041FFF48C4CFFA54B21F4000000680000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000DA000000FF000000260000
      00000000000000000000000000000000000000000005000000DE000000FF0000
      00FF000000FF0000009C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000026000000FF000000DAAD5024D8FBAB6EFFF69250FFF388
      47FFF6914FFFF89A5CFFFAA86CFFFBAB6EFFFBAB6EFFFAA669FFF9A263FFF99E
      5EFFF79958FFD26C3BFFFFFFFFFFFFFFFFFFFFFFFFFFF9C3A1FFF69250FFF694
      53FFF79858FFF79A5CFFF79959FFF69656FFF28B4BFFEA7C3DFFE57235FFE570
      34FFEA773AFFF99756FFC55C2AFD0000007D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000F3000000FF0000000C0000
      00000000000000000000000000000000000000000067000000FF000000FF0000
      00FF000000CD0000000700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000C000000FF000000F3CA5E29F4FDB57DFFF3894AFFF697
      57FFFBAC71FFFCB57DFFFCB77EFFFCB077FFFBAB70FFFAA668FFF9A263FFF89D
      5EFFF79A59FFD97948FFFFFFFFFFFFFFFFFFFFFFFFFFFAC5A2FFF69453FFF696
      55FFF69758FFF79A59FFF89D5FFFF9A265FFF8A165FFF69A5CFFF08647FFE573
      35FFE36F33FFFBA15FFFD5652EFF0000008B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000F3000000FF0000000C0000
      000000000000000000000000000000000001000000E1000000FF000000FF0000
      00FF0000004A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000C000000FF000000F3D3642CFCFDBA82FFF89E5FFFFCB9
      83FFFDBD8CFFFDB983FFFCB47DFFFBAF76FFFBAC70FFFAA86BFFF9A265FFF99E
      5FFFF79D5DFFE59366FFFFFFFFFFFFFFFFFFFFFFFFFFFAC7A4FFF69757FFF697
      57FFF79958FFF79C5DFFF89D5FFFF89F62FFF9A568FFFAA86EFFF9A66CFFF38F
      51FFE57436FFFBA362FFD7692FFF0000008A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000DA000000FF000000260000
      000000000000000000000000000000000032000000FF000000FF000000FF0000
      00DE000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000026000000FF000000DAC85E2AEDFDB57BFFFDBC87FFFDC4
      93FFFDBE89FFFDB886FFFCB47EFFFBB177FFFBAD71FFFBAA6CFFFAA568FFF9A1
      63FFF89E5EFFFBCAA9FFFFFFFFFFFFFFFFFFFFFFFFFFFBC8A5FFF79A59FFF79A
      59FFF89C5DFFF89E5FFFF8A161FFF8A265FFF9A669FFF9A86CFFFAAD75FFFAAD
      75FFF39455FFFBA565FFD7672FFF000000780000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000C1000000FF000000400000
      00000000000000000000000000000000007D000000FF000000FF000000FF0000
      00EE000000310000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000040000000FF000000C1AA5025CBFCAB6CFFFDC08DFFFDC1
      8FFFFDBE8CFFFDBA87FFFCB781FFFCB37BFFFBAF75FFFBAB70FFE5874FFFE7A6
      83FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCD7BEFFF89C5DFFF89D
      5EFFF89E5FFFF9A163FFF9A366FFF9A568FFF9A76BFFF9AA6EFFFAAC71FFFBB3
      7BFFFAAD75FFFAA263FFCB5F2AFB0000005D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000098000000FF0000007E0000
      0000000000000000000000000000000000BB000000FF000000FF000000FF0000
      00FF000000D00000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000007E000000FF000000987B3A1B95F99D5DFFFDBC86FFFDC2
      90FFFDC08DFFFDBA87FFFCB881FFFCB57DFFFBB177FFFBAD73FFFBAA6EFFE587
      4FFFD9743EFFD9733EFFDA8256FFFCCDABFFFDE5D5FFFDD9C0FFF9A161FFF8A1
      62FFF9A265FFF9A568FFF9A569FFF9A76BFFF9AA6EFFFAAC71FFFBAD75FFFBB3
      7AFFFBB17AFFF89757FFAC5124EF0000003E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000049000000FF000000CD0000
      0000000000000000000000000000000000D5000000FF000000FF000000FF0000
      00FF000000FF0000000400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000CD000000FF0000004944210F52F38C4BFFFDBA83FFFDC2
      90FFFDC08FFFFDBC89FFFDB982FFFCB57DFFFBB37BFFFBB076FFFBAC71FFFBAA
      6EFFFAA86BFFFAA768FFF9A665FFD9743EFFD9743EFFE5854CFFF9A368FFF9A6
      68FFF9A668FFF9A76BFFFAAA6EFFFAAA70FFFBAC73FFFBAF75FFFBB077FFFBB5
      81FFFCB47BFFF2894AFF863E1CDC000000200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000007000000F2000000FF0000
      0027000000000000000000000000000000ED000000FF000000FF000000FF0000
      00FF000000DD0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000027000000FF000000F20000000711080415E0753BF6FDB47AFFFDBE
      8CFFFDC18FFFFDBE8CFFFDBA86FFFCB882FFFCB57EFFFBB47BFFFBB176FFFBAD
      73FFFBAB71FFFBAA6EFFFBAA6BFFFAA86CFFFAA86CFFFAA86CFFFAAA6CFFFAA8
      6CFFFAAA6EFFFAAB6EFFFBAC71FFFBAD75FFFBAD76FFFBB17AFFFBB37DFFFBB3
      7DFFFCAD71FFE97A3DFF4D2410A6000000080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000097000000FF0000
      00AE000000000000000000000000000000E2000000FF000000FF000000FF0000
      00FF000000970000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000AE000000FF00000097000000000000000088431F9EF99D5EFFFDBA
      86FFFDC290FFFDC08DFFFDBE8CFFFDBC86FFFCB882FFFCB581FFFCB47BFFFBB1
      7AFFFBB076FFFBB47CFFFEE9DAFFFFFFFFFFFEE9D9FFFBB17AFFFAAD73FFFAAD
      73FFFBAD73FFFBAD76FFFBB076FFFBB17AFFFBB37BFFFBB47DFFFCB782FFFCB5
      7DFFF89A59FFB85A29EF14090447000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000019000000F50000
      00FF0000003D00000000000000000000004C000000F9000000FF000000FF0000
      00F3000000300000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      003D000000FF000000F50000001900000000000000002B150A32ED8343FCFDB3
      77FFFDBC87FFFDC18FFFFDBE8CFFFDBD89FFFDBC86FFFCB783FFFCB581FFFCB5
      7EFFE68F59FFFDDBC0FFFFFFFFFFFFFFFFFFFFFFFFFFFDDFC9FFFBB176FFFBB1
      77FFFBB17AFFFBB17BFFFBB47AFFFBB57BFFFBB77EFFFCBA83FFFBB57EFFFCAF
      73FFF08545FF6E3317B802010011000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000840000
      00FF000000E000000014000000000000000000000047000000D7000000E40000
      0042000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000140000
      00E0000000FF000000840000000000000000000000000100000180401E92F899
      58FFFDBC83FFFCBD8CFFFDC08DFFFDBE8CFFFDBD89FFFCBC87FFFCB983FFFCB8
      82FFDA7946FFFEEBDDFFFFFFFFFFFFFFFFFFFFFFFFFFFEEBDCFFFBB37BFFFCB3
      7BFFFCB57EFFFCB57DFFFCB87EFFFCB882FFFCB986FFFCB982FFFCB87EFFF89C
      5CFFB65A2AE9140A043D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000080000
      00C8000000FF000000BF00000005000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000005000000BF0000
      00FF000000C8000000080000000000000000000000000000000013090416B75E
      2FCDFAA565FFFDBA83FFFDBE8CFFFDC08DFFFDBE8DFFFDBC8CFFFDBA87FFFCBA
      86FFE7925EFFE8A885FFFFFFFFFFFFFFFFFFFFFFFFFFFEE3CDFFFCB781FFFCB7
      82FFFCB982FFFCBA83FFFCBA83FFFCBA86FFFCB986FFFCB881FFFBA668FFD66F
      38F7401F0E7A0000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0018000000E3000000FF000000BF000000140000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000014000000BF000000FF0000
      00E3000000180000000000000000000000000000000000000000000000003119
      0C39D8743BE8FBA768FFFDBA82FFFCBC87FFFDBE8DFFFDBE8CFFFDBD8CFFFDBD
      89FFFDBC89FFDA7D4CFFE8B094FFFFFFFFFFFEEDDFFFFCBE8EFFFCBA86FFFCBC
      86FFFCBA87FFFCBC89FFFCBD8CFFFCBA86FFFCB87EFFFBAA6CFFEB8343FD6A34
      18A2040201100000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000002D000000E3000000FF000000E00000003D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000003D000000E0000000FF000000E30000
      002D000000000000000000000000000000000000000000000000000000000000
      00003F200F48D7753DE8FBA566FFFDBA83FFFCB982FFFDC08DFFFDBE8CFFFDBE
      8CFFFDBE8CFFFDBD8CFFE79461FFDA7C4AFFE79461FFFDBD89FFFDBD89FFFDBD
      89FFFDBE8CFFFDBE8CFFFCBA83FFFDB981FFFBAA6CFFEB8345FC743A1BA50704
      0214000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000018000000C8000000FF000000FF000000AE000000270000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000027000000AE000000FF000000FF000000C8000000180000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000032190C39B96330CEF99C5CFFFDB477FFFDB781FFFCBC87FFFDBE
      8DFFFDBD8CFFFDBD8CFFFDBE8CFFFDBD8CFFFDBE8CFFFDBE8CFFFDBE8CFFFDBD
      89FFFCBA87FFFCB77EFFFDB57BFFFAA262FFD8753AF35D2F16870603010F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000800000084000000F5000000FF000000FF0000
      00CD0000007E00000040000000260000000C0000000C00000026000000400000
      007E000000CD000000FF000000FF000000F50000008400000008000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000130A051682442291F18849FDFAA162FFFDB47AFFFDB7
      7EFFFCB57EFFFCB883FFFCBC86FFFDBC8CFFFCBA87FFFCB983FFFCB77EFFFCB7
      7EFFFDB57BFFFBA666FFF48D4DFFAF5B2DD030190C4B01010004000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000001900000097000000F20000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000F200000097000000190000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010000012C170B328D49249EE78041F7F796
      55FFFBA363FFFCAF71FFFDB77EFFFDBC83FFFDB981FFFCB075FFFBA666FFF898
      57FFEE8648FCAF5C2DCD492512630703020D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000070000
      004900000098000000C1000000DA000000F3000000F3000000DA000000C10000
      0098000000490000000700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000120905154725
      125284442295B55E2ECAD77037ECE7793BFCDE7437F4C16431D8944D25AD5B30
      17702211082E0201010400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000200000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object XMLDocument1: TXMLDocument
    Left = 126
    Top = 640
  end
  object SSLIO: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 208
    Top = 640
  end
  object opdImgFunc: TOpenPictureDialog
    Left = 240
    Top = 640
  end
  object DSFotos: TDataSource
    DataSet = DM.qryFuncFotos
    Left = 792
    Top = 536
  end
end
