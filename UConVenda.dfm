object frmConVenda: TfrmConVenda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de Venda'
  ClientHeight = 603
  ClientWidth = 787
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Arial Narrow'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 23
  object Shape5: TShape
    Left = 0
    Top = 41
    Width = 787
    Height = 521
    Align = alClient
    ExplicitHeight = 536
  end
  object lblSitPag: TLabel
    Left = 8
    Top = 102
    Width = 166
    Height = 23
    Caption = 'Situa'#231#227'o de Pagamento'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object lblImo: TLabel
    Left = 360
    Top = 102
    Width = 44
    Height = 23
    Caption = 'Im'#243'vel'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Shape1: TShape
    Left = 0
    Top = 562
    Width = 787
    Height = 41
    Align = alBottom
    Brush.Color = 13859400
    ExplicitLeft = -2
    ExplicitTop = 633
    ExplicitWidth = 795
  end
  object Shape2: TShape
    Left = 0
    Top = 0
    Width = 787
    Height = 41
    Align = alTop
    Brush.Color = 13859400
    ExplicitTop = -8
    ExplicitWidth = 784
  end
  object pnlSecundário: TPanel
    Left = 0
    Top = 126
    Width = 354
    Height = 57
    TabOrder = 0
    object rbtAmbos: TRadioButton
      Left = 16
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Ambos'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = rbtAmbosClick
    end
    object rbtAtv: TRadioButton
      Left = 127
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Em dia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = rbtAtvClick
    end
    object rbtInv: TRadioButton
      Left = 230
      Top = 24
      Width = 91
      Height = 17
      Caption = 'Atrasado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = rbtInvClick
    end
  end
  object pnlTerciário: TPanel
    Left = 360
    Top = 126
    Width = 425
    Height = 58
    TabOrder = 2
    object RadioButton1: TRadioButton
      Left = 56
      Top = 24
      Width = 89
      Height = 17
      Caption = 'De 1 a X.'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = RadioButton1Click
    end
    object RadioButton2: TRadioButton
      Left = 264
      Top = 24
      Width = 81
      Height = 17
      Caption = 'De X a 1.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = RadioButton2Click
    end
  end
  object dbgConsVenda: TDBGrid
    Left = 3
    Top = 253
    Width = 784
    Height = 308
    DataSource = dsConsVendas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'Arial Narrow'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'imoNome'
        Title.Caption = 'Im'#243'vel'
        Width = 157
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funNome'
        Title.Caption = 'Funcion'#225'rio'
        Width = 209
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliNome'
        Title.Caption = 'Cliente'
        Width = 187
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'venData'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'venSituacaoDePagamento'
        Title.Caption = 'Situa'#231#227'o'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'venPreco'
        Title.Caption = 'Pre'#231'o'
        Visible = True
      end>
  end
  object pnlQuaternario: TPanel
    Left = -8
    Top = 190
    Width = 793
    Height = 57
    TabOrder = 3
    object Shape3: TShape
      Left = 496
      Top = 16
      Width = 81
      Height = 33
      Brush.Color = 13859400
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object Shape4: TShape
      Left = 592
      Top = 16
      Width = 81
      Height = 33
      Brush.Color = 13859400
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object lblPesquisar: TLabel
      Left = 502
      Top = 21
      Width = 70
      Height = 23
      Caption = 'Pesquisar'
    end
    object lblRelatório: TLabel
      Left = 603
      Top = 21
      Width = 61
      Height = 23
      Caption = 'Relat'#243'rio'
    end
    object btnPesquisar: TImage
      Left = 496
      Top = 16
      Width = 80
      Height = 33
      OnClick = btnPesquisarClick
    end
    object btnRelatorio: TImage
      Left = 593
      Top = 16
      Width = 80
      Height = 33
      OnClick = btnRelatorioClick
    end
    object edtPesquisa: TEdit
      Left = 16
      Top = 16
      Width = 347
      Height = 31
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 39
    Width = 785
    Height = 57
    TabOrder = 4
    object rbtPreco: TRadioButton
      Left = 127
      Top = 20
      Width = 130
      Height = 25
      Caption = 'Pre'#231'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = rbtPrecoClick
    end
    object rbtCod: TRadioButton
      Left = 16
      Top = 16
      Width = 81
      Height = 33
      Caption = 'C'#243'digo'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = rbtCodClick
    end
    object rbtNomeCli: TRadioButton
      Left = 246
      Top = 24
      Width = 138
      Height = 17
      Caption = 'Nome do Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = rbtNomeCliClick
    end
    object rbtNomeFunc: TRadioButton
      Left = 432
      Top = 24
      Width = 168
      Height = 17
      Caption = 'Nome do Funcion'#225'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = rbtNomeFuncClick
    end
    object rbtNomeImo: TRadioButton
      Left = 632
      Top = 24
      Width = 145
      Height = 17
      Caption = 'C'#243'digo do Im'#243'vel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = rbtNomeImoClick
    end
  end
  object dsConsVendas: TDataSource
    AutoEdit = False
    DataSet = DM.qryConsVendas
    Left = 567
    Top = 488
  end
  object frxDBDatasetPesquisa: TfrxDBDataset
    UserName = 'frxDBDatasetPesquisa'
    CloseDataSource = False
    DataSource = dsConsVendas
    BCDToCurrency = False
    Left = 672
    Top = 384
  end
  object frxReportRelatorio: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42685.437982106500000000
    ReportOptions.LastChange = 42685.437982106500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 551
    Top = 376
    Datasets = <
      item
        DataSet = frxDBDatasetPesquisa
        DataSetName = 'frxDBDatasetPesquisa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Height = 86.929190000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 372.283705000000000000
          Top = 37.795300000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE VENDAS')
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
        Height = 287.244280000000000000
        ParentFont = False
        Top = 128.504020000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDatasetPesquisa
        DataSetName = 'frxDBDatasetPesquisa'
        RowCount = 0
        object frxDBDatasetPesquisavenCodigo1: TfrxMemoView
          Left = 166.299320000000000000
          Top = 37.795300000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = 'venCodigo'
          DataSet = frxDBDatasetPesquisa
          DataSetName = 'frxDBDatasetPesquisa'
          Memo.UTF8W = (
            '[frxDBDatasetPesquisa."venCodigo"]')
        end
        object frxDBDatasetPesquisavenSituacaoDePagamento1: TfrxMemoView
          Left = 211.653680000000000000
          Top = 68.031540000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DataField = 'venSituacaoDePagamento'
          DataSet = frxDBDatasetPesquisa
          DataSetName = 'frxDBDatasetPesquisa'
          Memo.UTF8W = (
            '[frxDBDatasetPesquisa."venSituacaoDePagamento"]')
        end
        object frxDBDatasetPesquisavenPreco1: TfrxMemoView
          Left = 75.590600000000000000
          Top = 105.826840000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          DataField = 'venPreco'
          DataSet = frxDBDatasetPesquisa
          DataSetName = 'frxDBDatasetPesquisa'
          Memo.UTF8W = (
            '[frxDBDatasetPesquisa."venPreco"]')
        end
        object frxDBDatasetPesquisavenData1: TfrxMemoView
          Left = 139.842610000000000000
          Top = 143.622140000000000000
          Width = 245.669450000000000000
          Height = 18.897650000000000000
          DataField = 'venData'
          DataSet = frxDBDatasetPesquisa
          DataSetName = 'frxDBDatasetPesquisa'
          Memo.UTF8W = (
            '[frxDBDatasetPesquisa."venData"]')
        end
        object frxDBDatasetPesquisacliCodigo1: TfrxMemoView
          Left = 166.299320000000000000
          Top = 181.417440000000000000
          Width = 253.228510000000000000
          Height = 18.897650000000000000
          DataField = 'cliCodigo'
          DataSet = frxDBDatasetPesquisa
          DataSetName = 'frxDBDatasetPesquisa'
          Memo.UTF8W = (
            '[frxDBDatasetPesquisa."cliCodigo"]')
        end
        object frxDBDatasetPesquisaimoCodigo1: TfrxMemoView
          Left = 162.519790000000000000
          Top = 215.433210000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = 'imoCodigo'
          DataSet = frxDBDatasetPesquisa
          DataSetName = 'frxDBDatasetPesquisa'
          Memo.UTF8W = (
            '[frxDBDatasetPesquisa."imoCodigo"]')
        end
        object frxDBDatasetPesquisafunCodigo1: TfrxMemoView
          Left = 204.094620000000000000
          Top = 257.008040000000000000
          Width = 260.787570000000000000
          Height = 18.897650000000000000
          DataField = 'funCodigo'
          DataSet = frxDBDatasetPesquisa
          DataSetName = 'frxDBDatasetPesquisa'
          Memo.UTF8W = (
            '[frxDBDatasetPesquisa."funCodigo"]')
        end
        object Memo2: TfrxMemoView
          Left = 18.897650000000000000
          Top = 37.795300000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo da Venda:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 18.897650000000000000
          Top = 68.031540000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Situa'#231#227'o de Pagamento:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 18.897650000000000000
          Top = 105.826840000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Pre'#231'o:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 18.897650000000000000
          Top = 143.622140000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data da Venda:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 18.897650000000000000
          Top = 181.417440000000000000
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
        object Memo7: TfrxMemoView
          Left = 18.897650000000000000
          Top = 215.433210000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo do Im'#243'vel:')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 18.897650000000000000
          Top = 257.008040000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo do Funcion'#225'rio:')
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
        Height = 60.472480000000000000
        ParentFont = False
        Top = 476.220780000000000000
        Width = 1046.929810000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 797.480830000000000000
          Top = 26.456710000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
      end
    end
  end
end
