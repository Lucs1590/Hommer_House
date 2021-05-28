object frmMensagem: TfrmMensagem
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Mensagem'
  ClientHeight = 571
  ClientWidth = 926
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
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 926
    Height = 33
    Align = alTop
    Brush.Color = 13665908
    ExplicitLeft = 1
    ExplicitWidth = 936
  end
  object Shape2: TShape
    Left = 0
    Top = 538
    Width = 926
    Height = 33
    Align = alBottom
    Brush.Color = 13665908
    ExplicitTop = 539
    ExplicitWidth = 923
  end
  object btnNovaMsg: TBitBtn
    Left = 640
    Top = 504
    Width = 135
    Height = 33
    Caption = 'Enviar Mensagem'
    TabOrder = 0
    OnClick = btnNovaMsgClick
  end
  object btnExcluirMsg: TBitBtn
    Left = 781
    Top = 504
    Width = 124
    Height = 33
    Caption = 'Excluir Mensagem'
    Enabled = False
    TabOrder = 1
    OnClick = btnExcluirMsgClick
  end
  object pgcMensagem: TPageControl
    Left = -4
    Top = 35
    Width = 930
    Height = 502
    ActivePage = tbsEnviarMsg
    Align = alCustom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object tbsEntrada: TTabSheet
      Caption = 'Caixa de Entrada'
      OnShow = tbsEntradaShow
      object grdCaixadeEntrada: TDBGrid
        Left = 0
        Top = 0
        Width = 922
        Height = 467
        Align = alClient
        DataSource = dsCaixadeEntrada
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Arial Narrow'
        TitleFont.Style = []
        OnCellClick = grdCaixadeEntradaCellClick
        OnColExit = grdCaixadeEntradaColExit
        OnDblClick = grdCaixadeEntradaDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'menCodigo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'funCodigo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'menFunVisualizacao'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'menConteudo'
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'funCodigo_1'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'menTitulo'
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'funNome'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'menDataEmissao'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'menPrioridade'
            Width = 130
            Visible = True
          end>
      end
    end
    object tbsSaida: TTabSheet
      Caption = 'Caixa de Sa'#237'da'
      ImageIndex = 1
      OnShow = tbsSaidaShow
      object grdCaixadeSaida: TDBGrid
        Left = 0
        Top = 0
        Width = 922
        Height = 467
        Align = alClient
        DataSource = dsCaixadeSaida
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Arial Narrow'
        TitleFont.Style = []
        OnCellClick = grdCaixadeSaidaCellClick
        OnColExit = grdCaixadeSaidaColExit
        OnDblClick = grdCaixadeSaidaDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'menCodigo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'funCodigo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'menFunVisualizacao'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'menConteudo'
            Title.Caption = 'Conte'#250'do'
            Width = 363
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'menTitulo'
            Width = 249
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'menDataEmissao'
            Width = 162
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'menPrioridade'
            Width = 134
            Visible = True
          end>
      end
    end
    object tbsEnviarMsg: TTabSheet
      Caption = 'Enviar Nova Mensagem'
      ImageIndex = 2
      TabVisible = False
      object pnDest: TPanel
        Left = 0
        Top = 74
        Width = 922
        Height = 127
        Align = alClient
        Color = clMenuBar
        ParentBackground = False
        TabOrder = 0
        object Label4: TLabel
          Left = 19
          Top = 22
          Width = 84
          Height = 20
          Caption = 'Destinat'#225'rio(s)'
        end
        object lcbbDestinatario: TDBLookupComboBox
          Left = 19
          Top = 48
          Width = 417
          Height = 28
          DataField = 'funCodigo'
          DataSource = DSMensagem
          KeyField = 'funCodigo'
          ListField = 'funNome'
          ListSource = DSDestinatarios
          TabOrder = 0
        end
        object BitBtn1: TBitBtn
          Left = 455
          Top = 48
          Width = 34
          Height = 26
          Hint = 'Confirmar Destinat'#225'rio/Adicionar mais um Destinat'#225'rio'
          Caption = '+'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = BitBtn1Click
        end
        object listDest: TListBox
          Left = 525
          Top = 24
          Width = 340
          Height = 73
          ItemHeight = 20
          TabOrder = 2
        end
        object btnRemoverDest: TButton
          Left = 746
          Top = 103
          Width = 111
          Height = 25
          Caption = 'Remover'
          TabOrder = 3
          OnClick = btnRemoverDestClick
        end
      end
      object pnCabecalho: TPanel
        Left = 0
        Top = 0
        Width = 922
        Height = 74
        Align = alTop
        Color = 16316664
        ParentBackground = False
        TabOrder = 1
        object Label1: TLabel
          Left = 19
          Top = 16
          Width = 31
          Height = 20
          Caption = 'T'#237'tulo'
          FocusControl = edtTitulo
        end
        object Label3: TLabel
          Left = 528
          Top = 16
          Width = 62
          Height = 20
          Caption = 'Prioridade'
        end
        object edtTitulo: TDBEdit
          Left = 19
          Top = 40
          Width = 417
          Height = 28
          DataField = 'menTitulo'
          DataSource = DSMensagem
          TabOrder = 0
        end
        object cbbPrioridade: TDBComboBox
          Left = 528
          Top = 40
          Width = 337
          Height = 28
          DataField = 'menPrioridade'
          DataSource = DSMensagem
          Items.Strings = (
            'Urgente'
            'Normal')
          TabOrder = 1
        end
      end
      object pnConteudo: TPanel
        Left = 0
        Top = 201
        Width = 922
        Height = 266
        Align = alBottom
        Color = 16316664
        ParentBackground = False
        TabOrder = 2
        object Label2: TLabel
          Left = 19
          Top = 1
          Width = 58
          Height = 20
          Caption = 'Conte'#250'do'
        end
        object Label5: TLabel
          Left = 19
          Top = 231
          Width = 152
          Height = 15
          Caption = '*M'#225'ximo de 700 Caracteres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object btnEnviar: TBitBtn
          Left = 588
          Top = 231
          Width = 137
          Height = 25
          Caption = 'Enviar'
          Enabled = False
          TabOrder = 0
          OnClick = btnEnviarClick
        end
        object btnCancelar: TBitBtn
          Left = 731
          Top = 231
          Width = 134
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 1
          OnClick = btnCancelarClick
        end
        object mmoConteudo: TDBMemo
          Left = 19
          Top = 25
          Width = 846
          Height = 200
          DataField = 'menConteudo'
          DataSource = DSMensagem
          MaxLength = 700
          TabOrder = 2
        end
      end
    end
  end
  object BitBtn2: TBitBtn
    Left = 865
    Top = 33
    Width = 53
    Height = 25
    TabOrder = 3
  end
  object DSMensagem: TDataSource
    DataSet = DM.qryMensagens
    Left = 448
    Top = 272
  end
  object DSMenFun: TDataSource
    DataSet = DM.qryMensagensFunc
    Left = 520
    Top = 320
  end
  object DSDestinatarios: TDataSource
    DataSet = DM.qryConsFuncionarios
    Left = 264
    Top = 344
  end
  object dsCaixadeSaida: TDataSource
    DataSet = DM.qryCaixadeSaida
    Left = 352
    Top = 320
  end
  object dsConsfun: TDataSource
    DataSet = DM.qryConsFun
    Left = 472
    Top = 344
  end
  object DsDest: TDataSource
    DataSet = DM.qryDest
    Left = 644
    Top = 381
  end
  object dsCaixadeEntrada: TDataSource
    AutoEdit = False
    DataSet = DM.qryConsMensagens
    Left = 328
    Top = 336
  end
  object tmrAtualizar: TTimer
    Interval = 30000
    OnTimer = tmrAtualizarTimer
    Left = 440
    Top = 336
  end
end
