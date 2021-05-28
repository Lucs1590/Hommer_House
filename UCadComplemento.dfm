object frmCadComp: TfrmCadComp
  Left = 0
  Top = 0
  Caption = 'Cadastrar Complementos'
  ClientHeight = 382
  ClientWidth = 382
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial Narrow'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 20
  object Shape8: TShape
    Left = 0
    Top = 0
    Width = 382
    Height = 382
    Align = alClient
    ExplicitLeft = 8
    ExplicitWidth = 392
  end
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 50
    Height = 23
    Caption = 'C'#243'digo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 80
    Width = 42
    Height = 23
    Caption = 'Nome'
    FocusControl = edtNome
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object txtCodigo: TDBText
    Left = 8
    Top = 48
    Width = 65
    Height = 26
    DataField = 'compCodigo'
    DataSource = dsComplemento
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Shape1: TShape
    Left = -3
    Top = 0
    Width = 387
    Height = 18
    Brush.Color = 11545533
    Pen.Style = psClear
  end
  object Shape2: TShape
    Left = -3
    Top = 368
    Width = 387
    Height = 18
    Brush.Color = 11545533
    Pen.Style = psClear
  end
  object Shape3: TShape
    Left = 21
    Top = 296
    Width = 97
    Height = 25
    Brush.Color = 11545533
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object Shape4: TShape
    Left = 134
    Top = 296
    Width = 97
    Height = 25
    Brush.Color = 11545533
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object Shape5: TShape
    Left = 248
    Top = 296
    Width = 97
    Height = 25
    Brush.Color = 11545533
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object Shape6: TShape
    Left = 64
    Top = 327
    Width = 97
    Height = 25
    Brush.Color = 11545533
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object Shape7: TShape
    Left = 192
    Top = 327
    Width = 97
    Height = 25
    Brush.Color = 11545533
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object lblAdicionar: TLabel
    Left = 44
    Top = 297
    Width = 56
    Height = 20
    Caption = 'Adicionar'
  end
  object lblEditar: TLabel
    Left = 164
    Top = 297
    Width = 34
    Height = 20
    Caption = 'Editar'
  end
  object lblRemover: TLabel
    Left = 274
    Top = 297
    Width = 55
    Height = 20
    Caption = 'Remover'
  end
  object lblCancelar: TLabel
    Left = 88
    Top = 328
    Width = 52
    Height = 20
    Caption = 'Cancelar'
  end
  object lblSalvar: TLabel
    Left = 224
    Top = 328
    Width = 37
    Height = 20
    Caption = 'Salvar'
  end
  object btnAdicionar: TImage
    Left = 24
    Top = 297
    Width = 94
    Height = 24
    OnClick = btnAdicionarClick
  end
  object btnEditar: TImage
    Left = 134
    Top = 297
    Width = 94
    Height = 24
    OnClick = btnEditarClick
  end
  object btnRemover: TImage
    Left = 249
    Top = 297
    Width = 94
    Height = 24
  end
  object btnCancelar: TImage
    Left = 65
    Top = 327
    Width = 94
    Height = 24
    OnClick = btnCancelarClick
  end
  object btnSalvar: TImage
    Left = 194
    Top = 327
    Width = 94
    Height = 24
    OnClick = btnSalvarClick
  end
  object edtNome: TDBEdit
    Left = 8
    Top = 104
    Width = 353
    Height = 28
    DataField = 'compNome'
    DataSource = dsComplemento
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object gbTipoImo: TGroupBox
    Left = 8
    Top = 136
    Width = 369
    Height = 146
    Hint = 'Salve ou Cancele antes de fazer a liga'#231#227'o'
    Caption = 'Escolha o Im'#243'veis que podem possuir esse Complemento:'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object cbLote: TCheckBox
      Left = 16
      Top = 40
      Width = 97
      Height = 17
      Caption = 'Lote'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = cbLoteClick
    end
    object cbCasa: TCheckBox
      Left = 16
      Top = 88
      Width = 97
      Height = 17
      Caption = 'Casa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = cbCasaClick
    end
    object cbApartamento: TCheckBox
      Left = 168
      Top = 40
      Width = 177
      Height = 17
      Caption = 'Apartamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = cbApartamentoClick
    end
    object cbComer: TCheckBox
      Left = 168
      Top = 88
      Width = 190
      Height = 17
      Caption = 'Resid'#234'ncia Comercial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = cbComerClick
    end
  end
  object dsComplemento: TDataSource
    AutoEdit = False
    DataSet = DM.qryComplemento
    OnStateChange = dsComplementoStateChange
    Left = 232
    Top = 40
  end
  object dsTpComp: TDataSource
    AutoEdit = False
    DataSet = DM.qryTipoComp
    Left = 88
    Top = 40
  end
  object dsTpImovel: TDataSource
    AutoEdit = False
    DataSet = DM.qryTipoImoveis
    Left = 320
    Top = 40
  end
  object dsExlcuirTComp: TDataSource
    AutoEdit = False
    DataSet = DM.qryExcluirTpComp
    Left = 152
    Top = 48
  end
  object dsConComp: TDataSource
    DataSet = DM.qryConsTpComp
    Left = 280
    Top = 24
  end
end
