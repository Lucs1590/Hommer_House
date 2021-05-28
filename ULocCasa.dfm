object frmLocCasa: TfrmLocCasa
  Left = 0
  Top = 0
  Caption = 'Loca'#231#227'o'
  ClientHeight = 412
  ClientWidth = 820
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object spTotal: TShape
    Left = 0
    Top = 25
    Width = 820
    Height = 363
    Align = alClient
    Pen.Style = psClear
    ExplicitLeft = 8
    ExplicitTop = 19
  end
  object lblLocCodigo: TLabel
    Left = 44
    Top = 50
    Width = 109
    Height = 23
    Caption = 'C'#243'digo loca'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object lblLocPreco: TLabel
    Left = 359
    Top = 185
    Width = 41
    Height = 23
    Caption = 'Pre'#231'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object lblLocInicio: TLabel
    Left = 44
    Top = 121
    Width = 116
    Height = 23
    Caption = 'Inicio da loca'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object lblimoCodigo: TLabel
    Left = 44
    Top = 185
    Width = 120
    Height = 23
    Caption = 'C'#243'digo do imov'#233'l'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object lblCliente: TLabel
    Left = 44
    Top = 257
    Width = 120
    Height = 23
    Caption = 'C'#243'digo do cliente'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object lblLocFim: TLabel
    Left = 359
    Top = 121
    Width = 107
    Height = 23
    Caption = 'Fim da loca'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object txtCodLoc: TDBText
    Left = 44
    Top = 76
    Width = 111
    Height = 19
    DataField = 'locCodigo'
    DataSource = dsLocacao
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
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
  object lblrecebeCodFunc: TLabel
    Left = 648
    Top = 65
    Width = 3
    Height = 13
  end
  object spInserir: TShape
    Left = 615
    Top = 65
    Width = 177
    Height = 38
    Brush.Color = 12082040
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object spEditar: TShape
    Left = 615
    Top = 128
    Width = 177
    Height = 33
    Brush.Color = 12082040
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object spExcluir: TShape
    Left = 615
    Top = 183
    Width = 177
    Height = 38
    Brush.Color = 12082040
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object spCancelar: TShape
    Left = 615
    Top = 297
    Width = 177
    Height = 38
    Brush.Color = 12082040
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object spSalvar: TShape
    Left = 615
    Top = 240
    Width = 177
    Height = 35
    Brush.Color = 12082040
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object lblInserir: TLabel
    Left = 680
    Top = 70
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
    Left = 678
    Top = 132
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
    Left = 678
    Top = 188
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
    Left = 679
    Top = 244
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
    Left = 674
    Top = 303
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
  object spBuscar: TShape
    Left = 215
    Top = 209
    Width = 106
    Height = 26
    Brush.Color = 12082040
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object lblConsImo: TLabel
    Left = 244
    Top = 210
    Width = 49
    Height = 23
    Caption = 'Buscar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object btnBuscar: TImage
    Left = 215
    Top = 209
    Width = 105
    Height = 26
    OnClick = btnBuscarClick
  end
  object btnInserir: TImage
    Left = 615
    Top = 65
    Width = 177
    Height = 38
    OnClick = btnInserirClick
  end
  object btnEditar: TImage
    Left = 614
    Top = 128
    Width = 177
    Height = 33
    OnClick = btnEditarClick
  end
  object btnExcluir: TImage
    Left = 614
    Top = 183
    Width = 177
    Height = 38
    OnClick = btnExcluirClick
  end
  object btnSalvar: TImage
    Left = 615
    Top = 240
    Width = 177
    Height = 35
    OnClick = btnSalvarClick
  end
  object btnCancelar: TImage
    Left = 614
    Top = 296
    Width = 177
    Height = 38
    OnClick = btnCancelarClick
  end
  object imoCodigo: TDBEdit
    Left = 44
    Top = 209
    Width = 165
    Height = 31
    DataField = 'imoCodigo'
    DataSource = dsLocacao
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edtInicio: TDBEdit
    Left = 44
    Top = 145
    Width = 121
    Height = 26
    DataField = 'locInicio'
    DataSource = dsLocacao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtFim: TDBEdit
    Left = 359
    Top = 145
    Width = 121
    Height = 26
    DataField = 'locFim'
    DataSource = dsLocacao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object locPreco: TDBEdit
    Left = 359
    Top = 209
    Width = 210
    Height = 31
    DataField = 'locPreco'
    DataSource = dsLocacao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object dateInicio: TDateTimePicker
    Left = 44
    Top = 145
    Width = 165
    Height = 31
    Date = 42674.574979826390000000
    Time = 42674.574979826390000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object dateFim: TDateTimePicker
    Left = 359
    Top = 145
    Width = 210
    Height = 31
    Hint = 
      'Caso n'#227'o haja uma data limite do aluguel, deixa-a com a data do ' +
      'dia atual'
    Date = 42674.575097685190000000
    Time = 42674.575097685190000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object cbbCliente: TDBLookupComboBox
    Left = 44
    Top = 281
    Width = 165
    Height = 31
    DataField = 'cliCodigo'
    DataSource = dsLocacao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    KeyField = 'cliCodigo'
    ListField = 'cliNome'
    ListSource = DsClientes
    ParentFont = False
    TabOrder = 6
  end
  object dsLocacao: TDataSource
    AutoEdit = False
    DataSet = DM.qryLocacao
    OnDataChange = dsLocacaoDataChange
    Left = 8
    Top = 256
  end
  object DsClientes: TDataSource
    AutoEdit = False
    DataSet = DM.qryClientes
    Left = 8
    Top = 200
  end
end
