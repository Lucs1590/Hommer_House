object frmCadAgendamento: TfrmCadAgendamento
  Left = 0
  Top = 0
  Caption = 'Cadastrar Agendamento'
  ClientHeight = 412
  ClientWidth = 820
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Arial Narrow'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 23
  object spbot: TShape
    Left = 0
    Top = 388
    Width = 820
    Height = 24
    Align = alBottom
    Brush.Color = 12082040
    Pen.Style = psClear
    ExplicitTop = 387
  end
  object spTopo: TShape
    Left = 0
    Top = 0
    Width = 820
    Height = 25
    Align = alTop
    Brush.Color = 12082040
    Pen.Style = psClear
  end
  object spTotal: TShape
    Left = 0
    Top = 25
    Width = 820
    Height = 363
    Align = alClient
    Pen.Style = psClear
    ExplicitTop = 19
  end
  object lblCod: TLabel
    Left = 25
    Top = 45
    Width = 60
    Height = 22
    Caption = 'C'#211'DIGO '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object lblData: TLabel
    Left = 248
    Top = 43
    Width = 37
    Height = 22
    Caption = 'DATA'
    FocusControl = edtDtHora
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object lblCodFunc: TLabel
    Left = 25
    Top = 177
    Width = 96
    Height = 22
    Caption = 'FUNCION'#193'RIO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object lblCodCli: TLabel
    Left = 25
    Top = 112
    Width = 58
    Height = 22
    Caption = 'CLIENTE'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object lblCodImo: TLabel
    Left = 25
    Top = 248
    Width = 138
    Height = 22
    Caption = 'C'#211'DIGO DO IM'#211'VEL'
    FocusControl = edtCodImo
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object DBCodigo: TDBText
    Left = 25
    Top = 74
    Width = 109
    Height = 32
    DataField = 'agendCodigo'
    DataSource = dsCadAgendamento
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object lblrecebeCodFunc: TLabel
    Left = 616
    Top = 73
    Width = 4
    Height = 23
  end
  object lblrecebeCodClientes: TLabel
    Left = 16
    Top = 185
    Width = 4
    Height = 23
  end
  object lblrecebeCodImovel: TLabel
    Left = 328
    Top = 185
    Width = 4
    Height = 23
  end
  object lblhora: TLabel
    Left = 248
    Top = 77
    Width = 40
    Height = 22
    Caption = 'HORA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object spInserir: TShape
    Left = 583
    Top = 73
    Width = 177
    Height = 38
    Brush.Color = 12082040
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object spEditar: TShape
    Left = 583
    Top = 136
    Width = 177
    Height = 33
    Brush.Color = 12082040
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object spExcluir: TShape
    Left = 583
    Top = 191
    Width = 177
    Height = 38
    Brush.Color = 12082040
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object spCancelar: TShape
    Left = 583
    Top = 305
    Width = 177
    Height = 38
    Brush.Color = 12082040
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object spSalvar: TShape
    Left = 583
    Top = 248
    Width = 177
    Height = 35
    Brush.Color = 12082040
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object lblInserir: TLabel
    Left = 648
    Top = 78
    Width = 42
    Height = 23
    Caption = 'Inserir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object lblEditar: TLabel
    Left = 646
    Top = 140
    Width = 39
    Height = 23
    Caption = 'Editar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object lblExcluir: TLabel
    Left = 646
    Top = 196
    Width = 46
    Height = 23
    Caption = 'Excluir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object lblSalvar: TLabel
    Left = 647
    Top = 252
    Width = 43
    Height = 23
    Caption = 'Salvar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object lblCancelar: TLabel
    Left = 642
    Top = 311
    Width = 63
    Height = 23
    Caption = 'Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object btnEditar: TImage
    Left = 583
    Top = 136
    Width = 177
    Height = 33
    OnClick = btnEditarClick
  end
  object btnCancelar: TImage
    Left = 582
    Top = 304
    Width = 177
    Height = 38
    OnClick = btnCancelarClick
  end
  object btnExcluir: TImage
    Left = 583
    Top = 191
    Width = 177
    Height = 38
    OnClick = btnExcluirClick
  end
  object btnSalvar: TImage
    Left = 583
    Top = 248
    Width = 177
    Height = 35
    OnClick = btnSalvarClick
  end
  object btnInserir: TImage
    Left = 583
    Top = 73
    Width = 177
    Height = 38
    OnClick = btnInserirClick
  end
  object spImov: TShape
    Left = 264
    Top = 276
    Width = 113
    Height = 26
    Brush.Color = 12082040
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object lblBuscarImo: TLabel
    Left = 272
    Top = 278
    Width = 97
    Height = 23
    Caption = 'Buscar Im'#243'vel'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object btnBuscImo: TImage
    Left = 263
    Top = 276
    Width = 113
    Height = 26
    OnClick = btnBuscImoClick
  end
  object edtDtHora: TDBEdit
    Left = 301
    Top = 41
    Width = 237
    Height = 26
    DataField = 'agendDataHora'
    DataSource = dsCadAgendamento
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edtCodImo: TDBEdit
    Left = 25
    Top = 276
    Width = 233
    Height = 31
    DataField = 'imoCodigo'
    DataSource = dsCadAgendamento
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object dtpDtHora: TDateTimePicker
    Left = 301
    Top = 41
    Width = 237
    Height = 31
    Date = 42642.370649074070000000
    Time = 42642.370649074070000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnChange = dtpDtHoraChange
  end
  object edtHora: TMaskEdit
    Left = 301
    Top = 75
    Width = 76
    Height = 31
    EditMask = '!99:99:99;1;_'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    MaxLength = 8
    ParentFont = False
    TabOrder = 3
    Text = '  :  :  '
  end
  object cbbClientes: TDBLookupComboBox
    Left = 25
    Top = 140
    Width = 233
    Height = 31
    DataField = 'cliCodigo'
    DataSource = dsCadAgendamento
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    KeyField = 'cliCodigo'
    ListField = 'cliNome'
    ListSource = DSCliente
    ParentFont = False
    TabOrder = 4
  end
  object cbbFuncionarios: TDBLookupComboBox
    Left = 26
    Top = 205
    Width = 233
    Height = 31
    DataField = 'funCodigo'
    DataSource = dsCadAgendamento
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    KeyField = 'funCodigo'
    ListField = 'funNome'
    ListSource = dsFuncionarios
    ParentFont = False
    TabOrder = 5
  end
  object dsCadAgendamento: TDataSource
    AutoEdit = False
    DataSet = DM.qryAgendamentos
    OnStateChange = dsCadAgendamentoStateChange
    OnDataChange = dsCadAgendamentoDataChange
    Left = 368
    Top = 328
  end
  object DSCliente: TDataSource
    AutoEdit = False
    DataSet = DM.qryClientes
    Left = 112
    Top = 328
  end
  object dsFuncionarios: TDataSource
    AutoEdit = False
    DataSet = DM.qryFuncionarios
    Left = 272
    Top = 328
  end
end
