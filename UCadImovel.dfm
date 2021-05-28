object frmCadImovel: TfrmCadImovel
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastrar Im'#243'vel'
  ClientHeight = 663
  ClientWidth = 901
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 901
    Height = 34
    Align = alTop
    Brush.Color = 11545533
    Pen.Style = psClear
  end
  object Shape2: TShape
    Left = 0
    Top = 629
    Width = 901
    Height = 65
    Brush.Color = 11545533
  end
  object pgcImovel: TPageControl
    Left = 0
    Top = 8
    Width = 901
    Height = 641
    ActivePage = tsDadosBasicos
    Align = alCustom
    TabOrder = 0
    object tsDadosBasicos: TTabSheet
      Caption = 'Dados b'#225'sicos'
      object spUlt: TShape
        Left = 493
        Top = 554
        Width = 73
        Height = 49
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stCircle
      end
      object spProx: TShape
        Left = 425
        Top = 554
        Width = 73
        Height = 49
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stCircle
      end
      object spAnt: TShape
        Left = 355
        Top = 554
        Width = 73
        Height = 49
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stCircle
      end
      object spPrim: TShape
        Left = 281
        Top = 554
        Width = 73
        Height = 49
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stCircle
      end
      object spSal: TShape
        Left = 623
        Top = 519
        Width = 100
        Height = 33
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object spCan: TShape
        Left = 501
        Top = 519
        Width = 100
        Height = 33
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object spRem: TShape
        Left = 382
        Top = 519
        Width = 100
        Height = 33
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object spEdt: TShape
        Left = 263
        Top = 519
        Width = 100
        Height = 33
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object lblEditar: TLabel
        Left = 289
        Top = 525
        Width = 45
        Height = 19
        Caption = 'Editar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnEditarImo: TImage
        Left = 262
        Top = 519
        Width = 100
        Height = 33
        OnClick = btnEditarImoClick
      end
      object spAdd: TShape
        Left = 143
        Top = 519
        Width = 100
        Height = 33
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object btnAnt: TImage
        Left = 368
        Top = 556
        Width = 41
        Height = 44
        Hint = 'Registro Anterior'
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000DD700000DD70142289B780000
          000774494D4507E00B1411091E44120F96000000DA4944415478DAB5D53D0EC2
          300C05E0977BD0A450711B6EC182C4C05D5840886B30227E2E563C202834B19F
          83E854557A9F9C34B103E8A76FB1478755380FBF0647FC8A242FA7B0A8005E71
          6013B66E6010DF611D7A27A0C509408F9B801537003BAE024C5C01B8781160E3
          05808F67014F3C03F8E223A08FB87BE263E088A527FE0720E286F68725089164
          131D44EE37BA88FC414AB860CA11A5A31CA50A8A285F2692D0AE3345E80D25CA
          5ECC74C26A698D54A11276533508A6AD37B290AE447083652255140876B4BD89
          9AD1F641D40DD72771C0FC7BBC3F005EBD7A2110361FFB000000257445587464
          6174653A63726561746500323031362D31312D32305431373A30393A33302B30
          313A3030446B82F40000002574455874646174653A6D6F646966790032303136
          2D31312D32305431373A30393A33302B30313A303035363A4800000019744558
          74536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A0000
          000049454E44AE426082}
        OnClick = btnAntClick
      end
      object btnPrim: TImage
        Left = 295
        Top = 556
        Width = 41
        Height = 44
        Hint = 'Primeiro Registro'
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000DD700000DD70142289B780000
          000774494D4507E00B1411051D71AE11200000016A4944415478DAAD954D4A03
          4110855FF99733B911DC0A2124C11014838A3F28FEAD3D4620886250548C1AA3
          01411004971EC043E80D346A2CA552CC4CCF4CC7456556357CEF3D6ABA7BAA09
          7D1E9EC52EDEB0432F1EF68A2DEA63DF44558A2695BCECC21BC0EBA869D9A6BC
          97DD780278157BE8B10E26E9D9C3DE31911AC04B3850C927F274EF611FC8D263
          4A002FA0AE922F14E9CEC33AC8D1039008E00A8E30A4F612B53D2CE82C16F0B7
          39272AF946995A1E16E9CC09E032CE302C65173374E5614E6791009E4623B057
          E8DCB1872CD65910C0055C6244CA1FCCD3A9630F59A2330DE01C9A18ED9558A4
          63C71EB22EE6A8E1AE9A047016D71853FB0A1D3AF690253AD3009EC26D605FA3
          7DC71E65B1CE3480C7F1848CBE6D50CDB1878CB14C75202DA08582D6DB547561
          C0129D0D34C0FA09E6451CC0368ACC769044663BCA22B3FD4C22B3FDCE22B30D
          1491D9469AC86C435564B6B12E32DBC52232DBD52632DBE5AA1BF7EFF5FE0BD0
          7FEF7D1378913F0000002574455874646174653A63726561746500323031362D
          31312D32305431373A30353A32392B30313A3030076527370000002574455874
          646174653A6D6F6469667900323031362D31312D32305431373A30353A32392B
          30313A303076389F8B0000001974455874536F667477617265007777772E696E
          6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
        OnClick = btnPrimClick
      end
      object btnProx: TImage
        Left = 443
        Top = 556
        Width = 41
        Height = 44
        Hint = 'Pr'#243'ximo Registro'
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000DD700000DD70142289B780000
          000774494D4507E00B141109032714634F000000B64944415478DABDD53D0AC3
          300C05E0F74ED6988EBD460964C95D3A14BAF416B94DE94F7EEED19A6E122195
          78502F361E3E64D9960833DE7B5C7043CB05C141070C38D4E98E264A78A0C7E9
          BB08131E20CEE83204FD86210AE7346088478D624E033982EBDB86289CD28021
          9E358A290D44890D20466C028E281CD380215E358A310DFC2202802376361721
          C010571EFF0F88471093285EA3F890C4A72C7E26F13B8B05452C69625115CBBA
          DC58F4D62637D7747BFF0011377E216AB7B8790000002574455874646174653A
          63726561746500323031362D31312D32305431373A30393A30332B30313A3030
          FB0C9F8A0000002574455874646174653A6D6F6469667900323031362D31312D
          32305431373A30393A30332B30313A30308A5127360000001974455874536F66
          7477617265007777772E696E6B73636170652E6F72679BEE3C1A000000004945
          4E44AE426082}
        OnClick = btnProxClick
      end
      object btnUlt: TImage
        Left = 512
        Top = 556
        Width = 41
        Height = 44
        Hint = #218'ltimo Registro'
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000DD700000DD70142289B780000
          000774494D4507E00B141107256B9ACB3C000001584944415478DAB595C94A03
          411445CF73F60FF41704776E5C0A822008D11835A2A2441409E4335C3BA138A0
          125143240921E05670E337194DDA56CB4A5E77F5AAB0560FCEAB73E9AE498231
          8E18655FEE898D609C0346DCEC6F48F0C8CA4F5590E398A04C2689750415164C
          9D97D388A0462A89750413BC32FCDBCF9E9C2BC1242F0CBA9915846C9A0643A6
          6D47AE9462961A036E6605219BA16E937272A3147354E877332B50496DB6A4A8
          1429CA46116356A092DA6CE8850BD294E873337126B5589392522CF140AF8B49
          42528BAC3C29B64AD12ABA9812A8A44F96A5AAD83AB7F444594410B665B9338A
          0F3252576C936B33C3B29840253559948662DB5C98398639042AA9C9BC3C2BB6
          CB5937730AC2B61C97A6ED9D2979532CCF8929BF1909A32BA92AE9082B7068CA
          EA7F093C3FC1F3277A2EA3E746F2DCCA9E87C9F3387B5E289E579AE7A5EA79AD
          7B3F2CFE4F9BF7E3EAF9BC7F010FF4EDE9855128AA0000002574455874646174
          653A63726561746500323031362D31312D32305431373A30373A33372B30313A
          30309F058CC90000002574455874646174653A6D6F6469667900323031362D31
          312D32305431373A30373A33372B30313A3030EE583475000000197445587453
          6F667477617265007777772E696E6B73636170652E6F72679BEE3C1A00000000
          49454E44AE426082}
        OnClick = btnUltClick
      end
      object Label4: TLabel
        Left = 40
        Top = 30
        Width = 60
        Height = 46
        Caption = 'NOME B'#193'SICO:'
        FocusControl = edtNome
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object Label5: TLabel
        Left = 156
        Top = 527
        Width = 73
        Height = 19
        Caption = 'Adicionar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 400
        Top = 525
        Width = 69
        Height = 19
        Caption = 'Remover'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 517
        Top = 525
        Width = 68
        Height = 19
        Caption = 'Cancelar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblAreaPrivativa: TLabel
        Left = 38
        Top = 467
        Width = 127
        Height = 23
        Caption = 'AREA PRIVATIVA:'
        FocusControl = edtAreaPrivativa
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblAreaTotal: TLabel
        Left = 38
        Top = 423
        Width = 98
        Height = 23
        Caption = 'AREA TOTAL:'
        FocusControl = edtAreaTotal
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblBairro: TLabel
        Left = 38
        Top = 225
        Width = 61
        Height = 23
        Caption = 'BAIRRO:'
        FocusControl = edtBairro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblCEP: TLabel
        Left = 38
        Top = 141
        Width = 35
        Height = 23
        Caption = 'CEP:'
        FocusControl = edtCEP
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblCidade: TLabel
        Left = 38
        Top = 346
        Width = 60
        Height = 23
        Caption = 'CIDADE:'
        FocusControl = edtCidade
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblCodImovel: TLabel
        Left = 38
        Top = 5
        Width = 154
        Height = 23
        Caption = 'C'#211'DIGO DO IM'#211'VEL:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblComplemento: TLabel
        Left = 38
        Top = 304
        Width = 124
        Height = 23
        Caption = 'COMPLEMENTO:'
        FocusControl = edtComplemento
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblDtRegistro: TLabel
        Left = 376
        Top = 81
        Width = 153
        Height = 23
        Caption = 'DATA DO REGISTRO:'
        FocusControl = edtDataRegistro
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblEndereco: TLabel
        Left = 38
        Top = 175
        Width = 90
        Height = 23
        Caption = 'ENDERE'#199'O:'
        FocusControl = edtEndereco
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblEstado: TLabel
        Left = 38
        Top = 387
        Width = 66
        Height = 23
        Caption = 'ESTADO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblEstadoImovel: TLabel
        Left = 376
        Top = 265
        Width = 155
        Height = 23
        Caption = 'ESTADO DO IM'#211'VEL:'
        FocusControl = edtEstadoImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object lblLote: TLabel
        Left = 376
        Top = 187
        Width = 44
        Height = 23
        Caption = 'LOTE:'
        FocusControl = edtLote
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblNegociacao: TLabel
        Left = 376
        Top = 116
        Width = 106
        Height = 23
        Caption = 'NEGOCIA'#199#195'O:'
        FocusControl = edtNegociacao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblNumero: TLabel
        Left = 38
        Top = 268
        Width = 72
        Height = 23
        Caption = 'N'#218'MERO:'
        FocusControl = edtNumero
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblObservacao: TLabel
        Left = 376
        Top = 291
        Width = 111
        Height = 23
        Caption = 'OBSERVA'#199#195'O:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblOrientacao: TLabel
        Left = 376
        Top = 153
        Width = 103
        Height = 23
        Caption = 'ORIENTA'#199#195'O:'
        FocusControl = edtOrientacao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblQuadra: TLabel
        Left = 374
        Top = 226
        Width = 69
        Height = 23
        Caption = 'QUADRA:'
        FocusControl = edtQuadra
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblTipo: TLabel
        Left = 38
        Top = 82
        Width = 65
        Height = 46
        Caption = 'TIPO DO IM'#211'VEL:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        WordWrap = True
      end
      object lblValorIptu: TLabel
        Left = 376
        Top = 37
        Width = 94
        Height = 23
        Caption = 'VALOR IPTU:'
        FocusControl = edtValorIptu
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object Salva: TLabel
        Left = 650
        Top = 525
        Width = 48
        Height = 19
        Caption = 'Salvar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txtCodigo: TDBText
        Left = 230
        Top = 8
        Width = 113
        Height = 24
        DataField = 'imoCodigo'
        DataSource = dsCadImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object btnAdicionarImo: TImage
        Left = 143
        Top = 518
        Width = 100
        Height = 33
        OnClick = btnAdicionarImoClick
      end
      object btnSalvarImo: TImage
        Left = 623
        Top = 519
        Width = 100
        Height = 33
        OnClick = btnSalvarImoClick
      end
      object btnCancelarImo: TImage
        Left = 500
        Top = 518
        Width = 100
        Height = 33
        OnClick = btnCancelarImoClick
      end
      object btnRemoverImo: TImage
        Left = 383
        Top = 519
        Width = 98
        Height = 33
        OnClick = btnRemoverImoClick
      end
      object edtCEP: TDBEdit
        Left = 143
        Top = 134
        Width = 200
        Height = 26
        DataField = 'imoCEP'
        DataSource = dsCadImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnExit = edtCEPExit
      end
      object edtDataRegistro: TDBEdit
        Left = 555
        Top = 77
        Width = 238
        Height = 26
        DataField = 'imoDataRegistro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 21
      end
      object cbbEstado: TDBComboBox
        Left = 270
        Top = 383
        Width = 73
        Height = 26
        DataField = 'imoEstado'
        DataSource = dsCadImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Items.Strings = (
          'AC'#9' '
          'AL'#9' '
          'AP'#9' '
          'AM'#9' '
          'BA'#9' '
          'CE'#9' '
          'DF'#9' '
          'ES'#9' '
          'GO'#9' '
          'MA'#9' '
          'MT'#9' '
          'MS'#9' '
          'MG'#9' '
          'PA'#9' '
          'PB'#9' '
          'PR'#9' '
          'PE'#9' '
          'PI'#9' '
          'RJ'#9' '
          'RN'#9' '
          'RS'#9' '
          'RO'#9' '
          'RR'#9' '
          'SC'#9' '
          'SP'#9' '
          'SE'#9' '
          'TO')
        ParentFont = False
        TabOrder = 8
      end
      object cbbTpImovel: TDBLookupComboBox
        Left = 143
        Top = 89
        Width = 200
        Height = 26
        DataField = 'tpImoCodigo'
        DataSource = dsCadImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        KeyField = 'tpImoCodigo'
        ListField = 'tpImoNome'
        ListSource = dsTpImovel
        ParentFont = False
        TabOrder = 1
      end
      object checkBOcupacao: TDBCheckBox
        Left = 603
        Top = 471
        Width = 190
        Height = 17
        Caption = 'O IM'#211'VEL EST'#193' OCUPADO'
        DataField = 'imoOcupacao'
        DataSource = dsCadImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
        TabOrder = 19
      end
      object dtpDtRegistro: TDateTimePicker
        Left = 555
        Top = 77
        Width = 238
        Height = 26
        Date = 42678.447765983790000000
        Time = 42678.447765983790000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
        OnChange = dtpDtRegistroChange
      end
      object edtAreaPrivativa: TDBEdit
        Left = 190
        Top = 459
        Width = 153
        Height = 26
        DataField = 'imoAreaPrivativa'
        DataSource = dsCadImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
      end
      object edtAreaTotal: TDBEdit
        Left = 190
        Top = 420
        Width = 153
        Height = 26
        DataField = 'imoAreaTotal'
        DataSource = dsCadImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object edtBairro: TDBEdit
        Left = 143
        Top = 222
        Width = 200
        Height = 26
        DataField = 'imoBairro'
        DataSource = dsCadImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object edtCidade: TDBEdit
        Left = 143
        Top = 343
        Width = 200
        Height = 26
        DataField = 'imoCidade'
        DataSource = dsCadImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object edtComplemento: TDBEdit
        Left = 169
        Top = 304
        Width = 174
        Height = 26
        DataField = 'imoComplemento'
        DataSource = dsCadImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object edtEndereco: TDBEdit
        Left = 143
        Top = 178
        Width = 200
        Height = 26
        DataField = 'imoEndereco'
        DataSource = dsCadImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object edtEstadoImovel: TDBEdit
        Left = 555
        Top = 260
        Width = 238
        Height = 26
        DataField = 'imoEstadoDoImovel'
        DataSource = dsCadImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 17
      end
      object edtLote: TDBEdit
        Left = 555
        Top = 184
        Width = 238
        Height = 26
        DataField = 'imoLote'
        DataSource = dsCadImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
      end
      object edtNegociacao: TDBEdit
        Left = 555
        Top = 113
        Width = 238
        Height = 26
        DataField = 'imoNegociacao'
        DataSource = dsCadImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
      object edtNome: TDBEdit
        Left = 144
        Top = 38
        Width = 199
        Height = 26
        DataField = 'imoNome'
        DataSource = dsCadImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edtNumero: TDBEdit
        Left = 143
        Top = 262
        Width = 200
        Height = 26
        DataField = 'imoNumero'
        DataSource = dsCadImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object edtOrientacao: TDBEdit
        Left = 555
        Top = 150
        Width = 238
        Height = 26
        DataField = 'imoOrientacao'
        DataSource = dsCadImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
      object edtQuadra: TDBEdit
        Left = 555
        Top = 223
        Width = 236
        Height = 26
        DataField = 'imoQuadra'
        DataSource = dsCadImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 16
      end
      object edtValorIptu: TDBEdit
        Left = 555
        Top = 38
        Width = 238
        Height = 26
        DataField = 'imoValorIPTU'
        DataSource = dsCadImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
      end
      object memoObservacao: TDBMemo
        Left = 376
        Top = 316
        Width = 415
        Height = 149
        DataField = 'imoObservacao'
        DataSource = dsCadImovel
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 18
      end
      object btnInternet: TBitBtn
        Left = 310
        Top = 134
        Width = 33
        Height = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 20
        OnClick = btnInternetClick
      end
    end
    object tsFotos: TTabSheet
      Caption = 'Fotos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      TabVisible = False
      OnShow = tsFotosShow
      object spPrimFoto: TShape
        Left = 392
        Top = 480
        Width = 65
        Height = 65
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stCircle
      end
      object spAntFoto: TShape
        Left = 520
        Top = 480
        Width = 65
        Height = 65
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stCircle
      end
      object spProxFoto: TShape
        Left = 638
        Top = 481
        Width = 65
        Height = 65
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stCircle
      end
      object spUltFoto: TShape
        Left = 760
        Top = 480
        Width = 65
        Height = 65
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stCircle
      end
      object spAddFoto: TShape
        Left = 48
        Top = 207
        Width = 89
        Height = 34
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object spEdtFoto: TShape
        Left = 143
        Top = 207
        Width = 90
        Height = 34
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object spRemoverFoto: TShape
        Left = 239
        Top = 207
        Width = 89
        Height = 34
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object spCanFoto: TShape
        Left = 99
        Top = 247
        Width = 95
        Height = 34
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object spSalvarFoto: TShape
        Left = 200
        Top = 247
        Width = 97
        Height = 34
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object btnAntFoto: TImage
        Left = 517
        Top = 480
        Width = 65
        Height = 65
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000DD700000DD70142289B780000
          000774494D4507E00B1411091E44120F96000000DA4944415478DAB5D53D0EC2
          300C05E0977BD0A450711B6EC182C4C05D5840886B30227E2E563C202834B19F
          83E854557A9F9C34B103E8A76FB1478755380FBF0647FC8A242FA7B0A8005E71
          6013B66E6010DF611D7A27A0C509408F9B801537003BAE024C5C01B8781160E3
          05808F67014F3C03F8E223A08FB87BE263E088A527FE0720E286F68725089164
          131D44EE37BA88FC414AB860CA11A5A31CA50A8A285F2692D0AE3345E80D25CA
          5ECC74C26A698D54A11276533508A6AD37B290AE447083652255140876B4BD89
          9AD1F641D40DD72771C0FC7BBC3F005EBD7A2110361FFB000000257445587464
          6174653A63726561746500323031362D31312D32305431373A30393A33302B30
          313A3030446B82F40000002574455874646174653A6D6F646966790032303136
          2D31312D32305431373A30393A33302B30313A303035363A4800000019744558
          74536F667477617265007777772E696E6B73636170652E6F72679BEE3C1A0000
          000049454E44AE426082}
        OnClick = btnAntFotoClick
      end
      object btnPrimFoto: TImage
        Left = 390
        Top = 480
        Width = 65
        Height = 65
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000DD700000DD70142289B780000
          000774494D4507E00B1411051D71AE11200000016A4944415478DAAD954D4A03
          4110855FF99733B911DC0A2124C11014838A3F28FEAD3D4620886250548C1AA3
          01411004971EC043E80D346A2CA552CC4CCF4CC7456556357CEF3D6ABA7BAA09
          7D1E9EC52EDEB0432F1EF68A2DEA63DF44558A2695BCECC21BC0EBA869D9A6BC
          97DD780278157BE8B10E26E9D9C3DE31911AC04B3850C927F274EF611FC8D263
          4A002FA0AE922F14E9CEC33AC8D1039008E00A8E30A4F612B53D2CE82C16F0B7
          39272AF946995A1E16E9CC09E032CE302C65173374E5614E6791009E4623B057
          E8DCB1872CD65910C0055C6244CA1FCCD3A9630F59A2330DE01C9A18ED9558A4
          63C71EB22EE6A8E1AE9A047016D71853FB0A1D3AF690253AD3009EC26D605FA3
          7DC71E65B1CE3480C7F1848CBE6D50CDB1878CB14C75202DA08582D6DB547561
          C0129D0D34C0FA09E6451CC0368ACC769044663BCA22B3FD4C22B3FDCE22B30D
          1491D9469AC86C435564B6B12E32DBC52232DBD52632DBE5AA1BF7EFF5FE0BD0
          7FEF7D1378913F0000002574455874646174653A63726561746500323031362D
          31312D32305431373A30353A32392B30313A3030076527370000002574455874
          646174653A6D6F6469667900323031362D31312D32305431373A30353A32392B
          30313A303076389F8B0000001974455874536F667477617265007777772E696E
          6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
        OnClick = btnPrimFotoClick
      end
      object btnProxFoto: TImage
        Left = 640
        Top = 480
        Width = 65
        Height = 65
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000DD700000DD70142289B780000
          000774494D4507E00B141109032714634F000000B64944415478DABDD53D0AC3
          300C05E0F74ED6988EBD460964C95D3A14BAF416B94DE94F7EEED19A6E122195
          78502F361E3E64D9960833DE7B5C7043CB05C141070C38D4E98E264A78A0C7E9
          BB08131E20CEE83204FD86210AE7346088478D624E033982EBDB86289CD28021
          9E358A290D44890D20466C028E281CD380215E358A310DFC2202802376361721
          C010571EFF0F88471093285EA3F890C4A72C7E26F13B8B05452C69625115CBBA
          DC58F4D62637D7747BFF0011377E216AB7B8790000002574455874646174653A
          63726561746500323031362D31312D32305431373A30393A30332B30313A3030
          FB0C9F8A0000002574455874646174653A6D6F6469667900323031362D31312D
          32305431373A30393A30332B30313A30308A5127360000001974455874536F66
          7477617265007777772E696E6B73636170652E6F72679BEE3C1A000000004945
          4E44AE426082}
        OnClick = btnProxFotoClick
      end
      object btnUltFoto: TImage
        Left = 762
        Top = 480
        Width = 65
        Height = 65
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000DD700000DD70142289B780000
          000774494D4507E00B141107256B9ACB3C000001584944415478DAB595C94A03
          411445CF73F60FF41704776E5C0A822008D11835A2A2441409E4335C3BA138A0
          125143240921E05670E337194DDA56CB4A5E77F5AAB0560FCEAB73E9AE498231
          8E18655FEE898D609C0346DCEC6F48F0C8CA4F5590E398A04C2689750415164C
          9D97D388A0462A89750413BC32FCDBCF9E9C2BC1242F0CBA9915846C9A0643A6
          6D47AE9462961A036E6605219BA16E937272A3147354E877332B50496DB6A4A8
          1429CA46116356A092DA6CE8850BD294E873337126B5589392522CF140AF8B49
          42528BAC3C29B64AD12ABA9812A8A44F96A5AAD83AB7F444594410B665B9338A
          0F3252576C936B33C3B29840253559948662DB5C98398639042AA9C9BC3C2BB6
          CB5937730AC2B61C97A6ED9D2979532CCF8929BF1909A32BA92AE9082B7068CA
          EA7F093C3FC1F3277A2EA3E746F2DCCA9E87C9F3387B5E289E579AE7A5EA79AD
          7B3F2CFE4F9BF7E3EAF9BC7F010FF4EDE9855128AA0000002574455874646174
          653A63726561746500323031362D31312D32305431373A30373A33372B30313A
          30309F058CC90000002574455874646174653A6D6F6469667900323031362D31
          312D32305431373A30373A33372B30313A3030EE583475000000197445587453
          6F667477617265007777772E696E6B73636170652E6F72679BEE3C1A00000000
          49454E44AE426082}
        OnClick = btnUltFotoClick
      end
      object imgFoto: TImage
        Left = 344
        Top = 15
        Width = 536
        Height = 447
        Stretch = True
      end
      object lblAdd: TLabel
        Left = 60
        Top = 212
        Width = 65
        Height = 23
        Alignment = taCenter
        Caption = 'Adicionar'
      end
      object lblCaminho: TLabel
        Left = 48
        Top = 66
        Width = 63
        Height = 23
        Caption = 'Caminho'
        FocusControl = edtCaminho
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblCancFoto: TLabel
        Left = 114
        Top = 252
        Width = 63
        Height = 23
        Alignment = taCenter
        Caption = 'Cancelar'
      end
      object lblDescricao: TLabel
        Left = 48
        Top = 122
        Width = 70
        Height = 23
        Caption = 'Descri'#231#227'o'
        FocusControl = edtDescricao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblEdtFoto: TLabel
        Left = 165
        Top = 212
        Width = 39
        Height = 23
        Alignment = taCenter
        Caption = 'Editar'
      end
      object lblfCodFoto: TLabel
        Left = 48
        Top = 9
        Width = 120
        Height = 23
        Caption = 'C'#243'digo do Im'#243'vel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblRemoverFoto: TLabel
        Left = 251
        Top = 211
        Width = 63
        Height = 23
        Alignment = taCenter
        Caption = 'Remover'
      end
      object lblSalvFoto: TLabel
        Left = 225
        Top = 252
        Width = 43
        Height = 23
        Alignment = taCenter
        Caption = 'Salvar'
      end
      object txtCodigoFoto: TDBText
        Left = 48
        Top = 40
        Width = 265
        Height = 26
        DataField = 'imoCodigo'
        DataSource = dsFotos
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object btnRemoverFoto: TImage
        Left = 239
        Top = 207
        Width = 89
        Height = 34
        OnClick = btnRemoverFotoClick
      end
      object btnSalvarFoto: TImage
        Left = 200
        Top = 247
        Width = 97
        Height = 34
        OnClick = btnSalvarFotoClick
      end
      object btnEditarFotos: TImage
        Left = 143
        Top = 207
        Width = 89
        Height = 34
        OnClick = btnEditarFotosClick
      end
      object btnAdicionarFoto: TImage
        Left = 48
        Top = 207
        Width = 89
        Height = 34
        OnClick = btnAdicionarFotoClick
      end
      object btnCancelarFoto: TImage
        Left = 99
        Top = 247
        Width = 95
        Height = 34
        OnClick = btnCancelarFotoClick
      end
      object btnCarregar: TBitBtn
        Left = 299
        Top = 96
        Width = 29
        Height = 25
        Caption = '+'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btnCarregarClick
      end
      object edtCaminho: TDBEdit
        Left = 48
        Top = 95
        Width = 245
        Height = 26
        DataField = 'fotoCaminho'
        DataSource = dsFotos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtDescricao: TDBEdit
        Left = 48
        Top = 152
        Width = 280
        Height = 26
        DataField = 'fotoDescricao'
        DataSource = dsFotos
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object tsPreco: TTabSheet
      Caption = 'Pre'#231'o'
      ImageIndex = 2
      TabVisible = False
      object spSalvarPreco: TShape
        Left = 185
        Top = 271
        Width = 95
        Height = 33
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object spCanPreco: TShape
        Left = 72
        Top = 271
        Width = 93
        Height = 33
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object spRemoverPreco: TShape
        Left = 232
        Top = 232
        Width = 89
        Height = 33
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object spEdtPreco: TShape
        Left = 130
        Top = 232
        Width = 88
        Height = 33
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object spAddPreco: TShape
        Left = 32
        Top = 232
        Width = 88
        Height = 33
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object lblAddPreco: TLabel
        Left = 39
        Top = 239
        Width = 73
        Height = 19
        Caption = 'Adicionar'
      end
      object lblCanPreco: TLabel
        Left = 85
        Top = 278
        Width = 68
        Height = 19
        Caption = 'Cancelar'
      end
      object lblCodImoPre: TLabel
        Left = 32
        Top = 20
        Width = 120
        Height = 23
        Caption = 'C'#243'digo de Im'#243'vel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblEdtPreco: TLabel
        Left = 153
        Top = 238
        Width = 45
        Height = 19
        Caption = 'Editar'
      end
      object lblPreco: TLabel
        Left = 32
        Top = 77
        Width = 41
        Height = 23
        Caption = 'Pre'#231'o'
        FocusControl = edtValor
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object lblRemPreco: TLabel
        Left = 243
        Top = 238
        Width = 69
        Height = 19
        Caption = 'Remover'
      end
      object lblSalvarFoto: TLabel
        Left = 209
        Top = 278
        Width = 48
        Height = 19
        Caption = 'Salvar'
      end
      object lblTpContrato: TLabel
        Left = 32
        Top = 140
        Width = 114
        Height = 23
        Caption = 'Tipo de Contrato'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = []
        ParentFont = False
      end
      object txtCodigoPreco: TDBText
        Left = 32
        Top = 49
        Width = 297
        Height = 26
        DataField = 'imoCodigo'
        DataSource = dsPreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object btnAdicionarPreco: TImage
        Left = 32
        Top = 232
        Width = 88
        Height = 33
        OnClick = btnAdicionarPrecoClick
      end
      object btnEditarPreco: TImage
        Left = 129
        Top = 231
        Width = 88
        Height = 34
        OnClick = btnEditarPrecoClick
      end
      object btnRemoverPreco: TImage
        Left = 232
        Top = 231
        Width = 89
        Height = 34
        OnClick = btnRemoverPrecoClick
      end
      object btnCancelarPreco: TImage
        Left = 73
        Top = 271
        Width = 92
        Height = 33
        OnClick = btnCancelarPrecoClick
      end
      object btnSalvarPreco: TImage
        Left = 185
        Top = 271
        Width = 95
        Height = 33
        OnClick = btnSalvarPrecoClick
      end
      object cbbTpContrato: TDBComboBox
        Left = 32
        Top = 169
        Width = 297
        Height = 26
        DataField = 'preTpContrato'
        DataSource = dsPreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Items.Strings = (
          'Loca'#231#227'o'
          'Venda')
        ParentFont = False
        TabOrder = 0
      end
      object dgrPreco: TDBGrid
        Left = 371
        Top = 24
        Width = 510
        Height = 133
        DataSource = dsPreco
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'preCodigo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'preValor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'preTpContrato'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'imoCodigo'
            Visible = False
          end>
      end
      object edtValor: TDBEdit
        Left = 32
        Top = 106
        Width = 297
        Height = 26
        DataField = 'preValor'
        DataSource = dsPreco
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object tsComplementos: TTabSheet
      Caption = 'Complementos'
      ImageIndex = 3
      TabVisible = False
      object Shape3: TShape
        Left = 536
        Top = 574
        Width = 347
        Height = 24
        Brush.Color = 11545533
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object Label1: TLabel
        Left = 545
        Top = 577
        Width = 325
        Height = 19
        Caption = 'Cadastrar/ Editar/ Remover Complementos'
      end
      object btnNovoComp: TImage
        Left = 536
        Top = 574
        Width = 347
        Height = 24
        OnClick = btnNovoCompClick
      end
      object grdComp: TDBGrid
        Left = 3
        Top = 2
        Width = 887
        Height = 559
        DataSource = dsComplementos
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'compNome'
            Width = 200
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'compimoQuantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'compimoCaracteristicas'
            Width = 500
            Visible = True
          end>
      end
    end
  end
  object dsCadImovel: TDataSource
    AutoEdit = False
    DataSet = DM.qryImoveis
    OnStateChange = dsCadImovelStateChange
    OnDataChange = dsCadImovelDataChange
    Left = 824
    Top = 232
  end
  object dsFotos: TDataSource
    AutoEdit = False
    DataSet = DM.qryImoFotos
    OnStateChange = dsFotosStateChange
    OnDataChange = dsFotosDataChange
    Left = 824
    Top = 288
  end
  object dsPreco: TDataSource
    AutoEdit = False
    DataSet = DM.qryPrecos
    OnStateChange = dsPrecoStateChange
    Left = 824
    Top = 344
  end
  object dsComplementos: TDataSource
    AutoEdit = False
    DataSet = DM.qryConsComplemento
    Left = 828
    Top = 398
  end
  object dsTpImovel: TDataSource
    AutoEdit = False
    DataSet = DM.qryConsTipoImoveis
    Left = 820
    Top = 446
  end
  object XMLDocument1: TXMLDocument
    Left = 852
    Top = 502
  end
  object SSLIO: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 816
    Top = 496
  end
  object opdImgImo: TOpenPictureDialog
    Left = 868
    Top = 350
  end
end
