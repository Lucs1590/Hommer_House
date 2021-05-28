object frmComplementos: TfrmComplementos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Selecione o Complemento'
  ClientHeight = 443
  ClientWidth = 583
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
  object Shape5: TShape
    Left = 0
    Top = 31
    Width = 583
    Height = 412
    Align = alClient
    ExplicitLeft = 400
    ExplicitTop = 32
    ExplicitWidth = 65
    ExplicitHeight = 65
  end
  object Label1: TLabel
    Left = 8
    Top = 39
    Width = 156
    Height = 23
    Caption = 'Digite o Complemento:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 583
    Height = 31
    Align = alTop
    Brush.Color = 11545533
    ExplicitTop = 2
  end
  object Shape2: TShape
    Left = 0
    Top = 414
    Width = 583
    Height = 31
    Brush.Color = 11545533
  end
  object Shape3: TShape
    Left = 328
    Top = 63
    Width = 82
    Height = 27
    Brush.Color = 11545533
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object Shape4: TShape
    Left = 416
    Top = 63
    Width = 166
    Height = 27
    Brush.Color = 11545533
    Pen.Style = psClear
    Shape = stRoundRect
  end
  object lblPesquisar: TLabel
    Left = 341
    Top = 65
    Width = 60
    Height = 20
    Caption = 'Pesquisar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object lblAddComp: TLabel
    Left = 425
    Top = 65
    Width = 151
    Height = 20
    Caption = 'Adicionar Complementos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
  end
  object btnPesquisar: TImage
    Left = 328
    Top = 62
    Width = 82
    Height = 28
    OnClick = btnPesquisarClick
  end
  object btnAddComp: TImage
    Left = 416
    Top = 62
    Width = 166
    Height = 28
    OnClick = btnAddCompClick
  end
  object grdComplementos: TDBGrid
    Left = 7
    Top = 96
    Width = 575
    Height = 312
    DataSource = dsComplemento
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial Narrow'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Arial Narrow'
    TitleFont.Style = []
    OnDblClick = grdComplementosDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'compCodigo'
        Title.Caption = 'C'#243'digo'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'compNome'
        Title.Caption = 'Nome'
        Width = 440
        Visible = True
      end>
  end
  object edtComplemento: TEdit
    Left = 7
    Top = 63
    Width = 315
    Height = 31
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object dsComplemento: TDataSource
    AutoEdit = False
    DataSet = DM.qryComplementos
    Left = 287
    Top = 231
  end
end
