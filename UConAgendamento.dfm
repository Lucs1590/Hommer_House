object frmConAgendamento: TfrmConAgendamento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consultar Agendamento'
  ClientHeight = 576
  ClientWidth = 903
  Color = clWhite
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
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 903
    Height = 49
    Align = alTop
    Brush.Color = 13997674
    ExplicitLeft = 8
    ExplicitWidth = 889
  end
  object Shape2: TShape
    Left = 0
    Top = 542
    Width = 903
    Height = 34
    Align = alBottom
    Brush.Color = 13997674
    ExplicitTop = 532
    ExplicitWidth = 893
  end
  object dbgPesquisa: TDBGrid
    Left = 8
    Top = 216
    Width = 889
    Height = 263
    DataSource = dsConAgendamento
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -19
    TitleFont.Name = 'Arial Narrow'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'agendCodigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'agendDataHora'
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funNome'
        Width = 202
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliNome'
        Width = 168
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imoEndereco'
        Width = 246
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'imoNumero'
        Visible = True
      end>
  end
  object pnlPrincipal: TPanel
    Left = 8
    Top = 53
    Width = 562
    Height = 56
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object rbtEndereco: TRadioButton
      Left = 79
      Top = 14
      Width = 89
      Height = 22
      Caption = 'Endere'#231'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = rbtEnderecoClick
    end
    object rbtDtHora: TRadioButton
      Left = 16
      Top = 16
      Width = 57
      Height = 17
      Caption = 'Data'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = True
      OnClick = rbtDtHoraClick
    end
    object rbtDtEndereco: TRadioButton
      Left = 182
      Top = 13
      Width = 139
      Height = 25
      Caption = 'Data e endere'#231'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = rbtDtEnderecoClick
    end
    object rbtFunc: TRadioButton
      Left = 327
      Top = 17
      Width = 106
      Height = 17
      Caption = 'Funcion'#225'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = rbtFuncClick
    end
    object rbtCliente: TRadioButton
      Left = 439
      Top = 17
      Width = 98
      Height = 17
      Caption = 'Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = rbtClienteClick
    end
  end
  object pnlSecundario: TPanel
    Left = 576
    Top = 55
    Width = 321
    Height = 56
    TabOrder = 2
    object rbtMaiorProx: TRadioButton
      Left = 8
      Top = 19
      Width = 154
      Height = 17
      Caption = 'Maior proximidade'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = rbtMaiorProxClick
    end
    object rbtMenorProx: TRadioButton
      Left = 160
      Top = 19
      Width = 169
      Height = 17
      Caption = 'Menor proximidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = rbtMenorProxClick
    end
  end
  object pnlTerciario: TPanel
    Left = 8
    Top = 117
    Width = 889
    Height = 93
    TabOrder = 3
    object lblImovel: TLabel
      Left = 16
      Top = 20
      Width = 152
      Height = 23
      Caption = 'Digite a rua do im'#243'vel:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblNumero: TLabel
      Left = 16
      Top = 57
      Width = 183
      Height = 23
      Caption = 'Digite o n'#250'mero do im'#243'vel:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblData: TLabel
      Left = 377
      Top = 56
      Width = 120
      Height = 23
      Caption = 'Selecione a data:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
    end
    object lblNome: TLabel
      Left = 457
      Top = 19
      Width = 46
      Height = 23
      Caption = 'Nome:'
      Visible = False
    end
    object Shape5: TShape
      Left = 752
      Top = 10
      Width = 105
      Height = 33
      Brush.Color = 13997674
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object Shape6: TShape
      Left = 752
      Top = 49
      Width = 105
      Height = 33
      Brush.Color = 13997674
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object lblPesquisar: TLabel
      Left = 774
      Top = 15
      Width = 70
      Height = 23
      Caption = 'Pesquisar'
    end
    object lblRelatorio: TLabel
      Left = 774
      Top = 54
      Width = 61
      Height = 23
      Caption = 'Relat'#243'rio'
    end
    object btnPesquisar: TImage
      Left = 752
      Top = 11
      Width = 105
      Height = 32
      OnClick = btnPesquisarClick
    end
    object btnRelatorio: TImage
      Left = 752
      Top = 49
      Width = 105
      Height = 32
      OnClick = Image2Click
    end
    object dtpPesquisa: TDateTimePicker
      Left = 503
      Top = 58
      Width = 186
      Height = 26
      Date = 42643.454236087960000000
      Time = 42643.454236087960000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtEndeAgendamento: TEdit
      Left = 178
      Top = 16
      Width = 269
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
    object edtNumAgend: TEdit
      Left = 205
      Top = 56
      Width = 121
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
    object edtNome: TEdit
      Left = 505
      Top = 16
      Width = 186
      Height = 31
      TabOrder = 3
      Visible = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 485
    Width = 903
    Height = 52
    Align = alCustom
    TabOrder = 4
    object Shape3: TShape
      Left = 16
      Top = 8
      Width = 160
      Height = 33
      Brush.Color = 13997674
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object lblEditar: TLabel
      Left = 40
      Top = 13
      Width = 114
      Height = 23
      Caption = 'Ver informa'#231#245'es'
    end
    object btnEditar: TImage
      Left = 16
      Top = 9
      Width = 160
      Height = 32
      OnClick = btnEditarClick
    end
  end
  object dsConAgendamento: TDataSource
    AutoEdit = False
    DataSet = DM.qryConsAgendamentos2
    Left = 392
    Top = 224
  end
  object frxDBDatasetPesquisa: TfrxDBDataset
    UserName = 'frxDBDatasetPesquisa'
    CloseDataSource = False
    DataSource = dsConAgendamento
    BCDToCurrency = False
    Left = 80
    Top = 264
  end
  object frxReport1: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42664.463843842590000000
    ReportOptions.LastChange = 42664.463843842590000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 216
    Top = 272
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
        Height = 52.913420000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 253.228510000000000000
          Top = 11.338590000000000000
          Width = 207.874150000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 415.748300000000000000
        ParentFont = False
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetPesquisa
        DataSetName = 'frxDBDatasetPesquisa'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 11.338590000000000000
          Top = 34.015770000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 11.338590000000000000
          Top = 113.385900000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data e Hora:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 11.338590000000000000
          Top = 181.417440000000000000
          Width = 215.433210000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo do Funcion'#225'rio:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 11.338590000000000000
          Top = 257.008040000000000000
          Width = 170.078850000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo do Cliente:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 332.598640000000000000
          Width = 166.299320000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C'#243'digo do Imov'#233'l:')
          ParentFont = False
        end
        object frxDBDatasetPesquisaagendCodigo: TfrxMemoView
          Left = 83.149660000000000000
          Top = 34.015770000000000000
          Width = 597.165740000000000000
          Height = 22.677180000000000000
          DataField = 'agendCodigo'
          DataSet = frxDBDatasetPesquisa
          DataSetName = 'frxDBDatasetPesquisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatasetPesquisa."agendCodigo"]')
          ParentFont = False
        end
        object frxDBDatasetPesquisaagendDataHora: TfrxMemoView
          Left = 120.944960000000000000
          Top = 113.385900000000000000
          Width = 559.370440000000000000
          Height = 22.677180000000000000
          DataField = 'agendDataHora'
          DataSet = frxDBDatasetPesquisa
          DataSetName = 'frxDBDatasetPesquisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatasetPesquisa."agendDataHora"]')
          ParentFont = False
        end
        object frxDBDatasetPesquisafunCodigo: TfrxMemoView
          Left = 222.992270000000000000
          Top = 181.417440000000000000
          Width = 457.323130000000000000
          Height = 26.456710000000000000
          DataField = 'funCodigo'
          DataSet = frxDBDatasetPesquisa
          DataSetName = 'frxDBDatasetPesquisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatasetPesquisa."funCodigo"]')
          ParentFont = False
        end
        object frxDBDatasetPesquisacliCodigo: TfrxMemoView
          Left = 181.417440000000000000
          Top = 257.008040000000000000
          Width = 498.897960000000000000
          Height = 26.456710000000000000
          DataField = 'cliCodigo'
          DataSet = frxDBDatasetPesquisa
          DataSetName = 'frxDBDatasetPesquisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatasetPesquisa."cliCodigo"]')
          ParentFont = False
        end
        object frxDBDatasetPesquisaimoCodigo: TfrxMemoView
          Left = 177.637910000000000000
          Top = 332.598640000000000000
          Width = 502.677490000000000000
          Height = 26.456710000000000000
          DataField = 'imoCodigo'
          DataSet = frxDBDatasetPesquisa
          DataSetName = 'frxDBDatasetPesquisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDatasetPesquisa."imoCodigo"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 608.504330000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 563.149970000000000000
          Top = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
      end
    end
  end
end
