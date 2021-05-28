object frmDesbloquear: TfrmDesbloquear
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Desbloquear Usu'#225'rio'
  ClientHeight = 392
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblIntroducao: TLabel
    Left = 8
    Top = 8
    Width = 235
    Height = 18
    Caption = 'Usu'#225'rios bloqueados no Sistema:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblDescricao: TLabel
    Left = 8
    Top = 327
    Width = 538
    Height = 54
    Caption = 
      '*Essa lista possui somente os nomes dos usu'#225'rios que foram bloqu' +
      'eados no sistema devido ao frequente erro de senha.             ' +
      '                                              Clique duas vezes ' +
      'no nome para desbloquear'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object grdBloquados: TDBGrid
    Left = 8
    Top = 40
    Width = 572
    Height = 281
    DataSource = dsBloqueados
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = grdBloquadosDblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'funNome'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funLogin'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'funCargo'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Arial'
        Title.Font.Style = []
        Width = 150
        Visible = True
      end>
  end
  object dsBloqueados: TDataSource
    AutoEdit = False
    DataSet = DM.qryConsFuncionarios
    Left = 424
    Top = 56
  end
end
