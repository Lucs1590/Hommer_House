object frmVenApartamento: TfrmVenApartamento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro Venda'
  ClientHeight = 457
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Arial Narrow'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 23
  object Shape4: TShape
    Left = 0
    Top = 41
    Width = 727
    Height = 387
    Align = alClient
    ExplicitLeft = 392
    ExplicitTop = 296
    ExplicitWidth = 284
    ExplicitHeight = 126
  end
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 727
    Height = 41
    Align = alTop
    Brush.Color = 13859400
    ExplicitWidth = 745
  end
  object Shape2: TShape
    Left = 0
    Top = 428
    Width = 727
    Height = 29
    Align = alBottom
    Brush.Color = 13859400
    ExplicitTop = 431
    ExplicitWidth = 745
  end
  object pnlPrimeiro: TPanel
    Left = 1
    Top = 39
    Width = 728
    Height = 90
    TabOrder = 0
    object lblCodigo: TLabel
      Left = 164
      Top = 19
      Width = 61
      Height = 23
      Caption = 'C'#211'DIGO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 164
      Top = 48
      Width = 134
      Height = 21
      DataField = 'venCodigo'
      DataSource = dsVendas
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object dbSit: TDBCheckBox
      Left = 370
      Top = 40
      Width = 202
      Height = 32
      Caption = 'Pagamento em dia'
      DataField = 'venSituacaoDePagamento'
      DataSource = dsVendas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object pnlSegundo: TPanel
    Left = 0
    Top = 135
    Width = 386
    Height = 224
    TabOrder = 1
    object lblCodCli: TLabel
      Left = 30
      Top = 23
      Width = 63
      Height = 23
      Caption = 'CLIENTE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblCodImo: TLabel
      Left = 31
      Top = 88
      Width = 150
      Height = 23
      Caption = 'C'#211'DIGO DO IM'#211'VEL'
      FocusControl = dbeCodImo
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblCodFunc: TLabel
      Left = 31
      Top = 156
      Width = 105
      Height = 23
      Caption = 'FUNCION'#193'RIO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object Shape3: TShape
      Left = 287
      Top = 107
      Width = 82
      Height = 32
      Brush.Color = 13859400
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object lblBuscar: TLabel
      Left = 305
      Top = 112
      Width = 48
      Height = 25
      Caption = 'Buscar'
    end
    object btnBusca: TImage
      Left = 287
      Top = 105
      Width = 82
      Height = 33
      OnClick = btnBuscaClick
    end
    object dbeCodImo: TDBEdit
      Left = 31
      Top = 113
      Width = 250
      Height = 26
      DataField = 'imoCodigo'
      DataSource = dsVendas
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object cbbCliente: TDBLookupComboBox
      Left = 31
      Top = 52
      Width = 322
      Height = 26
      DataField = 'cliCodigo'
      DataSource = dsVendas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'cliCodigo'
      ListField = 'cliNome'
      ListSource = dsClientes
      ParentFont = False
      TabOrder = 1
    end
    object cbbFuncionario: TDBLookupComboBox
      Left = 30
      Top = 185
      Width = 322
      Height = 26
      DataField = 'funCodigo'
      DataSource = dsVendas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'funCodigo'
      ListField = 'funNome'
      ListSource = dsFuncionarios
      ParentFont = False
      TabOrder = 2
    end
  end
  object pnlTerceiro: TPanel
    Left = 392
    Top = 135
    Width = 337
    Height = 224
    TabOrder = 2
    object lblDtVenda: TLabel
      Left = 28
      Top = 88
      Width = 122
      Height = 23
      Caption = 'DATA DA VENDA'
      FocusControl = dbeDtVnd
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblPreco: TLabel
      Left = 26
      Top = 23
      Width = 54
      Height = 23
      Caption = 'PRE'#199'O'
      FocusControl = dbePreco
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object dbePreco: TDBEdit
      Left = 27
      Top = 48
      Width = 281
      Height = 26
      DataField = 'venPreco'
      DataSource = dsVendas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object dbeDtVnd: TDBEdit
      Left = 32
      Top = 113
      Width = 196
      Height = 26
      DataField = 'venData'
      DataSource = dsVendas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object dtpVenda: TDateTimePicker
      Left = 29
      Top = 113
      Width = 290
      Height = 26
      Date = 42674.575914212960000000
      Time = 42674.575914212960000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = dtpVendaChange
    end
  end
  object pnlQuarto: TPanel
    Left = 1
    Top = 365
    Width = 728
    Height = 65
    TabOrder = 3
    object spExcluir: TShape
      Left = 30
      Top = 17
      Width = 91
      Height = 32
      Brush.Color = 13859400
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object spEditar: TShape
      Left = 172
      Top = 17
      Width = 91
      Height = 32
      Brush.Color = 13859400
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object spInserir: TShape
      Left = 318
      Top = 17
      Width = 91
      Height = 32
      Brush.Color = 13859400
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object spCancelar: TShape
      Left = 466
      Top = 17
      Width = 91
      Height = 32
      Brush.Color = 13859400
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object spSalvar: TShape
      Left = 608
      Top = 17
      Width = 91
      Height = 32
      Brush.Color = 13859400
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object lblExcluir: TLabel
      Left = 53
      Top = 20
      Width = 46
      Height = 23
      Caption = 'Excluir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblEditar: TLabel
      Left = 201
      Top = 20
      Width = 39
      Height = 23
      Caption = 'Editar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblInserir: TLabel
      Left = 343
      Top = 20
      Width = 42
      Height = 23
      Caption = 'Inserir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblCancelar: TLabel
      Left = 481
      Top = 20
      Width = 63
      Height = 23
      Caption = 'Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblSalvar: TLabel
      Left = 632
      Top = 20
      Width = 43
      Height = 23
      Caption = 'Salvar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object btnExcluir: TImage
      Left = 30
      Top = 15
      Width = 91
      Height = 34
      OnClick = btnExcluirClick
    end
    object btnEditar: TImage
      Left = 172
      Top = 17
      Width = 91
      Height = 32
      OnClick = btnEditarClick
    end
    object btnInserir: TImage
      Left = 318
      Top = 17
      Width = 91
      Height = 32
      OnClick = btnInserirClick
    end
    object btnCancelar: TImage
      Left = 466
      Top = 17
      Width = 91
      Height = 32
      OnClick = btnCancelarClick
    end
    object btnSalvar: TImage
      Left = 608
      Top = 17
      Width = 91
      Height = 32
      OnClick = btnSalvarClick
    end
  end
  object dsVendas: TDataSource
    AutoEdit = False
    DataSet = DM.qryVendas
    OnStateChange = dsVendasStateChange
    OnDataChange = dsVendasDataChange
    Left = 688
    Top = 80
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = DM.qryClientes
    Left = 640
    Top = 72
  end
  object dsFuncionarios: TDataSource
    AutoEdit = False
    DataSet = DM.qryFuncionarios
    Left = 592
    Top = 71
  end
end
