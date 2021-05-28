object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 623
  Width = 918
  object CONEXAO: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=imb2715;Persist Security Info=True;' +
      'User ID=tcc-m114-imb;Initial Catalog=tcc_m114_imobiliaria;Data S' +
      'ource=SRV-BD-0\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 48
    Top = 24
  end
  object qryAgendamentos: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select agendCodigo, agendDataHora, funCodigo, cliCodigo, imoCodi' +
        'go from AGENDAMENTOS')
    Left = 264
    Top = 96
    object qryAgendamentosagendCodigo: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'agendCodigo'
      ReadOnly = True
    end
    object qryAgendamentosagendDataHora: TDateTimeField
      DisplayLabel = 'Data e Hora'
      FieldName = 'agendDataHora'
    end
    object qryAgendamentosfunCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Funcion'#225'rio'
      FieldName = 'funCodigo'
    end
    object qryAgendamentoscliCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Cliente'
      FieldName = 'cliCodigo'
    end
    object qryAgendamentosimoCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Im'#243'vel'
      FieldName = 'imoCodigo'
    end
  end
  object qryEmails: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select emaCodigo, emaEmail, funCodigo, terCodigo, cliCodigo from' +
        ' EMAILS ')
    Left = 168
    Top = 144
    object qryEmailsemaCodigo: TAutoIncField
      FieldName = 'emaCodigo'
      ReadOnly = True
    end
    object qryEmailsemaEmail: TStringField
      FieldName = 'emaEmail'
      Size = 200
    end
    object qryEmailsfunCodigo: TIntegerField
      FieldName = 'funCodigo'
    end
    object qryEmailsterCodigo: TIntegerField
      FieldName = 'terCodigo'
    end
    object qryEmailscliCodigo: TIntegerField
      FieldName = 'cliCodigo'
    end
  end
  object qryMensagens: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select menCodigo,menExcluida, menTitulo, menConteudo, menDataEmi' +
        'ssao, menPrioridade,'
      'funCodigo from MENSAGENS ')
    Left = 168
    Top = 96
    object qryMensagensmenCodigo: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'menCodigo'
      ReadOnly = True
    end
    object qryMensagensmenTitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'menTitulo'
    end
    object qryMensagensmenConteudo: TStringField
      DisplayLabel = 'Conte'#250'do'
      FieldName = 'menConteudo'
      Size = 700
    end
    object qryMensagensmenDataEmissao: TDateTimeField
      DisplayLabel = 'Data de Emiss'#227'o'
      FieldName = 'menDataEmissao'
    end
    object qryMensagensmenPrioridade: TStringField
      DisplayLabel = 'Prioridade'
      FieldName = 'menPrioridade'
    end
    object qryMensagensfunCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Remetente'
      FieldName = 'funCodigo'
    end
    object qryMensagensmenExcluida: TBooleanField
      FieldName = 'menExcluida'
    end
  end
  object qryFuncionarios: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select funCodigo, funTipo, funNome, funRG, funCPF, funEndereco, ' +
        'funCidade,'
      ' funEstado, funSituacao, funPagamentoBruto, funDataNascimento,'
      
        ' funCTPS, funCRECI, funObservacoes, funDataAdmissao, funDataDemi' +
        'ssao,'
      
        ' funBairro, funLogin, funSenha, funCargo, funBloqueio,funNumeroI' +
        'movel,funCEP'
      ' from FUNCIONARIOS')
    Left = 56
    Top = 256
    object qryFuncionariosfunCodigo: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'funCodigo'
      ReadOnly = True
    end
    object qryFuncionariosfunTipo: TStringField
      DisplayLabel = 'Fun'#231#227'o no Sistema'
      FieldName = 'funTipo'
      Size = 15
    end
    object qryFuncionariosfunNome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'funNome'
      Size = 60
    end
    object qryFuncionariosfunRG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'funRG'
    end
    object qryFuncionariosfunCPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'funCPF'
      EditMask = '999.999.999-99;1;_'
      Size = 15
    end
    object qryFuncionariosfunEndereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'funEndereco'
      Size = 120
    end
    object qryFuncionariosfunCidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'funCidade'
      Size = 60
    end
    object qryFuncionariosfunEstado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'funEstado'
      Size = 2
    end
    object qryFuncionariosfunSituacao: TBooleanField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'funSituacao'
    end
    object qryFuncionariosfunPagamentoBruto: TBCDField
      DisplayLabel = 'Pagamento Bruto'
      FieldName = 'funPagamentoBruto'
      Precision = 10
      Size = 2
    end
    object qryFuncionariosfunDataNascimento: TDateTimeField
      DisplayLabel = 'Data de Nascimento'
      FieldName = 'funDataNascimento'
      EditMask = '!99/99/0000;1;_'
    end
    object qryFuncionariosfunCTPS: TStringField
      DisplayLabel = 'CTPS'
      FieldName = 'funCTPS'
      EditMask = '999999-9;1;_'
      Size = 10
    end
    object qryFuncionariosfunCRECI: TStringField
      DisplayLabel = 'CRECI'
      FieldName = 'funCRECI'
      Size = 10
    end
    object qryFuncionariosfunObservacoes: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'funObservacoes'
      Size = 700
    end
    object qryFuncionariosfunDataAdmissao: TDateTimeField
      DisplayLabel = 'Data de Admiss'#227'o'
      FieldName = 'funDataAdmissao'
      EditMask = '!99/99/0000;1;_'
    end
    object qryFuncionariosfunBairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'funBairro'
      Size = 100
    end
    object qryFuncionariosfunLogin: TStringField
      DisplayLabel = 'Login'
      FieldName = 'funLogin'
    end
    object qryFuncionariosfunSenha: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'funSenha'
    end
    object qryFuncionariosfunCargo: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'funCargo'
      Size = 50
    end
    object qryFuncionariosfunBloqueio: TIntegerField
      DisplayLabel = 'Bloqueio'
      FieldName = 'funBloqueio'
    end
    object qryFuncionariosfunNumeroImovel: TIntegerField
      FieldName = 'funNumeroImovel'
    end
    object qryFuncionariosfunCEP: TStringField
      FieldName = 'funCEP'
      EditMask = '99999-999;1;_'
      Size = 50
    end
    object qryFuncionarioscliCodigo: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'cliCodigo'
      Calculated = True
    end
    object qryFuncionariosterCodigo: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'terCodigo'
      Calculated = True
    end
    object qryFuncionariosfunDataDemissao: TDateTimeField
      FieldName = 'funDataDemissao'
    end
  end
  object qryImoveis: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select  imoNome,imoCodigo,imoCEP, imoEndereco, imoBairro, imoNum' +
        'ero, imoComplemento, imoCidade, imoEstado, imoAreaTotal, imoArea' +
        'Privativa, imoQuadra, imoLote, imoOcupacao,'
      
        ' imoEstadoDoImovel, imoValorIPTU, imoObservacao, imoDataRegistro' +
        ', imoNegociacao, imoOrientacao, tpImoCodigo from IMOVEIS')
    Left = 264
    Top = 320
    object qryImoveisimoCodigo: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'imoCodigo'
      ReadOnly = True
    end
    object qryImoveisimoEndereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'imoEndereco'
      Size = 200
    end
    object qryImoveisimoBairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'imoBairro'
      Size = 100
    end
    object qryImoveisimoNumero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'imoNumero'
    end
    object qryImoveisimoComplemento: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'imoComplemento'
      Size = 50
    end
    object qryImoveisimoCidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'imoCidade'
      Size = 60
    end
    object qryImoveisimoEstado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'imoEstado'
      FixedChar = True
      Size = 2
    end
    object qryImoveisimoAreaTotal: TBCDField
      DisplayLabel = #193'rea Total'
      FieldName = 'imoAreaTotal'
      Precision = 10
      Size = 2
    end
    object qryImoveisimoAreaPrivativa: TBCDField
      DisplayLabel = #193'rea Privativa'
      FieldName = 'imoAreaPrivativa'
      Precision = 10
      Size = 2
    end
    object qryImoveisimoQuadra: TStringField
      DisplayLabel = 'Quadra'
      FieldName = 'imoQuadra'
      Size = 10
    end
    object qryImoveisimoLote: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'imoLote'
      Size = 10
    end
    object qryImoveisimoOcupacao: TBooleanField
      DisplayLabel = 'Ocupa'#231#227'o'
      FieldName = 'imoOcupacao'
    end
    object qryImoveisimoEstadoDoImovel: TStringField
      DisplayLabel = 'Estado do Im'#243'vel'
      FieldName = 'imoEstadoDoImovel'
      Size = 50
    end
    object qryImoveisimoValorIPTU: TBCDField
      DisplayLabel = 'IPTU'
      FieldName = 'imoValorIPTU'
      Precision = 10
      Size = 2
    end
    object qryImoveisimoObservacao: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'imoObservacao'
      Size = 300
    end
    object qryImoveisimoDataRegistro: TDateTimeField
      DisplayLabel = 'Data de Registro'
      FieldName = 'imoDataRegistro'
      EditMask = '!99/99/0000;1;_'
    end
    object qryImoveisimoNegociacao: TStringField
      DisplayLabel = 'Negocia'#231#227'o'
      FieldName = 'imoNegociacao'
      Size = 500
    end
    object qryImoveisimoOrientacao: TStringField
      DisplayLabel = 'Orienta'#231#227'o Solar'
      FieldName = 'imoOrientacao'
      Size = 25
    end
    object qryImoveistpImoCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Tipo do Im'#243'vel'
      FieldName = 'tpImoCodigo'
    end
    object qryImoveisimoCEP: TStringField
      FieldName = 'imoCEP'
      Size = 10
    end
    object qryImoveisimoNome: TStringField
      FieldName = 'imoNome'
      Size = 100
    end
  end
  object qryMensagensFunc: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select menCodigo, funCodigo, menFunVisualizacao, menFunExcluida ' +
        'from MENSAGENS_FUNCIONARIOS ')
    Left = 56
    Top = 96
    object qryMensagensFuncmenCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'menCodigo'
    end
    object qryMensagensFuncfunCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Destinat'#225'rio'
      FieldName = 'funCodigo'
    end
    object qryMensagensFuncmenFunVisualizacao: TBooleanField
      DisplayLabel = 'Status de Vizualiza'#231#227'o'
      FieldName = 'menFunVisualizacao'
    end
    object qryMensagensFuncmenFunExcluida: TBooleanField
      FieldName = 'menFunExcluida'
    end
  end
  object qryServTerceirizados: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select terCodigo,terNome,terServico, terObservacao, terBairro, t' +
        'erEndereco, terCidade, terEstado, terNumero,terCEP'
      ' from SERV_TERCEIRIZADOS')
    Left = 264
    Top = 256
    object qryServTerceirizadosterCodigo: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'terCodigo'
      ReadOnly = True
    end
    object qryServTerceirizadosterNome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'terNome'
      Size = 60
    end
    object qryServTerceirizadosterServico: TStringField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'terServico'
      Size = 100
    end
    object qryServTerceirizadosterObservacao: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'terObservacao'
      Size = 200
    end
    object qryServTerceirizadosterBairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'terBairro'
      Size = 60
    end
    object qryServTerceirizadosterEndereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'terEndereco'
      Size = 100
    end
    object qryServTerceirizadosterCidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'terCidade'
      Size = 60
    end
    object qryServTerceirizadosterEstado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'terEstado'
      FixedChar = True
      Size = 2
    end
    object qryServTerceirizadosterNumero: TIntegerField
      FieldName = 'terNumero'
    end
    object qryServTerceirizadosterCEP: TStringField
      FieldName = 'terCEP'
      Size = 10
    end
    object qryServTerceirizadoscliCodigo: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'cliCodigo'
      Calculated = True
    end
    object qryServTerceirizadosfunCodigo: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'funCodigo'
      Calculated = True
    end
  end
  object qryLocacao: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select locCodigo, locFim, locPreco, locInicio, imoCodigo, cliCod' +
        'igo from LOCACOES')
    Left = 56
    Top = 200
    object qryLocacaolocCodigo: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'locCodigo'
      ReadOnly = True
    end
    object qryLocacaolocFim: TDateTimeField
      DisplayLabel = 'Data de T'#233'rmino'
      FieldName = 'locFim'
      EditMask = '!90:00:0000>LL;1;_'
    end
    object qryLocacaolocPreco: TBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'locPreco'
      Precision = 10
      Size = 2
    end
    object qryLocacaolocInicio: TDateTimeField
      DisplayLabel = 'Data do '#205'nicio'
      FieldName = 'locInicio'
      EditMask = '!99/99/0000;1;_'
    end
    object qryLocacaoimoCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Im'#243'vel'
      FieldName = 'imoCodigo'
    end
    object qryLocacaocliCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Cliente'
      FieldName = 'cliCodigo'
    end
  end
  object qryTipoImoveis: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    DataSource = frmCadComp.dsTpComp
    Parameters = <
      item
        Name = 'tpImoCodigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select tpImoCodigo,tpImoNome from TIPO_IMOVEIS'
      'where tpImoCodigo = :tpImoCodigo')
    Left = 488
    Top = 480
    object qryTipoImoveistpImoCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tpImoCodigo'
    end
    object qryTipoImoveistpImoNome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'tpImoNome'
      Size = 60
    end
  end
  object qryVendas: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select venCodigo, venSituacaoDePagamento, venPreco, venData, cli' +
        'Codigo, imoCodigo, funCodigo  from VENDAS')
    Left = 168
    Top = 200
    object qryVendasvenCodigo: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'venCodigo'
      ReadOnly = True
    end
    object qryVendasvenSituacaoDePagamento: TBooleanField
      DisplayLabel = 'Situa'#231#227'o do Pagamento'
      FieldName = 'venSituacaoDePagamento'
    end
    object qryVendasvenPreco: TBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'venPreco'
      Precision = 10
      Size = 2
    end
    object qryVendasvenData: TDateTimeField
      DisplayLabel = 'Data da Venda'
      FieldName = 'venData'
      EditMask = '!99/99/0000;1;_'
    end
    object qryVendascliCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Cliente'
      FieldName = 'cliCodigo'
    end
    object qryVendasimoCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Im'#243'vel'
      FieldName = 'imoCodigo'
    end
    object qryVendasfunCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Funcion'#225'rio'
      FieldName = 'funCodigo'
    end
  end
  object qryPrecos: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    DataSource = frmCadImovel.dsCadImovel
    Parameters = <
      item
        Name = 'imoCodigo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select preCodigo, preValor, preTpContrato, imoCodigo from PRECOS'
      'where ImoCodigo = :imoCodigo')
    Left = 264
    Top = 200
    object qryPrecospreCodigo: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'preCodigo'
      ReadOnly = True
    end
    object qryPrecospreValor: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'preValor'
      Precision = 10
      Size = 2
    end
    object qryPrecospreTpContrato: TStringField
      DisplayLabel = 'Tipo de Contrato'
      FieldName = 'preTpContrato'
      Size = 50
    end
    object qryPrecosimoCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo de Im'#243'vel'
      FieldName = 'imoCodigo'
    end
  end
  object qryTipoComp: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    DataSource = frmCadComp.dsComplemento
    Parameters = <
      item
        Name = 'compCodigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select compCodigo,tpImoCodigo from TIPO_COMPLEMENTOS '
      'where compCodigo = :compCodigo')
    Left = 488
    Top = 528
    object qryTipoCompcompCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'compCodigo'
    end
    object qryTipoComptpImoCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Tipo do Im'#243'vel'
      FieldName = 'tpImoCodigo'
    end
  end
  object qryClientes: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select cliCodigo, cliNome, cliRG, cliCpfCnpj, cliEndereco, cliBa' +
        'irro, cliCidade, cliEstado, cliDataNascimento, cliEstadoCivil, c' +
        'liTipo,cliNumero, cliCEP'
      ' from CLIENTES')
    Left = 168
    Top = 256
    object qryClientescliCodigo: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cliCodigo'
      ReadOnly = True
    end
    object qryClientescliNome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'cliNome'
      Size = 60
    end
    object qryClientescliRG: TStringField
      DisplayLabel = 'RG'
      FieldName = 'cliRG'
    end
    object qryClientescliCpfCnpj: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'cliCpfCnpj'
    end
    object qryClientescliEndereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'cliEndereco'
      Size = 120
    end
    object qryClientescliBairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'cliBairro'
      Size = 100
    end
    object qryClientescliCidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cliCidade'
      Size = 80
    end
    object qryClientescliEstado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'cliEstado'
      FixedChar = True
      Size = 2
    end
    object qryClientescliEstadoCivil: TStringField
      DisplayLabel = 'Estado Civil'
      FieldName = 'cliEstadoCivil'
      Size = 25
    end
    object qryClientescliTipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'cliTipo'
      Size = 25
    end
    object qryClientescliNumero: TIntegerField
      FieldName = 'cliNumero'
    end
    object qryClientescliCEP: TStringField
      FieldName = 'cliCEP'
      Size = 10
    end
    object qryClientescliDataNascimento: TDateTimeField
      FieldName = 'cliDataNascimento'
    end
    object qryClientesfunCodigo: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'funCodigo'
      Calculated = True
    end
    object qryClientesterCodigo: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'terCodigo'
      Calculated = True
    end
  end
  object qryTelefones: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select telCodigo, telTipo, telDDD, telNumero, telOperadora, cliC' +
        'odigo, terCodigo, funCodigo from TELEFONES')
    Left = 56
    Top = 152
    object qryTelefonestelCodigo: TAutoIncField
      FieldName = 'telCodigo'
      ReadOnly = True
    end
    object qryTelefonestelTipo: TStringField
      FieldName = 'telTipo'
    end
    object qryTelefonestelDDD: TIntegerField
      FieldName = 'telDDD'
    end
    object qryTelefonestelNumero: TIntegerField
      FieldName = 'telNumero'
    end
    object qryTelefonestelOperadora: TStringField
      FieldName = 'telOperadora'
      Size = 10
    end
    object qryTelefonescliCodigo: TIntegerField
      FieldName = 'cliCodigo'
    end
    object qryTelefonesterCodigo: TIntegerField
      FieldName = 'terCodigo'
    end
    object qryTelefonesfunCodigo: TIntegerField
      FieldName = 'funCodigo'
    end
  end
  object qryLogin: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pLogin'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end
      item
        Name = 'pSenha'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'select funCodigo, funNome, funTipo, funLogin, funSenha, funBloqu' +
        'eio from FUNCIONARIOS'
      'where (FunLogin = :pLogin) and (funSenha = :pSenha)')
    Left = 176
    Top = 488
    object qryLoginfunCodigo: TAutoIncField
      FieldName = 'funCodigo'
      ReadOnly = True
    end
    object qryLoginfunNome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'funNome'
      Size = 60
    end
    object qryLoginfunTipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'funTipo'
      Size = 15
    end
    object qryLoginfunLogin: TStringField
      DisplayLabel = 'Login'
      FieldName = 'funLogin'
    end
    object qryLoginfunSenha: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'funSenha'
    end
    object qryLoginfunBloqueio: TIntegerField
      DisplayLabel = 'Bloqueio'
      FieldName = 'funBloqueio'
    end
  end
  object qryConsAgendamentos: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select agendCodigo, agendDataHora, funCodigo, cliCodigo, imoCodi' +
        'go from AGENDAMENTOS')
    Left = 640
    Top = 96
    object AutoIncField1: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'agendCodigo'
      ReadOnly = True
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'Data e Hora'
      FieldName = 'agendDataHora'
      EditMask = '!90:00:0000>LL;1;_'
    end
    object IntegerField1: TIntegerField
      DisplayLabel = 'C'#243'digo do Funcion'#225'rio'
      FieldName = 'funCodigo'
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'C'#243'digo do Cliente'
      FieldName = 'cliCodigo'
    end
    object IntegerField3: TIntegerField
      DisplayLabel = 'C'#243'digo do Im'#243'vel'
      FieldName = 'imoCodigo'
    end
  end
  object qryConsEmails: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select emaCodigo, emaEmail, funCodigo, terCodigo, cliCodigo from' +
        ' EMAILS ')
    Left = 544
    Top = 144
    object AutoIncField3: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'emaCodigo'
      ReadOnly = True
    end
    object StringField2: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'emaEmail'
      Size = 200
    end
    object IntegerField4: TIntegerField
      DisplayLabel = 'C'#243'digo do Funcion'#225'rio'
      FieldName = 'funCodigo'
    end
    object IntegerField5: TIntegerField
      DisplayLabel = 'C'#243'digo do Servi'#231'o Terceirizado'
      FieldName = 'terCodigo'
    end
    object IntegerField6: TIntegerField
      DisplayLabel = 'C'#243'digo do Cliente'
      FieldName = 'cliCodigo'
    end
  end
  object qryConsFotos: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select fotoCodigo, fotoCaminho, fotoDescricao, imoCodigo, funCod' +
        'igo from FOTOS')
    Left = 640
    Top = 144
    object AutoIncField4: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'fotoCodigo'
      ReadOnly = True
    end
    object StringField3: TStringField
      DisplayLabel = 'Caminho'
      FieldName = 'fotoCaminho'
      Size = 500
    end
    object StringField4: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'fotoDescricao'
      Size = 200
    end
    object IntegerField7: TIntegerField
      DisplayLabel = 'C'#243'digo do Im'#243'vel'
      FieldName = 'imoCodigo'
    end
    object IntegerField8: TIntegerField
      DisplayLabel = 'C'#243'digo do Funcion'#225'rio'
      FieldName = 'funCodigo'
    end
  end
  object qryConsCompImoveis: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select compimoCodigo, compimoQuantidade, compimoCaracteristicas,' +
        ' compCodigo, imoCodigo from COMPLEMENTOS_IMOVEIS')
    Left = 432
    Top = 320
    object AutoIncField6: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'compimoCodigo'
      ReadOnly = True
    end
    object IntegerField10: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'compimoQuantidade'
    end
    object StringField8: TStringField
      DisplayLabel = 'Caracter'#237'sticas'
      FieldName = 'compimoCaracteristicas'
      Size = 300
    end
    object IntegerField11: TIntegerField
      DisplayLabel = 'C'#243'digo do Complemento'
      FieldName = 'compCodigo'
    end
    object IntegerField12: TIntegerField
      DisplayLabel = 'C'#243'digo do Im'#243'vel'
      FieldName = 'imoCodigo'
    end
  end
  object qryConsFuncionarios: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select funCodigo, funTipo, funNome, funRG, funCPF, funEndereco, ' +
        'funCidade,'
      ' funEstado, funSituacao, funPagamentoBruto, funDataNascimento,'
      
        ' funCTPS, funCRECI, funObservacoes, funDataAdmissao, funDataDemi' +
        'ssao,'
      
        ' funBairro, funLogin, funSenha, funCargo, funBloqueio, funCEP, f' +
        'unNumeroImovel from FUNCIONARIOS')
    Left = 432
    Top = 256
    object qryConsFuncionariosfunCodigo: TAutoIncField
      FieldName = 'funCodigo'
      ReadOnly = True
    end
    object qryConsFuncionariosfunTipo: TStringField
      FieldName = 'funTipo'
      Size = 15
    end
    object qryConsFuncionariosfunNome: TStringField
      FieldName = 'funNome'
      Size = 60
    end
    object qryConsFuncionariosfunRG: TStringField
      FieldName = 'funRG'
    end
    object qryConsFuncionariosfunCPF: TStringField
      FieldName = 'funCPF'
      Size = 15
    end
    object qryConsFuncionariosfunEndereco: TStringField
      FieldName = 'funEndereco'
      Size = 120
    end
    object qryConsFuncionariosfunCidade: TStringField
      FieldName = 'funCidade'
      Size = 60
    end
    object qryConsFuncionariosfunEstado: TStringField
      FieldName = 'funEstado'
      Size = 2
    end
    object qryConsFuncionariosfunSituacao: TBooleanField
      FieldName = 'funSituacao'
    end
    object qryConsFuncionariosfunPagamentoBruto: TBCDField
      FieldName = 'funPagamentoBruto'
      Precision = 10
      Size = 2
    end
    object qryConsFuncionariosfunDataNascimento: TDateTimeField
      FieldName = 'funDataNascimento'
    end
    object qryConsFuncionariosfunCTPS: TStringField
      FieldName = 'funCTPS'
      Size = 10
    end
    object qryConsFuncionariosfunCRECI: TStringField
      FieldName = 'funCRECI'
      Size = 10
    end
    object qryConsFuncionariosfunObservacoes: TStringField
      FieldName = 'funObservacoes'
      Size = 700
    end
    object qryConsFuncionariosfunDataAdmissao: TDateTimeField
      FieldName = 'funDataAdmissao'
    end
    object qryConsFuncionariosfunDataDemissao: TDateTimeField
      FieldName = 'funDataDemissao'
    end
    object qryConsFuncionariosfunBairro: TStringField
      FieldName = 'funBairro'
      Size = 100
    end
    object qryConsFuncionariosfunLogin: TStringField
      FieldName = 'funLogin'
    end
    object qryConsFuncionariosfunSenha: TStringField
      FieldName = 'funSenha'
    end
    object qryConsFuncionariosfunCargo: TStringField
      FieldName = 'funCargo'
      Size = 50
    end
    object qryConsFuncionariosfunBloqueio: TIntegerField
      FieldName = 'funBloqueio'
    end
    object qryConsFuncionariosfunCEP: TStringField
      FieldName = 'funCEP'
      Size = 50
    end
    object qryConsFuncionariosfunNumeroImovel: TIntegerField
      FieldName = 'funNumeroImovel'
    end
  end
  object qryConsImoveis: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select  imoCodigo,imoCEP,imoNome, imoEndereco, imoBairro, imoNum' +
        'ero, imoComplemento, imoCidade, imoEstado, imoAreaTotal, imoArea' +
        'Privativa, imoQuadra, imoLote, imoOcupacao,'
      
        ' imoEstadoDoImovel, imoValorIPTU, imoObservacao, imoDataRegistro' +
        ', imoNegociacao, imoOrientacao, tpImoCodigo from IMOVEIS')
    Left = 640
    Top = 320
    object qryConsImoveisimoCodigo: TAutoIncField
      FieldName = 'imoCodigo'
      ReadOnly = True
    end
    object qryConsImoveisimoEndereco: TStringField
      FieldName = 'imoEndereco'
      Size = 200
    end
    object qryConsImoveisimoBairro: TStringField
      FieldName = 'imoBairro'
      Size = 100
    end
    object qryConsImoveisimoNumero: TIntegerField
      FieldName = 'imoNumero'
    end
    object qryConsImoveisimoComplemento: TStringField
      FieldName = 'imoComplemento'
      Size = 50
    end
    object qryConsImoveisimoCidade: TStringField
      FieldName = 'imoCidade'
      Size = 60
    end
    object qryConsImoveisimoEstado: TStringField
      FieldName = 'imoEstado'
      FixedChar = True
      Size = 2
    end
    object qryConsImoveisimoAreaTotal: TBCDField
      FieldName = 'imoAreaTotal'
      Precision = 10
      Size = 2
    end
    object qryConsImoveisimoAreaPrivativa: TBCDField
      FieldName = 'imoAreaPrivativa'
      Precision = 10
      Size = 2
    end
    object qryConsImoveisimoQuadra: TStringField
      FieldName = 'imoQuadra'
      Size = 10
    end
    object qryConsImoveisimoLote: TStringField
      FieldName = 'imoLote'
      Size = 10
    end
    object qryConsImoveisimoOcupacao: TBooleanField
      FieldName = 'imoOcupacao'
      DisplayValues = 'Sim;N'#227'o'
    end
    object qryConsImoveisimoEstadoDoImovel: TStringField
      FieldName = 'imoEstadoDoImovel'
      Size = 50
    end
    object qryConsImoveisimoValorIPTU: TBCDField
      FieldName = 'imoValorIPTU'
      Precision = 10
      Size = 2
    end
    object qryConsImoveisimoObservacao: TStringField
      FieldName = 'imoObservacao'
      Size = 300
    end
    object qryConsImoveisimoDataRegistro: TDateTimeField
      FieldName = 'imoDataRegistro'
    end
    object qryConsImoveisimoNegociacao: TStringField
      FieldName = 'imoNegociacao'
      Size = 500
    end
    object qryConsImoveisimoOrientacao: TStringField
      FieldName = 'imoOrientacao'
      Size = 25
    end
    object qryConsImoveistpImoCodigo: TIntegerField
      FieldName = 'tpImoCodigo'
    end
    object qryConsImoveisimoCEP: TStringField
      FieldName = 'imoCEP'
      Size = 10
    end
    object qryConsImoveisimoNome: TStringField
      FieldName = 'imoNome'
      Size = 100
    end
  end
  object qryConsMensagensFunc: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select menCodigo, funCodigo, menFunVisualizacao from MENSAGENS_F' +
        'UNCIONARIOS ')
    Left = 432
    Top = 96
    object IntegerField16: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'menCodigo'
    end
    object IntegerField17: TIntegerField
      DisplayLabel = 'C'#243'digo do Destinat'#225'rio'
      FieldName = 'funCodigo'
    end
    object BooleanField3: TBooleanField
      DisplayLabel = 'Status de Vizualiza'#231#227'o'
      FieldName = 'menFunVisualizacao'
    end
  end
  object qryConsServTerceirizados: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select terCodigo,terNome,terServico, terObservacao, terBairro, t' +
        'erEndereco, terCidade, terEstado from SERV_TERCEIRIZADOS')
    Left = 640
    Top = 256
    object AutoIncField9: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'terCodigo'
      ReadOnly = True
    end
    object StringField34: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'terNome'
      Size = 60
    end
    object StringField35: TStringField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'terServico'
      Size = 100
    end
    object StringField36: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'terObservacao'
      Size = 200
    end
    object StringField37: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'terBairro'
      Size = 60
    end
    object StringField38: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'terEndereco'
      Size = 100
    end
    object StringField39: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'terCidade'
      Size = 60
    end
    object StringField40: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'terEstado'
      FixedChar = True
      Size = 2
    end
  end
  object qryConsLocacao: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select locCodigo, locFim, locPreco, locInicio, imoCodigo, cliCod' +
        'igo from LOCACOES')
    Left = 432
    Top = 200
    object AutoIncField10: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'locCodigo'
      ReadOnly = True
    end
    object DateTimeField7: TDateTimeField
      DisplayLabel = 'Data de T'#233'rmino'
      FieldName = 'locFim'
      EditMask = '!90:00:0000>LL;1;_'
    end
    object BCDField5: TBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'locPreco'
      Precision = 10
      Size = 2
    end
    object DateTimeField8: TDateTimeField
      DisplayLabel = 'Data do '#205'nicio'
      FieldName = 'locInicio'
      EditMask = '!99/99/0000;1;_'
    end
    object IntegerField18: TIntegerField
      DisplayLabel = 'C'#243'digo do Im'#243'vel'
      FieldName = 'imoCodigo'
    end
    object IntegerField19: TIntegerField
      DisplayLabel = 'C'#243'digo do Cliente'
      FieldName = 'cliCodigo'
    end
  end
  object qryConsTipoImoveis: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select tpImoCodigo,tpImoNome from TIPO_IMOVEIS')
    Left = 544
    Top = 320
    object IntegerField20: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tpImoCodigo'
    end
    object StringField41: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'tpImoNome'
      Size = 60
    end
  end
  object qryConsPrecos: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select preCodigo, preValor, preTpContrato, imoCodigo from PRECOS')
    Left = 640
    Top = 200
    object AutoIncField12: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'preCodigo'
      ReadOnly = True
    end
    object BCDField7: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'preValor'
      Precision = 10
      Size = 2
    end
    object StringField42: TStringField
      DisplayLabel = 'Tipo de Contrato'
      FieldName = 'preTpContrato'
      Size = 50
    end
    object IntegerField24: TIntegerField
      DisplayLabel = 'C'#243'digo de Im'#243'vel'
      FieldName = 'imoCodigo'
    end
  end
  object qryConsTipoComp: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select compCodigo,tpImoCodigo from TIPO_COMPLEMENTOS ')
    Left = 544
    Top = 96
    object IntegerField25: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'compCodigo'
    end
    object IntegerField26: TIntegerField
      DisplayLabel = 'C'#243'digo do Tipo do Im'#243'vel'
      FieldName = 'tpImoCodigo'
    end
  end
  object qryConsClientes: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select cliCodigo, cliNome, cliRG, cliCpfCnpj, cliEndereco, cliBa' +
        'irro, cliCidade, cliEstado, cliDataNascimento, cliEstadoCivil, c' +
        'liTipo,cliNumero, cliCEP '
      ' from CLIENTES')
    Left = 544
    Top = 256
    object qryConsClientescliCodigo: TAutoIncField
      FieldName = 'cliCodigo'
      ReadOnly = True
    end
    object qryConsClientescliNome: TStringField
      FieldName = 'cliNome'
      Size = 60
    end
    object qryConsClientescliRG: TStringField
      FieldName = 'cliRG'
    end
    object qryConsClientescliCpfCnpj: TStringField
      FieldName = 'cliCpfCnpj'
    end
    object qryConsClientescliEndereco: TStringField
      FieldName = 'cliEndereco'
      Size = 120
    end
    object qryConsClientescliBairro: TStringField
      FieldName = 'cliBairro'
      Size = 100
    end
    object qryConsClientescliCidade: TStringField
      FieldName = 'cliCidade'
      Size = 80
    end
    object qryConsClientescliEstado: TStringField
      FieldName = 'cliEstado'
      FixedChar = True
      Size = 2
    end
    object qryConsClientescliDataNascimento: TDateTimeField
      FieldName = 'cliDataNascimento'
    end
    object qryConsClientescliEstadoCivil: TStringField
      FieldName = 'cliEstadoCivil'
      Size = 25
    end
    object qryConsClientescliTipo: TStringField
      FieldName = 'cliTipo'
      Size = 25
    end
    object qryConsClientescliNumero: TIntegerField
      FieldName = 'cliNumero'
    end
    object qryConsClientescliCEP: TStringField
      FieldName = 'cliCEP'
      Size = 10
    end
  end
  object qryConsTelefones: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select telCodigo, telTipo, telDDD, telNumero, telOperadora, cliC' +
        'odigo, terCodigo, funCodigo from TELEFONES')
    Left = 432
    Top = 152
    object AutoIncField14: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'telCodigo'
      ReadOnly = True
    end
    object StringField52: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'telTipo'
    end
    object IntegerField27: TIntegerField
      DisplayLabel = 'DDD'
      FieldName = 'telDDD'
    end
    object IntegerField28: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'telNumero'
    end
    object StringField53: TStringField
      DisplayLabel = 'Operadora'
      FieldName = 'telOperadora'
      Size = 10
    end
    object IntegerField29: TIntegerField
      DisplayLabel = 'C'#243'digo do Cliente'
      FieldName = 'cliCodigo'
    end
    object IntegerField30: TIntegerField
      DisplayLabel = 'C'#243'digo do Servi'#231'o Terceirizado'
      FieldName = 'terCodigo'
    end
    object IntegerField31: TIntegerField
      DisplayLabel = 'C'#243'digo do Funcion'#225'rio'
      FieldName = 'funCodigo'
    end
  end
  object qryConsLogin: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select funCodigo,funNome from FUNCIONARIOS'
      ' where funLogin <> '#39#39)
    Left = 656
    Top = 439
    object qryConsLoginfunCodigo: TAutoIncField
      FieldName = 'funCodigo'
      ReadOnly = True
    end
    object qryConsLoginfunNome: TStringField
      FieldName = 'funNome'
      Size = 60
    end
  end
  object qryConsFun: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pNome'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 60
        Value = Null
      end>
    SQL.Strings = (
      
        'select funcodigo, funnome from funcionarios where funnome = :pNo' +
        'me')
    Left = 752
    Top = 367
    object qryConsFunfuncodigo: TAutoIncField
      FieldName = 'funcodigo'
      ReadOnly = True
    end
    object qryConsFunfunnome: TStringField
      FieldName = 'funnome'
      Size = 60
    end
  end
  object qryDest: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codMen'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select fc.funNome '
      'from FUNCIONARIOS fc inner join MENSAGENS_FUNCIONARIOs mf '
      'on fc.funcodigo = mf.funcodigo where mf.mencodigo = :codMen'
      '')
    Left = 744
    Top = 440
    object qryDestfunNome: TStringField
      FieldName = 'funNome'
      Size = 60
    end
  end
  object qryRemet: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'codMen'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select fc.funNome '
      'from FUNCIONARIOS fc inner join MENSAGENS ms '
      'on fc.funcodigo = ms.funcodigo where ms.mencodigo = :codMen'
      '')
    Left = 800
    Top = 440
    object qryRemetfunNome: TStringField
      FieldName = 'funNome'
      Size = 60
    end
  end
  object qryConsAgendamentos2: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select agendamentos.agendCodigo,agendamentos.funcodigo,agendamen' +
        'tos.clicodigo, agendamentos.imocodigo, agendamentos.agendDataHor' +
        'a, funcionarios.funNome, clientes.cliNome, imoveis.imoEndereco, ' +
        'imoveis.imoNumero from agendamentos inner join funcionarios on a' +
        'gendamentos.funCodigo=funcionarios.funCodigo inner join clientes' +
        ' on agendamentos.cliCodigo=clientes.cliCodigo inner join imoveis' +
        ' on agendamentos.imoCodigo=imoveis.imoCodigo')
    Left = 40
    Top = 392
    object qryConsAgendamentos2agendCodigo: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'agendCodigo'
      ReadOnly = True
    end
    object qryConsAgendamentos2agendDataHora: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'agendDataHora'
    end
    object qryConsAgendamentos2funNome: TStringField
      DisplayLabel = 'Funcion'#225'rio'
      FieldName = 'funNome'
      Size = 60
    end
    object qryConsAgendamentos2cliNome: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'cliNome'
      Size = 60
    end
    object qryConsAgendamentos2imoEndereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'imoEndereco'
      Size = 200
    end
    object qryConsAgendamentos2imoNumero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'imoNumero'
    end
    object qryConsAgendamentos2funcodigo: TIntegerField
      FieldName = 'funcodigo'
    end
    object qryConsAgendamentos2clicodigo: TIntegerField
      FieldName = 'clicodigo'
    end
    object qryConsAgendamentos2imocodigo: TIntegerField
      FieldName = 'imocodigo'
    end
  end
  object qryComplemento: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from complementos')
    Left = 680
    Top = 512
    object qryComplementocompCodigo: TAutoIncField
      FieldName = 'compCodigo'
      ReadOnly = True
    end
    object qryComplementocompNome: TStringField
      FieldName = 'compNome'
      Size = 50
    end
  end
  object qryConsComplemento: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    DataSource = frmCadImovel.dsCadImovel
    Parameters = <
      item
        Name = 'imoCodigo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT COMPLEMENTOS.compCodigo,COMPLEMENTOS.compNome, COMPLEMENT' +
        'OS_IMOVEIS.compimoQuantidade, COMPLEMENTOS_IMOVEIS.compimoCaract' +
        'eristicas '
      
        'from COMPLEMENTOS inner join COMPLEMENTOS_IMOVEIS on COMPLEMENTO' +
        'S.compCodigo = COMPLEMENTOS_IMOVEIS.compCodigo inner join'
      'Imoveis on COMPLEMENTOS_IMOVEIS.imoCodigo = Imoveis.imoCodigo '
      'where COMPLEMENTOS_IMOVEIS.imoCodigo = :imoCodigo')
    Left = 592
    Top = 495
    object qryConsComplementocompNome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'compNome'
      Size = 50
    end
    object qryConsComplementocompimoQuantidade: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'compimoQuantidade'
    end
    object qryConsComplementocompimoCaracteristicas: TStringField
      DisplayLabel = 'Caracter'#237'sticas'
      FieldName = 'compimoCaracteristicas'
      Size = 300
    end
    object qryConsComplementocompCodigo: TAutoIncField
      FieldName = 'compCodigo'
      ReadOnly = True
    end
  end
  object qryComplementos: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pComp'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'select compCodigo, compNome from COMPLEMENTOS '
      'where compNome like :pComp'
      '')
    Left = 592
    Top = 567
    object qryComplementoscompCodigo: TAutoIncField
      FieldName = 'compCodigo'
      ReadOnly = True
    end
    object qryComplementoscompNome: TStringField
      FieldName = 'compNome'
      Size = 50
    end
  end
  object qryCompImoveis: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    DataSource = frmCadImovel.dsComplementos
    Parameters = <
      item
        Name = 'compCodigo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select compimoCodigo, compimoQuantidade, compimoCaracteristicas,' +
        ' compCodigo, imoCodigo from COMPLEMENTOS_IMOVEIS'
      'where compCodigo = :compCodigo ')
    Left = 680
    Top = 568
    object qryCompImoveiscompimoCodigo: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'compimoCodigo'
      ReadOnly = True
    end
    object qryCompImoveiscompimoQuantidade: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'compimoQuantidade'
    end
    object qryCompImoveiscompimoCaracteristicas: TStringField
      DisplayLabel = 'Caracter'#237'sticas'
      FieldName = 'compimoCaracteristicas'
      Size = 300
    end
    object qryCompImoveiscompCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Complemento'
      FieldName = 'compCodigo'
    end
    object qryCompImoveisimoCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Im'#243'vel'
      FieldName = 'imoCodigo'
    end
  end
  object qryImoFotos: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    DataSource = frmCadImovel.dsCadImovel
    Parameters = <
      item
        Name = 'imoCodigo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select fotoCodigo, fotoCaminho, fotoDescricao, imoCodigo, funCod' +
        'igo from FOTOS'
      'where imocodigo = :imoCodigo')
    Left = 768
    Top = 568
    object qryImoFotosfotoCodigo: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'fotoCodigo'
      ReadOnly = True
    end
    object qryImoFotosfotoCaminho: TStringField
      DisplayLabel = 'Caminho'
      FieldName = 'fotoCaminho'
      Size = 500
    end
    object qryImoFotosfotoDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'fotoDescricao'
      Size = 200
    end
    object qryImoFotosimoCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Im'#243'vel'
      FieldName = 'imoCodigo'
    end
    object qryImoFotosfunCodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Funcion'#225'rio'
      FieldName = 'funCodigo'
    end
  end
  object qryConsComplementos: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select CP.compNome, CI.compImoQuantidade, CI.compImoCaracteristi' +
        'cas '
      
        'from COMPLEMENTOS CP inner join COMPLEMENTOS_IMOVEIS CI on CP.co' +
        'mpCodigo = CI.compCodigo'
      'inner join IMOVEIS on IMOVEIS.imoCodigo = CI.imoCodigo '
      'where CI.imoCodigo = 1'
      '')
    Left = 768
    Top = 512
    object qryConsComplementoscompNome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'compNome'
      Size = 50
    end
    object qryConsComplementoscompImoQuantidade: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'compImoQuantidade'
    end
    object qryConsComplementoscompImoCaracteristicas: TStringField
      DisplayLabel = 'Caracter'#237'sticas'
      FieldName = 'compImoCaracteristicas'
      Size = 300
    end
  end
  object qryBloqueioLogin: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pLogin'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = Null
      end>
    SQL.Strings = (
      
        'select funCodigo, funNome, funTipo, funLogin, funSenha, funBloqu' +
        'eio from FUNCIONARIOS'
      'where (FunLogin = :pLogin) ')
    Left = 248
    Top = 488
    object qryBloqueioLoginfunCodigo: TAutoIncField
      FieldName = 'funCodigo'
      ReadOnly = True
    end
    object qryBloqueioLoginfunNome: TStringField
      FieldName = 'funNome'
      Size = 60
    end
    object qryBloqueioLoginfunTipo: TStringField
      FieldName = 'funTipo'
      Size = 15
    end
    object qryBloqueioLoginfunLogin: TStringField
      FieldName = 'funLogin'
    end
    object qryBloqueioLoginfunSenha: TStringField
      FieldName = 'funSenha'
    end
    object qryBloqueioLoginfunBloqueio: TIntegerField
      FieldName = 'funBloqueio'
    end
  end
  object qryExcluirTpComp: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'compCodigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'tpImoCodigo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      ''
      'select compCodigo,tpImoCodigo from TIPO_COMPLEMENTOS '
      
        'where ((compCodigo = :compCodigo) and (tpImoCodigo = :tpImoCodig' +
        'o))')
    Left = 488
    Top = 576
    object qryExcluirTpCompcompCodigo: TIntegerField
      FieldName = 'compCodigo'
    end
    object qryExcluirTpComptpImoCodigo: TIntegerField
      FieldName = 'tpImoCodigo'
    end
  end
  object qryFuncFotos: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'funCodigo'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select fotoCodigo, fotoCaminho, fotoDescricao, imoCodigo, funCod' +
        'igo from FOTOS'
      'where funCodigo = :funCodigo')
    Left = 176
    Top = 551
    object qryFuncFotosfotoCodigo: TAutoIncField
      FieldName = 'fotoCodigo'
      ReadOnly = True
    end
    object qryFuncFotosfotoCaminho: TStringField
      FieldName = 'fotoCaminho'
      Size = 500
    end
    object qryFuncFotosfotoDescricao: TStringField
      FieldName = 'fotoDescricao'
      Size = 200
    end
    object qryFuncFotosimoCodigo: TIntegerField
      FieldName = 'imoCodigo'
    end
    object qryFuncFotosfunCodigo: TIntegerField
      FieldName = 'funCodigo'
    end
  end
  object qryConsMensagens: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pDestinatario'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select mf.menCodigo,mf.menfunExcluida, mf.funCodigo, mf.menFunVi' +
        'sualizacao, mn.funCodigo, fc.funNome, mn.menTitulo, menConteudo,' +
        ' menDataEmissao, menPrioridade '
      'from MENSAGENS_FUNCIONARIOS mf'
      'inner join MENSAGENS mn'
      'on mn.menCodigo = mf.menCodigo'
      'inner join FUNCIONARIOS fc'
      'on fc.funCodigo = mn.funCodigo'
      
        'where (( mf.funCodigo =  :pDestinatario) and (mf.menfunExcluida ' +
        '= 0))')
    Left = 672
    Top = 391
    object IntegerField9: TIntegerField
      DisplayLabel = 'C'#243'digo da Mensagem'
      FieldName = 'menCodigo'
    end
    object IntegerField13: TIntegerField
      DisplayLabel = 'C'#243'digo do Destinat'#225'rio'
      FieldName = 'funCodigo'
    end
    object BooleanField1: TBooleanField
      DisplayLabel = 'Visualiza'#231#227'o'
      FieldName = 'menFunVisualizacao'
    end
    object IntegerField14: TIntegerField
      DisplayLabel = 'C'#243'digo do Remetente'
      FieldName = 'funCodigo_1'
    end
    object StringField1: TStringField
      DisplayLabel = 'Remetente'
      FieldName = 'funNome'
      Size = 60
    end
    object StringField5: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'menTitulo'
    end
    object StringField6: TStringField
      DisplayLabel = 'Conte'#250'do'
      FieldName = 'menConteudo'
      Size = 700
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = 'Data de Envio'
      FieldName = 'menDataEmissao'
    end
    object StringField7: TStringField
      DisplayLabel = 'Prioridade'
      FieldName = 'menPrioridade'
    end
    object qryConsMensagensmenfunExcluida: TBooleanField
      DisplayLabel = 'Excluida'
      FieldName = 'menfunExcluida'
    end
  end
  object qryCaixadeSaida: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'pRemetente'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'select mf.menCodigo,mn.menExcluida, mf.funCodigo, mf.menFunVisua' +
        'lizacao, mn.menTitulo, menConteudo, menDataEmissao, menPrioridad' +
        'e '
      'from MENSAGENS_FUNCIONARIOS mf'
      'inner join MENSAGENS mn'
      'on mn.menCodigo = mf.menCodigo'
      'inner join FUNCIONARIOS fc'
      'on fc.funCodigo = mn.funCodigo'
      
        'where (( mn.funCodigo  = :pRemetente ) and (mn.menExcluida = 0))' +
        ' ')
    Left = 824
    Top = 391
    object IntegerField15: TIntegerField
      DisplayLabel = 'Codigo da Mensagem'
      FieldName = 'menCodigo'
    end
    object IntegerField32: TIntegerField
      DisplayLabel = 'Destinatario'
      FieldName = 'funCodigo'
    end
    object BooleanField2: TBooleanField
      DisplayLabel = 'Visualiza'#231#227'o'
      FieldName = 'menFunVisualizacao'
    end
    object StringField9: TStringField
      DisplayLabel = 'Titulo'
      FieldName = 'menTitulo'
    end
    object StringField10: TStringField
      DisplayLabel = 'Conteudo'
      FieldName = 'menConteudo'
      Size = 700
    end
    object DateTimeField3: TDateTimeField
      DisplayLabel = 'Data de Envio'
      FieldName = 'menDataEmissao'
    end
    object StringField11: TStringField
      DisplayLabel = 'Prioridade'
      FieldName = 'menPrioridade'
    end
    object qryCaixadeSaidamenExcluida: TBooleanField
      DisplayLabel = 'Excluida'
      FieldName = 'menExcluida'
    end
  end
  object qryConsTelefones2: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select telTipo, telDDD, telNumero, telOperadora from telefones')
    Left = 40
    Top = 440
    object qryConsTelefones2telTipo: TStringField
      FieldName = 'telTipo'
    end
    object qryConsTelefones2telDDD: TIntegerField
      FieldName = 'telDDD'
    end
    object qryConsTelefones2telNumero: TIntegerField
      FieldName = 'telNumero'
    end
    object qryConsTelefones2telOperadora: TStringField
      FieldName = 'telOperadora'
      Size = 10
    end
  end
  object qryConsEmails2: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT emaEmail,clicodigo from emails')
    Left = 40
    Top = 488
    object qryConsEmails2emaEmail: TStringField
      FieldName = 'emaEmail'
      Size = 200
    end
    object qryConsEmails2clicodigo: TIntegerField
      FieldName = 'clicodigo'
    end
  end
  object qryConsTpComp: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'compCodigoo'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select compCodigo,tpImoCodigo from TIPO_COMPLEMENTOS '
      'where compCodigo = :compCodigoo')
    Left = 488
    Top = 432
    object qryConsTpCompcompCodigo: TIntegerField
      FieldName = 'compCodigo'
    end
    object qryConsTpComptpImoCodigo: TIntegerField
      FieldName = 'tpImoCodigo'
    end
  end
  object qryConsLoc2: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select locacoes.locCodigo, locacoes.locPreco, locacoes.locInicio' +
        ', locacoes.imoCodigo, locacoes.cliCodigo, locacoes.locFim, imove' +
        'is.imoEndereco, imoveis.imoNumero, clientes.cliNome from locacoe' +
        's inner join imoveis on locacoes.imoCodigo=imoveis.imoCodigo inn' +
        'er join clientes on locacoes.cliCodigo=clientes.cliCodigo')
    Left = 40
    Top = 552
    object qryConsLoc2locCodigo: TAutoIncField
      FieldName = 'locCodigo'
      ReadOnly = True
    end
    object qryConsLoc2locPreco: TBCDField
      FieldName = 'locPreco'
      Precision = 10
      Size = 2
    end
    object qryConsLoc2locInicio: TDateTimeField
      FieldName = 'locInicio'
    end
    object qryConsLoc2imoCodigo: TIntegerField
      FieldName = 'imoCodigo'
    end
    object qryConsLoc2cliCodigo: TIntegerField
      FieldName = 'cliCodigo'
    end
    object qryConsLoc2locFim: TDateTimeField
      FieldName = 'locFim'
    end
    object qryConsLoc2imoEndereco: TStringField
      FieldName = 'imoEndereco'
      Size = 200
    end
    object qryConsLoc2imoNumero: TIntegerField
      FieldName = 'imoNumero'
    end
    object qryConsLoc2cliNome: TStringField
      FieldName = 'cliNome'
      Size = 60
    end
  end
  object qryConfig: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select confCodigo, confCor, confTempo from CONFIGURACOES')
    Left = 176
    Top = 440
    object qryConfigconfCodigo: TAutoIncField
      FieldName = 'confCodigo'
      ReadOnly = True
    end
    object qryConfigconfCor: TStringField
      FieldName = 'confCor'
      Size = 25
    end
    object qryConfigconfTempo: TStringField
      FieldName = 'confTempo'
      Size = 50
    end
  end
  object qryConsVendas: TADOQuery
    Connection = CONEXAO
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select imoveis.imoNome, funcionarios.funNome, clientes.cliNome ,' +
        ' '
      
        'vendas.venData, vendas.venSituacaoDePagamento, vendas.venPreco f' +
        'rom VENDAS  '
      
        'inner join funcionarios on vendas.funcodigo = funcionarios.funCo' +
        'digo '
      'inner join clientes on vendas.cliCodigo = clientes.cliCodigo '
      '  inner join imoveis on vendas.imoCodigo = imoveis.imoCodigo ')
    Left = 544
    Top = 208
    object qryConsVendasimoNome: TStringField
      FieldName = 'imoNome'
      Size = 100
    end
    object qryConsVendasfunNome: TStringField
      FieldName = 'funNome'
      Size = 60
    end
    object qryConsVendascliNome: TStringField
      FieldName = 'cliNome'
      Size = 60
    end
    object qryConsVendasvenData: TDateTimeField
      FieldName = 'venData'
    end
    object qryConsVendasvenSituacaoDePagamento: TBooleanField
      FieldName = 'venSituacaoDePagamento'
      DisplayValues = 'Em dia; Atrasado'
    end
    object qryConsVendasvenPreco: TBCDField
      FieldName = 'venPreco'
      Precision = 10
      Size = 2
    end
  end
end
