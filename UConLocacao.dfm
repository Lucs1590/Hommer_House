object frmConLocacao: TfrmConLocacao
  Left = 0
  Top = 0
  Caption = 'Consultar Loca'#231#227'o'
  ClientHeight = 517
  ClientWidth = 571
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Shape5: TShape
    Left = 0
    Top = 0
    Width = 571
    Height = 21
    Align = alTop
    Brush.Color = 10968927
    ExplicitLeft = 360
    ExplicitTop = -3
    ExplicitWidth = 73
  end
  object Shape6: TShape
    Left = 0
    Top = 496
    Width = 571
    Height = 21
    Align = alBottom
    Brush.Color = 10968927
    ExplicitLeft = -2
    ExplicitTop = 503
    ExplicitWidth = 572
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 21
    Width = 573
    Height = 57
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object rbtCliente: TRadioButton
      Left = 55
      Top = 16
      Width = 74
      Height = 17
      Caption = 'Cliente'
      Checked = True
      TabOrder = 0
      TabStop = True
    end
    object rbtEndereco: TRadioButton
      Left = 175
      Top = 13
      Width = 90
      Height = 25
      Caption = 'Endere'#231'o'
      TabOrder = 1
    end
  end
  object pnlPesquisa: TPanel
    Left = -3
    Top = 79
    Width = 573
    Height = 98
    Align = alCustom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object lblEnderecoOrNome: TLabel
      Left = 12
      Top = 14
      Width = 113
      Height = 18
      Caption = 'Nome do cliente'
    end
    object lblNumero: TLabel
      Left = 240
      Top = 14
      Width = 126
      Height = 18
      Caption = 'N'#250'mero do imovel'
    end
    object Shape2: TShape
      Left = 456
      Top = 54
      Width = 105
      Height = 34
      Brush.Color = 10968927
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object Shape1: TShape
      Left = 456
      Top = 14
      Width = 105
      Height = 34
      Brush.Color = 10968927
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object Pesquisar: TLabel
      Left = 475
      Top = 17
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
    object Relatório: TLabel
      Left = 475
      Top = 58
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
    object btnPesquisar: TImage
      Left = 456
      Top = 14
      Width = 105
      Height = 34
      OnClick = btnPesquisarClick
    end
    object btnRelatorio: TImage
      Left = 456
      Top = 54
      Width = 105
      Height = 35
      OnClick = btnRelatorioClick
    end
    object edtNumero: TEdit
      Left = 240
      Top = 38
      Width = 62
      Height = 26
      TabOrder = 0
    end
    object edtEnderecoOrName: TEdit
      Left = 12
      Top = 38
      Width = 189
      Height = 26
      TabOrder = 1
    end
  end
  object dbgTabela: TDBGrid
    Left = -7
    Top = 181
    Width = 577
    Height = 258
    DataSource = dsConLocacao
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'cliNome'
        Title.Caption = 'Nome do Cliente'
        Width = 280
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imoEndereco'
        Title.Caption = 'Endere'#231'o'
        Width = 194
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imoNumero'
        Title.Caption = 'N'#250'mero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'locInicio'
        Title.Caption = 'In'#237'cio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'locFim'
        Title.Caption = 'Fim'
        Width = 148
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'locPreco'
        Title.Caption = 'Pre'#231'o'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 438
    Width = 577
    Height = 52
    Align = alCustom
    TabOrder = 3
    object Shape3: TShape
      Left = 24
      Top = 10
      Width = 161
      Height = 34
      Brush.Color = 10968927
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object lblEditar: TLabel
      Left = 52
      Top = 13
      Width = 114
      Height = 23
      Caption = 'Ver informa'#231#245'es'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object btnEditar: TImage
      Left = 24
      Top = 11
      Width = 161
      Height = 33
      OnClick = btnEditarClick
    end
  end
  object dsConLocacao: TDataSource
    AutoEdit = False
    DataSet = DM.qryConsLoc2
    Left = 352
    Top = 320
  end
  object frxReportConsLocacao: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42691.324588541670000000
    ReportOptions.LastChange = 42691.324588541670000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 416
    Top = 248
    Datasets = <
      item
        DataSet = frxDBConsultaLocacao
        DataSetName = 'frxDBDataset1'
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
        Height = 68.031540000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 30.236240000000000000
          Width = 653.858690000000000000
          Height = 60.472480000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -37
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Height = 238.110390000000000000
        ParentFont = False
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        DataSet = frxDBConsultaLocacao
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1locCodigo: TfrxMemoView
          Left = 185.196970000000000000
          Top = 18.897650000000000000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          DataField = 'locCodigo'
          DataSet = frxDBConsultaLocacao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."locCodigo"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 18.897650000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo da Loca'#231#227'o:')
          ParentFont = False
        end
        object frxDBDataset1locFim: TfrxMemoView
          Left = 173.858380000000000000
          Top = 128.504020000000000000
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          DataField = 'locFim'
          DataSet = frxDBConsultaLocacao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."locFim"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 11.338590000000000000
          Top = 52.913420000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'In'#237'cio da Loca'#231#227'o:')
          ParentFont = False
        end
        object frxDBDataset1locInicio: TfrxMemoView
          Left = 173.858380000000000000
          Top = 52.913420000000000000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          DataField = 'locInicio'
          DataSet = frxDBConsultaLocacao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."locInicio"]')
          ParentFont = False
        end
        object frxDBDataset1locPreco: TfrxMemoView
          Left = 177.637910000000000000
          Top = 90.708720000000000000
          Width = 408.189240000000000000
          Height = 18.897650000000000000
          DataField = 'locPreco'
          DataSet = frxDBConsultaLocacao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."locPreco"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Top = 90.708720000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Pre'#231'o da Loca'#231#227'o:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 11.338590000000000000
          Top = 128.504020000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Fim da Loca'#231#227'o:')
          ParentFont = False
        end
        object frxDBDataset1imoCodigo: TfrxMemoView
          Left = 192.756030000000000000
          Top = 162.519790000000000000
          Width = 393.071120000000000000
          Height = 18.897650000000000000
          DataField = 'imoCodigo'
          DataSet = frxDBConsultaLocacao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."imoCodigo"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 162.519790000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo da Imobili'#225'ria:')
          ParentFont = False
        end
        object frxDBDataset1cliCodigo: TfrxMemoView
          Left = 166.299320000000000000
          Top = 204.094620000000000000
          Width = 404.409710000000000000
          Height = 18.897650000000000000
          DataField = 'cliCodigo'
          DataSet = frxDBConsultaLocacao
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."cliCodigo"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 11.338590000000000000
          Top = 204.094620000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo do Cliente:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 445.984540000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 604.724800000000000000
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
  object frxDBConsultaLocacao: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = dsConLocacao
    BCDToCurrency = False
    Left = 464
    Top = 352
  end
end
