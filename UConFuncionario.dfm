object frmConFuncionario: TfrmConFuncionario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consultar Funcion'#225'rio'
  ClientHeight = 669
  ClientWidth = 924
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
  object Shape6: TShape
    Left = 0
    Top = 0
    Width = 924
    Height = 669
    Align = alClient
    ExplicitLeft = 440
    ExplicitTop = 144
    ExplicitWidth = 65
    ExplicitHeight = 65
  end
  object ShapeCima: TShape
    Left = -3
    Top = -12
    Width = 922
    Height = 34
    Brush.Color = 11699521
  end
  object ShapeBaixo: TShape
    Left = 0
    Top = 626
    Width = 914
    Height = 33
    Brush.Color = 11699521
  end
  object DBGridConFuncionario: TDBGrid
    Left = 8
    Top = 237
    Width = 910
    Height = 307
    DataSource = dsConFuncionario
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    OnDblClick = DBGridConFuncionarioDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'funCodigo'
        Title.Caption = 'Codigo'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'funTipo'
        Title.Caption = 'Tipo'
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funNome'
        Title.Caption = 'Nome'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funRG'
        Title.Caption = 'RG'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funCPF'
        Title.Caption = 'CPF'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funEndereco'
        Title.Caption = 'Endere'#231'o'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funCidade'
        Title.Caption = 'Cidade'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funEstado'
        Title.Caption = 'UF'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funSituacao'
        Title.Caption = 'Situa'#231#227'o'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funPagamentoBruto'
        Title.Caption = 'Pagamento Bruto'
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funDataNascimento'
        Title.Caption = 'Data de Nascimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funCTPS'
        Title.Caption = 'CTPS'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funCRECI'
        Title.Caption = 'CRECI'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funObservacoes'
        Title.Caption = 'Observa'#231#245'es'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funDataAdmissao'
        Title.Caption = 'Data de Admiss'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funDataDemissao'
        Title.Caption = 'Data de Demiss'#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funBairro'
        Title.Caption = 'Bairro'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'funLogin'
        Title.Caption = 'Login'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'funSenha'
        Title.Caption = 'Senha'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'funCargo'
        Title.Caption = 'Cargo'
        Width = 153
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funBloqueio'
        Title.Caption = 'Bloqueado?'
        Visible = False
      end>
  end
  object pnlPrincipal: TPanel
    Left = 0
    Top = 28
    Width = 927
    Height = 61
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
      Top = 25
      Width = 113
      Height = 17
      Caption = 'Nome'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rbtNomeClick
    end
    object rbtCPF: TRadioButton
      Left = 399
      Top = 25
      Width = 113
      Height = 17
      Caption = 'CPF'
      TabOrder = 1
      OnClick = rbtCPFClick
    end
    object rbtRG: TRadioButton
      Left = 216
      Top = 25
      Width = 113
      Height = 17
      Caption = 'RG'
      TabOrder = 2
      OnClick = rbtRGClick
    end
    object rbtDtaAdmissao: TRadioButton
      Left = 560
      Top = 22
      Width = 161
      Height = 17
      Caption = 'Data de admiss'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = rbtDtaAdmissaoClick
    end
    object rbtCargo: TRadioButton
      Left = 776
      Top = 22
      Width = 113
      Height = 25
      Caption = 'Cargo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = rbtCargoClick
    end
  end
  object pnlSecundario: TPanel
    Left = 0
    Top = 95
    Width = 433
    Height = 58
    Align = alCustom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object rbtAtivo: TRadioButton
      Left = 153
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Ativo'
      TabOrder = 0
      OnClick = rbtAtivoClick
    end
    object rbtInativo: TRadioButton
      Left = 272
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Inativo'
      TabOrder = 1
      OnClick = rbtInativoClick
    end
    object rbtAmbos: TRadioButton
      Left = 40
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Ambos'
      Checked = True
      TabOrder = 2
      TabStop = True
      OnClick = rbtAmbosClick
    end
  end
  object pnlTerciario: TPanel
    Left = 448
    Top = 95
    Width = 471
    Height = 58
    Align = alCustom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object rbtAz: TRadioButton
      Left = 80
      Top = 24
      Width = 113
      Height = 17
      Caption = 'De A.'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = rbtAzClick
    end
    object rbtZa: TRadioButton
      Left = 288
      Top = 24
      Width = 113
      Height = 17
      Caption = 'De Z.'
      TabOrder = 1
      OnClick = rbtZaClick
    end
  end
  object pnlQuaternario: TPanel
    Left = -12
    Top = 159
    Width = 931
    Height = 74
    Align = alCustom
    TabOrder = 4
    object spPesquisar: TShape
      Left = 703
      Top = 15
      Width = 100
      Height = 32
      Brush.Color = 11699521
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object lblPesquisar: TLabel
      Left = 720
      Top = 19
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
    object spLimpar: TShape
      Left = 586
      Top = 15
      Width = 100
      Height = 32
      Brush.Color = 11699521
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object spRelatorio: TShape
      Left = 817
      Top = 15
      Width = 100
      Height = 32
      Brush.Color = 11699521
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object lblLimpar: TLabel
      Left = 614
      Top = 19
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
    object lblRelatorio: TLabel
      Left = 840
      Top = 19
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
      Left = 586
      Top = 14
      Width = 100
      Height = 32
      OnClick = btnLimparClick
    end
    object btnRelatorio: TImage
      Left = 817
      Top = 14
      Width = 100
      Height = 32
      OnClick = Image3Click
    end
    object btnPesquisar: TImage
      Left = 703
      Top = 15
      Width = 100
      Height = 32
      OnClick = btnPesquisarClick
    end
    object dtpData: TDateTimePicker
      Left = 394
      Top = 15
      Width = 186
      Height = 26
      Date = 42651.641799201390000000
      Time = 42651.641799201390000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
    object edtConFuncionario: TMaskEdit
      Left = 44
      Top = 15
      Width = 344
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = ''
      OnChange = edtConFuncionarioChange
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 550
    Width = 914
    Height = 78
    TabOrder = 5
    object Shape4: TShape
      Left = 8
      Top = 23
      Width = 145
      Height = 35
      Brush.Color = 11699521
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object lblEditar: TLabel
      Left = 26
      Top = 28
      Width = 114
      Height = 23
      Caption = 'Ver informa'#231#245'es'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      OnClick = lblEditarClick
    end
    object btnEditar: TImage
      Left = 8
      Top = 24
      Width = 145
      Height = 33
      OnClick = btnEditarClick
    end
  end
  object dsConFuncionario: TDataSource
    AutoEdit = False
    DataSet = DM.qryConsFuncionarios
    Left = 832
    Top = 416
  end
  object frxDBDatasetConFun: TfrxDBDataset
    UserName = 'frxDBDatasetConFun'
    CloseDataSource = False
    DataSource = dsConFuncionario
    BCDToCurrency = False
    Left = 712
    Top = 416
  end
  object frxReportConFun: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42663.348781967580000000
    ReportOptions.LastChange = 42663.379969641200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 576
    Top = 424
    Datasets = <
      item
        DataSet = frxDBDatasetConFun
        DataSetName = 'frxDBDatasetConFun'
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
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          Left = 287.244280000000000000
          Width = 173.858380000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'RELAT'#211'RIO:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 582.047620000000000000
        Top = 124.724490000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDatasetConFun
        DataSetName = 'frxDBDatasetConFun'
        RowCount = 0
        object frxDBDatasetConFunfunTipo: TfrxMemoView
          Left = 49.133890000000000000
          Top = 26.456710000000000000
          Width = 548.031850000000000000
          Height = 18.897650000000000000
          DataField = 'funTipo'
          DataSet = frxDBDatasetConFun
          DataSetName = 'frxDBDatasetConFun'
          Memo.UTF8W = (
            '[frxDBDatasetConFun."funTipo"]')
        end
        object frxDBDatasetConFunfunNome: TfrxMemoView
          Left = 60.472480000000000000
          Top = 64.252010000000000000
          Width = 548.031850000000000000
          Height = 18.897650000000000000
          DataField = 'funNome'
          DataSet = frxDBDatasetConFun
          DataSetName = 'frxDBDatasetConFun'
          Memo.UTF8W = (
            '[frxDBDatasetConFun."funNome"]')
        end
        object frxDBDatasetConFunfunRG: TfrxMemoView
          Left = 45.354360000000000000
          Top = 98.267780000000000000
          Width = 563.149970000000000000
          Height = 18.897650000000000000
          DataField = 'funRG'
          DataSet = frxDBDatasetConFun
          DataSetName = 'frxDBDatasetConFun'
          Memo.UTF8W = (
            '[frxDBDatasetConFun."funRG"]')
        end
        object frxDBDatasetConFunfunCPF: TfrxMemoView
          Left = 49.133890000000000000
          Top = 136.063080000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          DataField = 'funCPF'
          DataSet = frxDBDatasetConFun
          DataSetName = 'frxDBDatasetConFun'
          Memo.UTF8W = (
            '[frxDBDatasetConFun."funCPF"]')
        end
        object frxDBDatasetConFunfunPagamentoBruto: TfrxMemoView
          Left = 143.622140000000000000
          Top = 325.039580000000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          DataField = 'funPagamentoBruto'
          DataSet = frxDBDatasetConFun
          DataSetName = 'frxDBDatasetConFun'
          Memo.UTF8W = (
            '[frxDBDatasetConFun."funPagamentoBruto"]')
        end
        object frxDBDatasetConFunfunCTPS: TfrxMemoView
          Left = 56.692950000000000000
          Top = 362.834880000000000000
          Width = 544.252320000000000000
          Height = 18.897650000000000000
          DataField = 'funCTPS'
          DataSet = frxDBDatasetConFun
          DataSetName = 'frxDBDatasetConFun'
          Memo.UTF8W = (
            '[frxDBDatasetConFun."funCTPS"]')
        end
        object frxDBDatasetConFunfunCargo: TfrxMemoView
          Left = 60.472480000000000000
          Top = 551.811380000000000000
          Width = 634.961040000000000000
          Height = 18.897650000000000000
          DataField = 'funCargo'
          DataSet = frxDBDatasetConFun
          DataSetName = 'frxDBDatasetConFun'
          Memo.UTF8W = (
            '[frxDBDatasetConFun."funCargo"]')
        end
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 26.456710000000000000
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
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 64.252010000000000000
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
        object frxDBDatasetConFunfunEndereco: TfrxMemoView
          Left = 86.929190000000000000
          Top = 173.858380000000000000
          Width = 548.031850000000000000
          Height = 18.897650000000000000
          DataField = 'funEndereco'
          DataSet = frxDBDatasetConFun
          DataSetName = 'frxDBDatasetConFun'
          Memo.UTF8W = (
            '[frxDBDatasetConFun."funEndereco"]')
        end
        object frxDBDatasetConFunfunCidade1: TfrxMemoView
          Left = 71.811070000000000000
          Top = 211.653680000000000000
          Width = 532.913730000000000000
          Height = 18.897650000000000000
          DataField = 'funCidade'
          DataSet = frxDBDatasetConFun
          DataSetName = 'frxDBDatasetConFun'
          Memo.UTF8W = (
            '[frxDBDatasetConFun."funCidade"]')
        end
        object frxDBDatasetConFunfunEstado: TfrxMemoView
          Left = 68.031540000000000000
          Top = 249.448980000000000000
          Width = 532.913730000000000000
          Height = 18.897650000000000000
          DataField = 'funEstado'
          DataSet = frxDBDatasetConFun
          DataSetName = 'frxDBDatasetConFun'
          Memo.UTF8W = (
            '[frxDBDatasetConFun."funEstado"]')
        end
        object frxDBDatasetConFunfunSituacao: TfrxMemoView
          Left = 79.370130000000000000
          Top = 287.244280000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          DataField = 'funSituacao'
          DataSet = frxDBDatasetConFun
          DataSetName = 'frxDBDatasetConFun'
          Memo.UTF8W = (
            '[frxDBDatasetConFun."funSituacao"]')
        end
        object frxDBDatasetConFunfunCRECI: TfrxMemoView
          Left = 64.252010000000000000
          Top = 400.630180000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          DataField = 'funCRECI'
          DataSet = frxDBDatasetConFun
          DataSetName = 'frxDBDatasetConFun'
          Memo.UTF8W = (
            '[frxDBDatasetConFun."funCRECI"]')
        end
        object frxDBDatasetConFunfunObservacoes: TfrxMemoView
          Left = 117.165430000000000000
          Top = 438.425480000000000000
          Width = 582.047620000000000000
          Height = 18.897650000000000000
          DataField = 'funObservacoes'
          DataSet = frxDBDatasetConFun
          DataSetName = 'frxDBDatasetConFun'
          Memo.UTF8W = (
            '[frxDBDatasetConFun."funObservacoes"]')
        end
        object frxDBDatasetConFunfunDataAdmissao: TfrxMemoView
          Left = 154.960730000000000000
          Top = 476.220780000000000000
          Width = 536.693260000000000000
          Height = 18.897650000000000000
          DataField = 'funDataAdmissao'
          DataSet = frxDBDatasetConFun
          DataSetName = 'frxDBDatasetConFun'
          Memo.UTF8W = (
            '[frxDBDatasetConFun."funDataAdmissao"]')
        end
        object frxDBDatasetConFunfunDataDemissao: TfrxMemoView
          Left = 154.960730000000000000
          Top = 514.016080000000000000
          Width = 536.693260000000000000
          Height = 18.897650000000000000
          DataField = 'funDataDemissao'
          DataSet = frxDBDatasetConFun
          DataSetName = 'frxDBDatasetConFun'
          Memo.UTF8W = (
            '[frxDBDatasetConFun."funDataDemissao"]')
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 98.267780000000000000
          Width = 41.574830000000000000
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
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Top = 136.063080000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CPF:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Top = 173.858380000000000000
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
        object Memo6: TfrxMemoView
          Top = 211.653680000000000000
          Width = 71.811070000000000000
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
        object Memo7: TfrxMemoView
          Top = 249.448980000000000000
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
        object Memo8: TfrxMemoView
          Top = 287.244280000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Situa'#231#227'o:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Top = 325.039580000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Pagamento bruto:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Top = 362.834880000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CTPS:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Top = 400.630180000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CRECI:')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Top = 438.425480000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Observa'#231#245'es:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Top = 476.220780000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data de admiss'#227'o:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Top = 514.016080000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Data de demiss'#227'o:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Top = 551.811380000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cargo:')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 767.244590000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 616.063390000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[DATE]')
        end
      end
    end
  end
end
