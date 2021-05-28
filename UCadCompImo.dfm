object frmCompImo: TfrmCompImo
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Adiconar Complementos'
  ClientHeight = 383
  ClientWidth = 345
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
  object Shape2: TShape
    Left = 0
    Top = 33
    Width = 345
    Height = 322
    Align = alClient
    ExplicitLeft = 264
    ExplicitTop = 160
    ExplicitWidth = 65
    ExplicitHeight = 65
  end
  object Label2: TLabel
    Left = 8
    Top = 151
    Width = 81
    Height = 23
    Caption = 'Quantidade'
    FocusControl = edtQuantidade
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 207
    Width = 101
    Height = 23
    Caption = 'Caracter'#237'sticas'
    FocusControl = edtCaracteristica
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 95
    Width = 173
    Height = 23
    Caption = 'C'#243'digo do Complemento'
    FocusControl = edtCodComp
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 39
    Width = 120
    Height = 23
    Caption = 'C'#243'digo do Im'#243'vel'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object txtCodImo: TDBText
    Left = 8
    Top = 63
    Width = 176
    Height = 26
    DataField = 'imoCodigo'
    DataSource = dsCompImo
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 345
    Height = 33
    Align = alTop
    Brush.Color = 11545533
    Pen.Style = psClear
    ExplicitLeft = -1
    ExplicitWidth = 349
  end
  object imag: TShape
    Left = 0
    Top = 355
    Width = 345
    Height = 28
    Align = alBottom
    Brush.Color = 11545533
    Pen.Style = psClear
    ExplicitLeft = -5
    ExplicitTop = 357
    ExplicitWidth = 354
  end
  object spAdd: TShape
    Left = 8
    Top = 272
    Width = 105
    Height = 33
    Brush.Color = 11545533
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object spEdt: TShape
    Left = 119
    Top = 272
    Width = 105
    Height = 33
    Brush.Color = 11545533
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object spRemover: TShape
    Left = 230
    Top = 272
    Width = 105
    Height = 33
    Brush.Color = 11545533
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object spCanc: TShape
    Left = 64
    Top = 311
    Width = 105
    Height = 33
    Brush.Color = 11545533
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object spSalvar: TShape
    Left = 175
    Top = 311
    Width = 105
    Height = 33
    Brush.Color = 11545533
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object lblAdicionar: TLabel
    Left = 24
    Top = 276
    Width = 65
    Height = 23
    Caption = 'Adicionar'
  end
  object lblEditar: TLabel
    Left = 149
    Top = 276
    Width = 39
    Height = 23
    Caption = 'Editar'
  end
  object lblRemover: TLabel
    Left = 254
    Top = 276
    Width = 63
    Height = 23
    Caption = 'Remover'
  end
  object lblCancelar: TLabel
    Left = 88
    Top = 315
    Width = 63
    Height = 23
    Caption = 'Cancelar'
  end
  object lblSalvar: TLabel
    Left = 204
    Top = 315
    Width = 43
    Height = 23
    Caption = 'Salvar'
  end
  object btnAdicionar: TImage
    Left = 8
    Top = 271
    Width = 104
    Height = 33
    OnClick = btnAdicionarClick
  end
  object btnEditar: TImage
    Left = 119
    Top = 272
    Width = 105
    Height = 32
    OnClick = Image2Click
  end
  object btnRemover: TImage
    Left = 230
    Top = 271
    Width = 105
    Height = 33
    OnClick = btnRemoverClick
  end
  object btnCancelar: TImage
    Left = 64
    Top = 311
    Width = 105
    Height = 33
    OnClick = btnCancelarClick
  end
  object btnSalvar: TImage
    Left = 175
    Top = 311
    Width = 105
    Height = 33
    OnClick = btnSalvarClick
  end
  object edtQuantidade: TDBEdit
    Left = 8
    Top = 175
    Width = 176
    Height = 26
    DataField = 'compimoQuantidade'
    DataSource = dsCompImo
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = edtQuantidadeKeyPress
  end
  object edtCaracteristica: TDBEdit
    Left = 8
    Top = 231
    Width = 327
    Height = 26
    DataField = 'compimoCaracteristicas'
    DataSource = dsCompImo
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtCodComp: TDBEdit
    Left = 8
    Top = 119
    Width = 176
    Height = 26
    DataField = 'compCodigo'
    DataSource = dsCompImo
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object btnSelecionar: TBitBtn
    Left = 190
    Top = 119
    Width = 35
    Height = 26
    Hint = 'Selecionar Complemento'
    Caption = '+'
    Font.Charset = ANSI_CHARSET
    Font.Color = 11545533
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = btnSelecionarClick
  end
  object dsCompImo: TDataSource
    AutoEdit = False
    DataSet = DM.qryCompImoveis
    OnStateChange = dsCompImoStateChange
    Left = 288
    Top = 72
  end
end
