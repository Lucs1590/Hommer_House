object frmConCliente: TfrmConCliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consultar Cliente'
  ClientHeight = 673
  ClientWidth = 932
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
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 922
    Height = 33
    Brush.Color = 11699521
  end
  object Shape2: TShape
    Left = 0
    Top = 631
    Width = 922
    Height = 32
    Brush.Color = 11699521
  end
  object dbGridConsultaCli: TDBGrid
    Left = 0
    Top = 255
    Width = 919
    Height = 314
    DataSource = dsConsultaClie
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDblClick = dbGridConsultaCliDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'cliCodigo'
        Title.Caption = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliNome'
        Title.Caption = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliRG'
        Title.Caption = 'RG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliCpfCnpj'
        Title.Caption = 'CPF/CNPJ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliEndereco'
        Title.Caption = 'Endere'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliBairro'
        Title.Caption = 'Bairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliCidade'
        Title.Caption = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliEstado'
        Title.Caption = 'Estado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliDataNascimento'
        Title.Caption = 'Data de Nascimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliEstadoCivil'
        Title.Caption = 'Estado Civil'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliTipo'
        Title.Caption = 'Tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliNumero'
        Title.Caption = 'Numero Im'#243'vel'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliCEP'
        Title.Caption = 'CEP'
        Visible = True
      end>
  end
  object pnlPrimario: TPanel
    Left = 3
    Top = 39
    Width = 919
    Height = 66
    Align = alCustom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object rbtNome: TRadioButton
      Left = 40
      Top = 23
      Width = 113
      Height = 17
      Caption = 'Nome'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = rbtNomeClick
    end
    object rbtRG: TRadioButton
      Left = 215
      Top = 23
      Width = 97
      Height = 17
      Caption = 'RG'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = rbtRGClick
    end
    object rbtCpfCnpj: TRadioButton
      Left = 374
      Top = 23
      Width = 113
      Height = 17
      Caption = 'CPF/CNPJ'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = rbtCpfCnpjClick
    end
    object rbtCidade: TRadioButton
      Left = 572
      Top = 25
      Width = 113
      Height = 17
      Caption = 'Cidade'
      TabOrder = 3
      OnClick = rbtCidadeClick
    end
    object rbtEndereco: TRadioButton
      Left = 775
      Top = 25
      Width = 113
      Height = 17
      Caption = 'Endere'#231'o'
      TabOrder = 4
      OnClick = rbtEnderecoClick
    end
  end
  object pnlSecundario: TPanel
    Left = 526
    Top = 115
    Width = 393
    Height = 59
    TabOrder = 2
    object rbtAz: TRadioButton
      Left = 95
      Top = 17
      Width = 159
      Height = 23
      Caption = 'De A.'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = rbtAzClick
    end
    object rbtZa: TRadioButton
      Left = 228
      Top = 17
      Width = 165
      Height = 23
      Caption = 'De Z.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = rbtZaClick
    end
  end
  object pnlQuaternario: TPanel
    Left = 3
    Top = 184
    Width = 919
    Height = 65
    Align = alCustom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object Shape3: TShape
      Left = 603
      Top = 8
      Width = 94
      Height = 34
      Brush.Color = 11699521
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object Shape4: TShape
      Left = 708
      Top = 8
      Width = 94
      Height = 34
      Brush.Color = 11699521
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object Shape5: TShape
      Left = 808
      Top = 8
      Width = 94
      Height = 34
      Brush.Color = 11699521
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object lblLimpar: TLabel
      Left = 627
      Top = 13
      Width = 48
      Height = 23
      Caption = 'Limpar'
    end
    object lblConsultar: TLabel
      Left = 724
      Top = 13
      Width = 66
      Height = 23
      Caption = 'Consultar'
    end
    object lblRelatorio: TLabel
      Left = 826
      Top = 13
      Width = 61
      Height = 23
      Caption = 'Relat'#243'rio'
    end
    object bitbtnGerarRelatorio: TImage
      Left = 808
      Top = 8
      Width = 94
      Height = 34
      OnClick = bitbtnGerarRelatorioClick
    end
    object bitbtnConsultaCli: TImage
      Left = 708
      Top = 8
      Width = 94
      Height = 34
      OnClick = bitbtnConsultaCliClick
    end
    object btnLimpar: TImage
      Left = 604
      Top = 8
      Width = 94
      Height = 34
      OnClick = btnLimparClick
    end
    object edtConCli: TMaskEdit
      Left = 8
      Top = 16
      Width = 585
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = ''
      OnChange = edtConCliChange
    end
  end
  object PnlQuinto: TPanel
    Left = 0
    Top = 575
    Width = 922
    Height = 50
    Align = alCustom
    TabOrder = 4
    object Shape7: TShape
      Left = 11
      Top = 8
      Width = 125
      Height = 34
      Brush.Color = 11699521
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object lblEditar: TLabel
      Left = 17
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
      Left = 11
      Top = 8
      Width = 124
      Height = 33
      OnClick = btnEditarClick
    end
  end
  object pnlTerceiro: TPanel
    Left = -2
    Top = 115
    Width = 522
    Height = 59
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object rbtTipoTodos: TRadioButton
      Left = 42
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Todos'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rbtTipoTodosClick
    end
    object rbtTipoFisico: TRadioButton
      Left = 217
      Top = 16
      Width = 113
      Height = 17
      Caption = 'F'#237'sico'
      TabOrder = 1
    end
    object rbtTipoJuridico: TRadioButton
      Left = 376
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Jur'#237'dico'
      TabOrder = 2
    end
  end
  object dsConsultaClie: TDataSource
    AutoEdit = False
    DataSet = DM.qryConsClientes
    Left = 672
    Top = 304
  end
  object frxDBDataset: TfrxDBDataset
    UserName = 'frxDBDataset'
    CloseDataSource = False
    DataSource = dsConsultaClie
    BCDToCurrency = False
    Left = 456
    Top = 424
  end
  object frxReport: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42693.377704085650000000
    ReportOptions.LastChange = 42693.377704085650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 616
    Top = 408
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Height = 30.236240000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 294.803340000000000000
          Width = 113.385900000000000000
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
        Height = 854.173780000000000000
        ParentFont = False
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset'
        RowCount = 0
        object Memo2: TfrxMemoView
          Top = 30.236240000000000000
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
          Top = 68.031540000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Top = 105.826840000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RG:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Top = 143.622140000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CPF/CNPJ:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 181.417440000000000000
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
        object Memo7: TfrxMemoView
          Top = 219.212740000000000000
          Width = 60.472480000000000000
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
        object Memo8: TfrxMemoView
          Top = 257.008040000000000000
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
        object Memo9: TfrxMemoView
          Top = 294.803340000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estado:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Top = 332.598640000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data de Nascimento:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Top = 370.393940000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estado Civil:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Top = 408.189240000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Tipo:')
          ParentFont = False
        end
        object frxDBDatasetcliCodigo: TfrxMemoView
          Left = 64.252010000000000000
          Top = 30.236240000000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          DataField = 'cliCodigo'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset."cliCodigo"]')
          ParentFont = False
        end
        object frxDBDatasetcliNome: TfrxMemoView
          Left = 52.913420000000000000
          Top = 68.031540000000000000
          Width = 650.079160000000000000
          Height = 18.897650000000000000
          DataField = 'cliNome'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset."cliNome"]')
          ParentFont = False
        end
        object frxDBDatasetcliRG: TfrxMemoView
          Left = 37.795300000000000000
          Top = 105.826840000000000000
          Width = 665.197280000000000000
          Height = 18.897650000000000000
          DataField = 'cliRG'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset."cliRG"]')
          ParentFont = False
        end
        object frxDBDatasetcliCpfCnpj: TfrxMemoView
          Left = 90.708720000000000000
          Top = 143.622140000000000000
          Width = 612.283860000000000000
          Height = 18.897650000000000000
          DataField = 'cliCpfCnpj'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset."cliCpfCnpj"]')
          ParentFont = False
        end
        object frxDBDatasetcliEndereco: TfrxMemoView
          Left = 83.149660000000000000
          Top = 181.417440000000000000
          Width = 619.842920000000000000
          Height = 18.897650000000000000
          DataField = 'cliEndereco'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset."cliEndereco"]')
          ParentFont = False
        end
        object frxDBDatasetcliBairro: TfrxMemoView
          Left = 60.472480000000000000
          Top = 219.212740000000000000
          Width = 642.520100000000000000
          Height = 18.897650000000000000
          DataField = 'cliBairro'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset."cliBairro"]')
          ParentFont = False
        end
        object frxDBDatasetcliCidade: TfrxMemoView
          Left = 64.252010000000000000
          Top = 257.008040000000000000
          Width = 638.740570000000000000
          Height = 18.897650000000000000
          DataField = 'cliCidade'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset."cliCidade"]')
          ParentFont = False
        end
        object frxDBDatasetcliEstado: TfrxMemoView
          Left = 68.031540000000000000
          Top = 294.803340000000000000
          Width = 634.961040000000000000
          Height = 18.897650000000000000
          DataField = 'cliEstado'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset."cliEstado"]')
          ParentFont = False
        end
        object frxDBDatasetcliDataNascimento: TfrxMemoView
          Left = 166.299320000000000000
          Top = 332.598640000000000000
          Width = 536.693260000000000000
          Height = 18.897650000000000000
          DataField = 'cliDataNascimento'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset."cliDataNascimento"]')
          ParentFont = False
        end
        object frxDBDatasetcliEstadoCivil: TfrxMemoView
          Left = 105.826840000000000000
          Top = 370.393940000000000000
          Width = 597.165740000000000000
          Height = 18.897650000000000000
          DataField = 'cliEstadoCivil'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset."cliEstadoCivil"]')
          ParentFont = False
        end
        object frxDBDatasetcliTipo: TfrxMemoView
          Left = 45.354360000000000000
          Top = 408.189240000000000000
          Width = 657.638220000000000000
          Height = 18.897650000000000000
          DataField = 'cliTipo'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset."cliTipo"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 1024.252630000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 593.386210000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
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
