object frmConServTerceirizado: TfrmConServTerceirizado
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consultar Servi'#231'o Terceirizado'
  ClientHeight = 601
  ClientWidth = 824
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 1
    Top = 559
    Width = 824
    Height = 41
    Brush.Color = 11879319
  end
  object Shape2: TShape
    Left = 1
    Top = -4
    Width = 824
    Height = 37
    Brush.Color = 11879319
  end
  object pnlPrincipal: TPanel
    Left = 8
    Top = 39
    Width = 817
    Height = 74
    TabOrder = 0
    object rbNome: TRadioButton
      Left = 32
      Top = 26
      Width = 65
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
      OnClick = rbNomeClick
    end
    object rbBairro: TRadioButton
      Left = 341
      Top = 26
      Width = 113
      Height = 17
      Caption = 'Bairro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = rbBairroClick
    end
    object rbCidade: TRadioButton
      Left = 182
      Top = 26
      Width = 81
      Height = 17
      Caption = 'Cidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = rbCidadeClick
    end
    object rbEndereco: TRadioButton
      Left = 487
      Top = 20
      Width = 113
      Height = 30
      Caption = 'Endere'#231'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = rbEnderecoClick
    end
    object rbServ: TRadioButton
      Left = 671
      Top = 26
      Width = 113
      Height = 17
      Caption = 'Servi'#231'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = rbServClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 1
    Top = 247
    Width = 824
    Height = 306
    DataSource = dsConServTerc
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'terCodigo'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'terNome'
        Width = 176
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'terServico'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'terObservacao'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'terBairro'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'terEndereco'
        Width = 219
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'terCidade'
        Width = 141
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'terEstado'
        Width = 71
        Visible = True
      end>
  end
  object pnlTerciario: TPanel
    Left = 8
    Top = 119
    Width = 817
    Height = 63
    Align = alCustom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object rbtAz: TRadioButton
      Left = 36
      Top = 16
      Width = 113
      Height = 17
      Caption = 'De A.'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rbtAzClick
    end
    object rbtZa: TRadioButton
      Left = 166
      Top = 16
      Width = 113
      Height = 17
      Caption = 'De Z.'
      TabOrder = 1
      OnClick = rbtZaClick
    end
  end
  object pnlQuaternario: TPanel
    Left = -13
    Top = 185
    Width = 838
    Height = 56
    Align = alCustom
    TabOrder = 3
    object Shape3: TShape
      Left = 423
      Top = 3
      Width = 118
      Height = 34
      Brush.Color = 11879319
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object Shape4: TShape
      Left = 557
      Top = 3
      Width = 118
      Height = 34
      Brush.Color = 11879319
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object Shape5: TShape
      Left = 687
      Top = 3
      Width = 118
      Height = 34
      Brush.Color = 11879319
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object lblLimpar: TLabel
      Left = 459
      Top = 7
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
      Left = 577
      Top = 7
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
      Left = 719
      Top = 7
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
      Left = 423
      Top = 3
      Width = 118
      Height = 34
      OnClick = btnLimparClick
    end
    object btnPesquisa: TImage
      Left = 557
      Top = 3
      Width = 118
      Height = 34
      OnClick = btnPesquisaClick
    end
    object btnRelatorio: TImage
      Left = 687
      Top = 3
      Width = 118
      Height = 34
      OnClick = Image3Click
    end
    object edtPesquisa: TEdit
      Left = 32
      Top = 8
      Width = 377
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object dsConServTerc: TDataSource
    AutoEdit = False
    DataSet = DM.qryConsServTerceirizados
    Left = 624
    Top = 328
  end
  object frxReportConsServTerc: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42664.461016064830000000
    ReportOptions.LastChange = 42664.461016064830000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 608
    Top = 408
    Datasets = <
      item
        DataSet = frxDBDatasetConsServTerc
        DataSetName = 'frxDBDataset1'
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
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 260.787570000000000000
          Width = 147.401670000000000000
          Height = 22.677180000000000000
          Memo.UTF8W = (
            'RELAT'#211'RIO')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 389.291590000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetConsServTerc
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 68.031540000000000000
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
        object frxDBDataset1terCodigo: TfrxMemoView
          Left = 79.370130000000000000
          Top = 7.559060000000000000
          Width = 653.858690000000000000
          Height = 18.897650000000000000
          DataField = 'terCodigo'
          DataSet = frxDBDatasetConsServTerc
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."terCodigo"]')
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 45.354360000000000000
          Width = 56.692950000000000000
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
        object frxDBDataset1terNome: TfrxMemoView
          Left = 64.252010000000000000
          Top = 45.354360000000000000
          Width = 657.638220000000000000
          Height = 18.897650000000000000
          DataField = 'terNome'
          DataSet = frxDBDatasetConsServTerc
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."terNome"]')
        end
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 83.149660000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Servi'#231'o:')
          ParentFont = False
        end
        object frxDBDataset1terServico: TfrxMemoView
          Left = 75.590600000000000000
          Top = 83.149660000000000000
          Width = 653.858690000000000000
          Height = 18.897650000000000000
          DataField = 'terServico'
          DataSet = frxDBDatasetConsServTerc
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."terServico"]')
        end
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 120.944960000000000000
          Width = 102.047310000000000000
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
        object frxDBDataset1terObservacao: TfrxMemoView
          Left = 109.606370000000000000
          Top = 120.944960000000000000
          Width = 619.842920000000000000
          Height = 18.897650000000000000
          DataField = 'terObservacao'
          DataSet = frxDBDatasetConsServTerc
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."terObservacao"]')
        end
        object Memo6: TfrxMemoView
          Left = 3.779530000000000000
          Top = 154.960730000000000000
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
        object frxDBDataset1terBairro: TfrxMemoView
          Left = 68.031540000000000000
          Top = 154.960730000000000000
          Width = 657.638220000000000000
          Height = 18.897650000000000000
          DataField = 'terBairro'
          DataSet = frxDBDatasetConsServTerc
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."terBairro"]')
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 192.756030000000000000
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
        object frxDBDataset1terEndereco: TfrxMemoView
          Left = 90.708720000000000000
          Top = 192.756030000000000000
          Width = 631.181510000000000000
          Height = 18.897650000000000000
          DataField = 'terEndereco'
          DataSet = frxDBDatasetConsServTerc
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."terEndereco"]')
        end
        object Memo8: TfrxMemoView
          Left = 3.779530000000000000
          Top = 234.330860000000000000
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
        object frxDBDataset1terCidade: TfrxMemoView
          Left = 71.811070000000000000
          Top = 234.330860000000000000
          Width = 650.079160000000000000
          Height = 18.897650000000000000
          DataField = 'terCidade'
          DataSet = frxDBDatasetConsServTerc
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."terCidade"]')
        end
        object Memo9: TfrxMemoView
          Left = 3.779530000000000000
          Top = 272.126160000000000000
          Width = 64.252010000000000000
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
        object frxDBDataset1terEstado: TfrxMemoView
          Left = 71.811070000000000000
          Top = 272.126160000000000000
          Width = 642.520100000000000000
          Height = 18.897650000000000000
          DataField = 'terEstado'
          DataSet = frxDBDatasetConsServTerc
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."terEstado"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 555.590910000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 585.827150000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[DATE]')
        end
      end
    end
  end
  object frxDBDatasetConsServTerc: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = dsConServTerc
    BCDToCurrency = False
    Left = 704
    Top = 408
  end
end
