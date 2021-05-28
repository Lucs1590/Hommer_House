object frmContatos: TfrmContatos
  Left = 0
  Top = 0
  Caption = 'Contatos'
  ClientHeight = 404
  ClientWidth = 498
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial Narrow'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 498
    Height = 404
    Align = alClient
    ExplicitLeft = 24
    ExplicitTop = 24
    ExplicitWidth = 65
    ExplicitHeight = 65
  end
  object Contatos: TPageControl
    Left = 0
    Top = 0
    Width = 498
    Height = 404
    ActivePage = Telefones
    Align = alClient
    TabOrder = 0
    ExplicitTop = 24
    ExplicitWidth = 627
    ExplicitHeight = 380
    object Telefones: TTabSheet
      Caption = 'Telefones'
      ExplicitTop = 24
      ExplicitWidth = 464
      ExplicitHeight = 235
      object DBGrid1: TDBGrid
        Left = 0
        Top = 41
        Width = 490
        Height = 328
        Align = alClient
        DataSource = dsConsTelefones2
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
            FieldName = 'telTipo'
            Title.Caption = 'Tipo'
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telDDD'
            Title.Caption = 'DDD'
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telNumero'
            Title.Caption = 'N'#250'mero'
            Width = 166
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telOperadora'
            Title.Caption = 'Operadora'
            Width = 113
            Visible = True
          end>
      end
      object panTel: TPanel
        Left = 0
        Top = 0
        Width = 490
        Height = 41
        Align = alTop
        TabOrder = 1
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 619
      end
    end
    object Emails: TTabSheet
      Caption = 'Emails'
      ImageIndex = 1
      ExplicitWidth = 496
      ExplicitHeight = 245
      object DBGrid2: TDBGrid
        Left = 0
        Top = 41
        Width = 490
        Height = 328
        Align = alClient
        DataSource = dsConsEmails2
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
            FieldName = 'emaEmail'
            Title.Caption = 'E-mail'
            Visible = True
          end>
      end
      object panEmail: TPanel
        Left = 0
        Top = 0
        Width = 490
        Height = 41
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 496
      end
    end
  end
  object dsConsTelefones2: TDataSource
    AutoEdit = False
    DataSet = DM.qryConsTelefones2
    Left = 228
    Top = 128
  end
  object dsConsEmails2: TDataSource
    AutoEdit = False
    DataSet = DM.qryConsEmails2
    Left = 340
    Top = 112
  end
end
