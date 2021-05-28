object frmConImovel: TfrmConImovel
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consultar Im'#243'vel'
  ClientHeight = 630
  ClientWidth = 934
  Color = clBtnFace
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
  object Shape3: TShape
    Left = 0
    Top = 29
    Width = 934
    Height = 575
    Align = alClient
    ExplicitLeft = 568
    ExplicitTop = 536
    ExplicitWidth = 65
    ExplicitHeight = 65
  end
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 934
    Height = 29
    Align = alTop
    Brush.Color = 10757321
  end
  object Shape2: TShape
    Left = 0
    Top = 604
    Width = 934
    Height = 26
    Align = alBottom
    Brush.Color = 10757321
    ExplicitTop = 607
    ExplicitWidth = 932
  end
  object Label1: TLabel
    Left = 8
    Top = 530
    Width = 727
    Height = 20
    Caption = 
      'Clique duas vezes em um im'#243'vel para ver mais informa'#231#245'es como fo' +
      'tos e complementos ou Editar, Adicionar ou Remover Registros.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object pnlSegundo: TPanel
    Left = 0
    Top = 103
    Width = 401
    Height = 81
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object rbtAmbos: TRadioButton
      Left = 16
      Top = 32
      Width = 113
      Height = 17
      Caption = 'Ambos'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rbtAmbosClick
    end
    object rbtNaoOcupado: TRadioButton
      Left = 275
      Top = 32
      Width = 113
      Height = 17
      Caption = 'N'#227'o ocupado'
      TabOrder = 1
      OnClick = rbtNaoOcupadoClick
    end
    object rbtOcupado: TRadioButton
      Left = 147
      Top = 28
      Width = 113
      Height = 26
      Caption = 'Ocupado'
      TabOrder = 2
      OnClick = rbtOcupadoClick
    end
  end
  object pnlTerceiro: TPanel
    Left = 407
    Top = 103
    Width = 519
    Height = 81
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object rbtAZ: TRadioButton
      Left = 32
      Top = 32
      Width = 113
      Height = 17
      Caption = 'De A '#224' Z'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rbtAZClick
    end
    object rbtZA: TRadioButton
      Left = 136
      Top = 32
      Width = 113
      Height = 17
      Caption = 'De Z '#224' A'
      TabOrder = 1
      OnClick = rbtZAClick
    end
    object rbtnDesc: TRadioButton
      Left = 233
      Top = 43
      Width = 265
      Height = 23
      Caption = 'Ordem Descrescente de Registros'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = rbtnDescClick
    end
    object rbtnCres: TRadioButton
      Left = 233
      Top = 13
      Width = 248
      Height = 21
      Caption = 'Ordem Crescente de Registros'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = rbtnCresClick
    end
  end
  object pnlQuarto: TPanel
    Left = 8
    Top = 190
    Width = 930
    Height = 83
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Shape6: TShape
      Left = 692
      Top = 23
      Width = 102
      Height = 33
      Brush.Color = 10757321
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object Shape7: TShape
      Left = 804
      Top = 24
      Width = 105
      Height = 33
      Brush.Color = 10757321
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object Shape8: TShape
      Left = 582
      Top = 24
      Width = 102
      Height = 33
      Brush.Color = 10757321
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object lblLimpar: TLabel
      Left = 720
      Top = 27
      Width = 48
      Height = 23
      Caption = 'Limpar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblPesquisar: TLabel
      Left = 600
      Top = 28
      Width = 70
      Height = 23
      Caption = 'Pesquisar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblRelatorio: TLabel
      Left = 830
      Top = 28
      Width = 61
      Height = 23
      Caption = 'Relat'#243'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object btnLimpar: TImage
      Left = 692
      Top = 24
      Width = 102
      Height = 32
      OnClick = btnLimparClick
    end
    object btnPesquisar: TImage
      Left = 581
      Top = 23
      Width = 102
      Height = 34
      OnClick = btnPesquisarClick
    end
    object btnRelatorio: TImage
      Left = 804
      Top = 23
      Width = 105
      Height = 33
      OnClick = btnRelatorioClick
    end
    object edtConImovel: TEdit
      Left = 16
      Top = 24
      Width = 385
      Height = 26
      TabOrder = 0
    end
    object DateTimePickerConImovel: TDateTimePicker
      Left = 407
      Top = 24
      Width = 162
      Height = 33
      Date = 42681.353811828700000000
      Time = 42681.353811828700000000
      TabOrder = 1
      Visible = False
    end
  end
  object dbgConImovel: TDBGrid
    Left = 1
    Top = 279
    Width = 931
    Height = 250
    DataSource = DSconImovel
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 4
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnCellClick = dbgConImovelCellClick
    OnDblClick = dbgConImovelDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'imoNome'
        Title.Caption = 'Nome'
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imoCodigo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'imoEndereco'
        Title.Caption = 'Endere'#231'o'
        Width = 179
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imoBairro'
        Title.Caption = 'Bairro'
        Width = 108
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imoNumero'
        Title.Caption = 'Numero'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imoComplemento'
        Title.Caption = 'Complemento'
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imoCidade'
        Title.Caption = 'Cidade'
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imoEstado'
        Title.Caption = 'Estado'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'imoAreaTotal'
        Title.Caption = #193'rea Total'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imoAreaPrivativa'
        Title.Caption = #193'rea Privativa'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'imoQuadra'
        Title.Caption = 'Quadra'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'imoLote'
        Title.Caption = 'Lote'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'imoOcupacao'
        Title.Caption = 'Ocupado'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imoEstadoDoImovel'
        Title.Caption = 'Estado do Im'#243'vel'
        Width = 139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imoValorIPTU'
        Title.Caption = 'IPTU'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'imoObservacao'
        Title.Caption = 'Observa'#231#227'o'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'imoDataRegistro'
        Title.Caption = 'Data de Registro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imoNegociacao'
        Title.Caption = 'Negocia'#231#227'o'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'imoOrientacao'
        Title.Caption = 'Orienta'#231#227'o'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'tpImoCodigo'
        Visible = False
      end>
  end
  object Panel1: TPanel
    Left = -8
    Top = 556
    Width = 940
    Height = 50
    Align = alCustom
    TabOrder = 5
    object spSelecionar: TShape
      Left = 32
      Top = 8
      Width = 105
      Height = 33
      Brush.Color = clGray
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object lblSelecionar: TLabel
      Left = 48
      Top = 13
      Width = 74
      Height = 23
      Caption = 'Selecionar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object btnSelecionar: TImage
      Left = 32
      Top = 8
      Width = 105
      Height = 33
      Enabled = False
      OnClick = btnSelecionarClick
    end
  end
  object pnlPrimeiro: TPanel
    Left = 0
    Top = 32
    Width = 932
    Height = 65
    Align = alCustom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object rbtCidade: TRadioButton
      Left = 496
      Top = 23
      Width = 113
      Height = 17
      Caption = 'Cidade'
      TabOrder = 0
      OnClick = rbtCidadeClick
    end
    object rbtBairro: TRadioButton
      Left = 362
      Top = 23
      Width = 113
      Height = 17
      Caption = 'Bairro'
      TabOrder = 1
      OnClick = rbtBairroClick
    end
    object rbtEndereco: TRadioButton
      Left = 187
      Top = 21
      Width = 120
      Height = 22
      Caption = 'Endere'#231'o'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 2
      OnClick = rbtEnderecoClick
    end
    object rbtAreaTotal: TRadioButton
      Left = 640
      Top = 23
      Width = 113
      Height = 17
      Caption = #193'rea Total'
      TabOrder = 3
      OnClick = rbtAreaTotalClick
    end
    object rbtData: TRadioButton
      Left = 759
      Top = 20
      Width = 153
      Height = 25
      Caption = 'Data de Registro'
      TabOrder = 4
      OnClick = rbtDataClick
    end
    object rbtNome: TRadioButton
      Left = 32
      Top = 22
      Width = 113
      Height = 20
      Caption = 'Nome'
      Checked = True
      Color = clBtnFace
      ParentColor = False
      TabOrder = 5
      TabStop = True
      OnClick = rbtNomeClick
    end
  end
  object DSconImovel: TDataSource
    AutoEdit = False
    DataSet = DM.qryConsImoveis
    Left = 680
    Top = 352
  end
  object frxDBDatasetConImo: TfrxDBDataset
    UserName = 'frxDBDatasetConImo'
    CloseDataSource = False
    DataSource = DSconImovel
    BCDToCurrency = False
    Left = 664
    Top = 416
  end
  object frxReport: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42692.694106921300000000
    ReportOptions.LastChange = 42692.694106921300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 512
    Top = 400
    Datasets = <
      item
        DataSet = frxDBDatasetConImo
        DataSetName = 'frxDBDatasetConImo'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 294.803340000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RELAT'#211'RIO')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Height = 695.433520000000000000
        ParentFont = False
        Top = 113.385900000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetConImo
        DataSetName = 'frxDBDatasetConImo'
        RowCount = 0
        object frxDBDatasetConImoimoCodigo: TfrxMemoView
          Left = 64.252010000000000000
          Top = 11.338590000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DataField = 'imoCodigo'
          DataSet = frxDBDatasetConImo
          DataSetName = 'frxDBDatasetConImo'
          Memo.UTF8W = (
            '[frxDBDatasetConImo."imoCodigo"]')
        end
        object frxDBDatasetConImoimoEndereco: TfrxMemoView
          Left = 79.370130000000000000
          Top = 49.133890000000000000
          Width = 563.149970000000000000
          Height = 18.897650000000000000
          DataField = 'imoEndereco'
          DataSet = frxDBDatasetConImo
          DataSetName = 'frxDBDatasetConImo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatasetConImo."imoEndereco"]')
          ParentFont = False
        end
        object frxDBDatasetConImoimoBairro: TfrxMemoView
          Left = 56.692950000000000000
          Top = 83.149660000000000000
          Width = 585.827150000000000000
          Height = 18.897650000000000000
          DataField = 'imoBairro'
          DataSet = frxDBDatasetConImo
          DataSetName = 'frxDBDatasetConImo'
          Memo.UTF8W = (
            '[frxDBDatasetConImo."imoBairro"]')
        end
        object frxDBDatasetConImoimoNumero: TfrxMemoView
          Left = 71.811070000000000000
          Top = 124.724490000000000000
          Width = 570.709030000000000000
          Height = 18.897650000000000000
          DataField = 'imoNumero'
          DataSet = frxDBDatasetConImo
          DataSetName = 'frxDBDatasetConImo'
          Memo.UTF8W = (
            '[frxDBDatasetConImo."imoNumero"]')
        end
        object frxDBDatasetConImoimoComplemento: TfrxMemoView
          Left = 120.944960000000000000
          Top = 162.519790000000000000
          Width = 525.354670000000000000
          Height = 18.897650000000000000
          DataField = 'imoComplemento'
          DataSet = frxDBDatasetConImo
          DataSetName = 'frxDBDatasetConImo'
          Memo.UTF8W = (
            '[frxDBDatasetConImo."imoComplemento"]')
        end
        object frxDBDatasetConImoimoCidade: TfrxMemoView
          Left = 68.031540000000000000
          Top = 200.315090000000000000
          Width = 574.488560000000000000
          Height = 18.897650000000000000
          DataField = 'imoCidade'
          DataSet = frxDBDatasetConImo
          DataSetName = 'frxDBDatasetConImo'
          Memo.UTF8W = (
            '[frxDBDatasetConImo."imoCidade"]')
        end
        object frxDBDatasetConImoimoEstado: TfrxMemoView
          Left = 71.811070000000000000
          Top = 238.110390000000000000
          Width = 578.268090000000000000
          Height = 18.897650000000000000
          DataField = 'imoEstado'
          DataSet = frxDBDatasetConImo
          DataSetName = 'frxDBDatasetConImo'
          Memo.UTF8W = (
            '[frxDBDatasetConImo."imoEstado"]')
        end
        object frxDBDatasetConImoimoAreaTotal: TfrxMemoView
          Left = 94.488250000000000000
          Top = 275.905690000000000000
          Width = 555.590910000000000000
          Height = 18.897650000000000000
          DataField = 'imoAreaTotal'
          DataSet = frxDBDatasetConImo
          DataSetName = 'frxDBDatasetConImo'
          Memo.UTF8W = (
            '[frxDBDatasetConImo."imoAreaTotal"]')
        end
        object frxDBDatasetConImoimoAreaPrivativa: TfrxMemoView
          Left = 117.165430000000000000
          Top = 313.700990000000000000
          Width = 532.913730000000000000
          Height = 18.897650000000000000
          DataField = 'imoAreaPrivativa'
          DataSet = frxDBDatasetConImo
          DataSetName = 'frxDBDatasetConImo'
          Memo.UTF8W = (
            '[frxDBDatasetConImo."imoAreaPrivativa"]')
        end
        object frxDBDatasetConImoimoQuadra: TfrxMemoView
          Left = 68.031540000000000000
          Top = 351.496290000000000000
          Width = 574.488560000000000000
          Height = 18.897650000000000000
          DataField = 'imoQuadra'
          DataSet = frxDBDatasetConImo
          DataSetName = 'frxDBDatasetConImo'
          Memo.UTF8W = (
            '[frxDBDatasetConImo."imoQuadra"]')
        end
        object frxDBDatasetConImoimoLote: TfrxMemoView
          Left = 45.354360000000000000
          Top = 385.512060000000000000
          Width = 597.165740000000000000
          Height = 18.897650000000000000
          DataField = 'imoLote'
          DataSet = frxDBDatasetConImo
          DataSetName = 'frxDBDatasetConImo'
          Memo.UTF8W = (
            '[frxDBDatasetConImo."imoLote"]')
        end
        object frxDBDatasetConImoimoOcupacao: TfrxMemoView
          Left = 90.708720000000000000
          Top = 423.307360000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          DataField = 'imoOcupacao'
          DataSet = frxDBDatasetConImo
          DataSetName = 'frxDBDatasetConImo'
          Memo.UTF8W = (
            '[frxDBDatasetConImo."imoOcupacao"]')
        end
        object frxDBDatasetConImoimoEstadoDoImovel: TfrxMemoView
          Left = 143.622140000000000000
          Top = 464.882190000000000000
          Width = 510.236550000000000000
          Height = 18.897650000000000000
          DataField = 'imoEstadoDoImovel'
          DataSet = frxDBDatasetConImo
          DataSetName = 'frxDBDatasetConImo'
          Memo.UTF8W = (
            '[frxDBDatasetConImo."imoEstadoDoImovel"]')
        end
        object frxDBDatasetConImoimoValorIPTU: TfrxMemoView
          Left = 52.913420000000000000
          Top = 502.677490000000000000
          Width = 589.606680000000000000
          Height = 18.897650000000000000
          DataField = 'imoValorIPTU'
          DataSet = frxDBDatasetConImo
          DataSetName = 'frxDBDatasetConImo'
          Memo.UTF8W = (
            '[frxDBDatasetConImo."imoValorIPTU"]')
        end
        object frxDBDatasetConImoimoObservacao: TfrxMemoView
          Left = 94.488250000000000000
          Top = 540.472790000000000000
          Width = 548.031850000000000000
          Height = 18.897650000000000000
          DataField = 'imoObservacao'
          DataSet = frxDBDatasetConImo
          DataSetName = 'frxDBDatasetConImo'
          Memo.UTF8W = (
            '[frxDBDatasetConImo."imoObservacao"]')
        end
        object frxDBDatasetConImoimoDataRegistro: TfrxMemoView
          Left = 139.842610000000000000
          Top = 578.268090000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          DataField = 'imoDataRegistro'
          DataSet = frxDBDatasetConImo
          DataSetName = 'frxDBDatasetConImo'
          Memo.UTF8W = (
            '[frxDBDatasetConImo."imoDataRegistro"]')
        end
        object frxDBDatasetConImoimoNegociacao: TfrxMemoView
          Left = 105.826840000000000000
          Top = 616.063390000000000000
          Width = 544.252320000000000000
          Height = 18.897650000000000000
          DataField = 'imoNegociacao'
          DataSet = frxDBDatasetConImo
          DataSetName = 'frxDBDatasetConImo'
          Memo.UTF8W = (
            '[frxDBDatasetConImo."imoNegociacao"]')
        end
        object frxDBDatasetConImoimoOrientacao: TfrxMemoView
          Left = 94.488250000000000000
          Top = 653.858690000000000000
          Width = 548.031850000000000000
          Height = 18.897650000000000000
          DataField = 'imoOrientacao'
          DataSet = frxDBDatasetConImo
          DataSetName = 'frxDBDatasetConImo'
          Memo.UTF8W = (
            '[frxDBDatasetConImo."imoOrientacao"]')
        end
        object Memo2: TfrxMemoView
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Top = 49.133890000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 83.149660000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Top = 124.724490000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#250'mero:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 162.519790000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Complemento:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Top = 200.315090000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Top = 238.110390000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 275.905690000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #193'rea Total:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Top = 313.700990000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #193'rea Privativa:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Top = 351.496290000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Quadra:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Top = 385.512060000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Lote:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Top = 423.307360000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ocupa'#231#227'o:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Top = 464.882190000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estado do Im'#243'vel:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Top = 502.677490000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'IPTU:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Top = 540.472790000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Observa'#231#227'o:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Top = 578.268090000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data de registro:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Top = 616.063390000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Negocia'#231#227'o:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Top = 653.858690000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Orienta'#231#227'o:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 869.291900000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 619.842920000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
      end
    end
  end
end
