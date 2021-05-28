unit UCadFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ComCtrls, Data.DB, Vcl.Mask, Vcl.ImgList, System.Actions,Xml.XMLDoc, WinInet,
  Vcl.ActnList, Xml.xmldom, Xml.XMLIntf, IdBaseComponent, IdComponent,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, JPEG, Vcl.ExtDlgs;

type
  TfrmCadFuncionario = class(TForm)
    lblCodigo: TLabel;
    DSFuncionarios: TDataSource;
    lblNome: TLabel;
    edtNome: TDBEdit;
    lblTipo: TLabel;
    lblRG: TLabel;
    edtRG: TDBEdit;
    lblCPF: TLabel;
    edtCPF: TDBEdit;
    lblEndereco: TLabel;
    edtEndereco: TDBEdit;
    lblCidade: TLabel;
    edtCidade: TDBEdit;
    lblEstado: TLabel;
    checkBSituacao: TDBCheckBox;
    lblPagBruto: TLabel;
    edtPagBruto: TDBEdit;
    lblDtNascimento: TLabel;
    edtDtaNascimento: TDBEdit;
    lblCTPS: TLabel;
    edtCTPS: TDBEdit;
    lblCRECI: TLabel;
    edtCRECI: TDBEdit;
    lblObservacoes: TLabel;
    DBCodigo: TDBText;
    lblDtAdmicao: TLabel;
    edtDtaAdmissao: TDBEdit;
    lblDtDemicao: TLabel;
    lblBairro: TLabel;
    edtBairro: TDBEdit;
    lblLogin: TLabel;
    edtLogin: TDBEdit;
    lblSenha: TLabel;
    edtSenha: TDBEdit;
    lblCargo: TLabel;
    edtCargo: TDBEdit;
    mmoObservacao: TDBMemo;
    dtpAdmicao: TDateTimePicker;
    dtpDemicao: TDateTimePicker;
    dtpNascimento: TDateTimePicker;
    lblConfirmaSenha: TLabel;
    edtConfirmaSenha: TMaskEdit;
    edtDtaDemissao: TDBEdit;
    cbbTipo: TDBComboBox;
    lblNumero: TLabel;
    pnlDadosPessoais: TPanel;
    pnlContato: TPanel;
    cbbEstado: TDBComboBox;
    pnlDadosTrab: TPanel;
    pnlObservacoes: TPanel;
    btnObs: TSpeedButton;
    lblFechar: TLabel;
    actFuncionario: TActionList;
    actObs: TAction;
    imgListaFunc: TImageList;
    actTelMail: TAction;
    edtNumero: TDBEdit;
    lblCEP: TLabel;
    edtCEP: TDBEdit;
    DBnavegar: TDBNavigator;
    btnVerNet: TSpeedButton;
    XMLDocument1: TXMLDocument;
    SSLIO: TIdSSLIOHandlerSocketOpenSSL;
    opdImgFunc: TOpenPictureDialog;
    DSFotos: TDataSource;
    pnlBotoes: TPanel;
    btnTelMail: TSpeedButton;
    spCabecalhoBot: TShape;
    spCabecalhoTop: TShape;
    spBtnSalvar: TShape;
    spBtnInserir: TShape;
    spBtnCancelar: TShape;
    spBtnEditar: TShape;
    lblBtnSalvar: TLabel;
    lblBtnInserir: TLabel;
    lblBtnEditar: TLabel;
    lblBtnCancelar: TLabel;
    imgBtnSalvar: TImage;
    imgBtnInserir: TImage;
    imgBtnEditar: TImage;
    imgBtnCancelar: TImage;
    spBtnRemover: TShape;
    lblBtnRemover: TLabel;
    btnRemover: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure dtpAdmicaoChange(Sender: TObject);
    procedure dtpDemicaoChange(Sender: TObject);
    procedure dtpNascimentoChange(Sender: TObject);
    procedure DSFuncionariosDataChange(Sender: TObject; Field: TField);
    procedure DSFuncionariosStateChange(Sender: TObject);
    procedure checkBSituacaoClick(Sender: TObject);
    procedure btnVerNetClick(Sender: TObject);
    procedure lblFecharClick(Sender: TObject);
    procedure actObsExecute(Sender: TObject);
    procedure actTelMailExecute(Sender: TObject);
    procedure edtCEPExit(Sender: TObject);
    procedure btnInserirFotoClick(Sender: TObject);
    procedure btnSalvarFotoClick(Sender: TObject);
    procedure btnCancelarFotoClick(Sender: TObject);
    procedure btnEditarFotoClick(Sender: TObject);
    procedure btnRemoverFotoClick(Sender: TObject);
    procedure lblFecharFotoClick(Sender: TObject);
    procedure imgBtnSalvarClick(Sender: TObject);
    procedure imgBtnEditarClick(Sender: TObject);
    procedure imgBtnInserirClick(Sender: TObject);
    procedure imgBtnCancelarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConsultaCep(Cep: String);
  end;

var
  frmCadFuncionario: TfrmCadFuncionario;

implementation

{$R *.dfm}

uses UDM, UPrincipal, UTelMail;

procedure TfrmCadFuncionario.actObsExecute(Sender: TObject);
begin
pnlObservacoes.Height:=254;
pnlObservacoes.Width:=297;
pnlObservacoes.Visible:=True;
btnObs.Visible:=False;
end;

procedure TfrmCadFuncionario.actTelMailExecute(Sender: TObject);
begin
frmTelEmail := TfrmTelEmail.Create(Self);

    try
      frmTelEmail.Tag:=1;
      frmTelEmail.ShowModal;
    finally
       frmTelEmail.Release;
       frmTelEmail:= Nil;
    end;
end;

procedure TfrmCadFuncionario.btnCancelarFotoClick(Sender: TObject);
begin
DSFotos.DataSet.Cancel;
end;

procedure TfrmCadFuncionario.btnEditarClick(Sender: TObject);
begin
DSFuncionarios.DataSet.Cancel;
end;

procedure TfrmCadFuncionario.btnEditarFotoClick(Sender: TObject);
begin
DSFotos.DataSet.Edit;
end;


procedure TfrmCadFuncionario.btnInserirFotoClick(Sender: TObject);
begin
DSFotos.DataSet.Append;
    {if opdImgFunc.Execute then
    begin
      imgFunc.Picture.LoadFromFile(opdImgFunc.FileName);
      dm.qryImoFotosfotoCaminho.Value := opdImgFunc.FileName;
    end;}
end;

procedure TfrmCadFuncionario.btnRemoverClick(Sender: TObject);
begin
    if MessageBox(Application.Handle,'Você deseja realmente excluir este funcionário?',
    'Excluir',36) =idYes then
    begin
DSFuncionarios.DataSet.Delete;
end;
end;

procedure TfrmCadFuncionario.btnRemoverFotoClick(Sender: TObject);
begin
if MessageBox(Application.Handle,'Você deseja realmente excluir esta foto?',
    'Excluir',36) =idYes then
    begin
DSFotos.DataSet.Delete;
end;
end;

procedure TfrmCadFuncionario.btnSalvarClick(Sender: TObject);
var
confValida:Boolean;
begin
confValida:=True;

//--------------------------------SE CHECK TRABALHANDO FOR TRUE
if checkBSituacao.Checked=True then
//-------------------------DECLARA DATA DE DEMISSÃO COMO FALSA E EDIT = VAZIO
begin
edtEndereco.Text:='';
//--------------------------SENHAS DIFERENTES
if edtSenha.Text<>edtConfirmaSenha.Text then
begin
 Application.MessageBox('Senhas não correspondentes','ERRO',16);
 confValida:=False;
 edtSenha.Clear;
 edtConfirmaSenha.Clear;
end
else
begin
  confValida:=True;
end;

//---------------------------------VERIFICAÇÃO DE CAMPO VAZIO
if ((edtNome.Text ='') or(cbbTipo.Text='' )or (edtCPF.Text='')
or(edtPagBruto.Text='')or(edtCargo.Text=''))
  then

  begin
    if edtNome.Text='' then
    begin
      Application.MessageBox('Digite o nome','ERRO',16);
      confValida:=False;
    end;

    if cbbTipo.Text = '' then
    begin
      Application.MessageBox('Digite o tipo de funcionário','ERRO',16);
      confValida:=False;
      MessageBox(Application.Handle,'Confirme o tipo de funcionario!','Aviso',16);
    end;

    if edtCPF.Text='' then
    begin
      Application.MessageBox('Digite o CPF','ERRO',16);
      confValida:=False;
    end;

    if edtPagBruto.Text='' then
    begin
      Application.MessageBox('Digite o pagamento bruto','ERRO',16);
      confValida:=False;
    end;

    if edtCargo.Text='' then
    begin
      Application.MessageBox('Digite o cargo','ERRO',16);
      confValida:=False;
    end;
  end;
DSFuncionarios.DataSet.Post;

  if MessageBox(Application.Handle,'Deseja cadstrar email ou Telefone?','Telefone/Email'+
  'Tel/Mail',36)=IDYES then
   begin
frmTelEmail := TfrmTelEmail.Create(Self);
    try
      frmTelEmail.Tag:=1;
      frmTelEmail.ShowModal;
    finally
       frmTelEmail.Release;
       frmTelEmail:= Nil;
    end;
    end;
    end
//--------------------------- SE O CHECK TRABALHANDO FOR FALSO
    else
      if checkBSituacao.Checked=False then
begin
//------------------------------EDIT DATA DE DEMISSÃO IGUAL AO DTP DEMISSÃO E GANHA VISIBLE=TRUE
{edtDtaDemissao.Text:= DateToStr(dtpDemicao.Date);
dtpDemicao.Visible:=True;}

//-----------------------------CONFIRMAÇÃO DE DATAS
if edtDtaNascimento.Text = DateToStr(Date) then
begin
  if MessageBox(Application.Handle,'A data de nascimento está correta?',
  'Confirmação Data Nascimento',36)=IDNO then
   begin
     confValida:=False;
     MessageBox(Application.Handle,'Confirme a data de nascimento!','Aviso',16)
   end
   else
   begin
     confValida:=True;
   end;


if edtDtaDemissao.Text = DateToStr(Date) then
begin
  if MessageBox(Application.Handle,'A data de demissão está correta?','Confirmação'+
  ' Data de Demissão',36)=IDNO then
   begin
     confValida:=False;
     MessageBox(Application.Handle,'Confirme a data de Demissão!','Aviso',16);
   end
   else
   begin
     confValida:=True;
   end;
end;
//-----------------------------------------SENHAS CORRESPONDENTES
begin
if edtSenha.Text<>edtConfirmaSenha.Text then
begin
 Application.MessageBox('Senhas não correspondentes','ERRO',16);
 confValida:=False;
 edtSenha.Clear;
 edtConfirmaSenha.Clear;
end
else
begin
  confValida:=True;
end;

//----------------------------- VALIDAÇÃO DE CAMPOS VAZIOS
if ((edtNome.Text ='') or(cbbTipo.Text='' )or (edtCPF.Text='')
or(edtPagBruto.Text='')or(edtCargo.Text=''))
  then
  begin
    if edtNome.Text='' then
    begin
      Application.MessageBox('Digite o nome','ERRO',16);
      confValida:=False;
    end;

    if cbbTipo.Text = '' then
    begin
      Application.MessageBox('Digite o tipo de funcionário','ERRO',16);
      confValida:=False;
      MessageBox(Application.Handle,'Confirme o tipo de funcionario!','Aviso',16);
    end;

    if edtCPF.Text='' then
    begin
      Application.MessageBox('Digite o CPF','ERRO',16);
      confValida:=False;
    end;

    if edtPagBruto.Text='' then
    begin
      Application.MessageBox('Digite o pagamento bruto','ERRO',16);
      confValida:=False;
    end;

    if edtCargo.Text='' then
    begin
      Application.MessageBox('Digite o cargo','ERRO',16);
      confValida:=False;
    end;
  end;
DSFuncionarios.DataSet.Post;

  if MessageBox(Application.Handle,'Deseja cadstrar email ou Telefone?','Telefone/Email'+
  'Tel/Mail',36)=IDYES then
   begin
frmTelEmail := TfrmTelEmail.Create(Self);
    try
      frmTelEmail.Tag:=1;
      frmTelEmail.ShowModal;
    finally
       frmTelEmail.Release;
       frmTelEmail:= Nil;
    end;

    end;
       end;
end;
end;
end;

procedure TfrmCadFuncionario.btnSalvarFotoClick(Sender: TObject);
begin
DSFotos.DataSet.Post;
end;

procedure TfrmCadFuncionario.checkBSituacaoClick(Sender: TObject);
begin
//----------------------------------CONDICIONAL DE O QUE OCORRE SE O CHECK FOR TRUE
if checkBSituacao.Checked=True then
begin
dtpDemicao.Visible:=False;
edtDtaDemissao.Height:=1;
edtDtaDemissao.Width:=1;
end

else
//----------------------------------CONDICIONAL DE O QUE OCORRE SE O CHECK FOR FALSE
if checkBSituacao.Checked=false then
begin
edtDtaDemissao.Text:= DateToStr(dtpDemicao.Date);
dtpDemicao.Visible:=True;
end;
end;

procedure TfrmCadFuncionario.ConsultaCep(Cep: String);
var
 Flags : Cardinal;
 const
 _ver='true';
begin
  if not InternetGetConnectedState(@Flags, 0) then
    begin
    Showmessage('Sem conexão. Preencha todos os campos');
    end
  else
  begin
    edtCEP.Clear;
    edtEndereco.Clear;
    edtBairro.Clear;
    edtcidade.Clear;
    cbbEstado.ItemIndex:=-1;
    XMLDocument1.FileName := 'https://viacep.com.br/ws/'+Trim(Cep)+ '/xml/';
    XMLDocument1.Active := true;
      if XMLDocument1.DocumentElement.ChildValues[0] = _ver then
      begin
       showmessage('Cep inexistente ou não encontrado, tente outro ou preencha  '+
        'todos os campos!');
      end
      else
      begin
       dm.qryFuncionarios.FieldByName('funBairro').AsString:=xmldocument1.DocumentElement.ChildNodes['bairro'].Text;
       dm.qryFuncionarios.FieldByName('funEndereco').AsString:=XMLDocument1.DocumentElement.ChildNodes['logradouro'].Text;
       dm.qryFuncionarios.FieldByName('funCidade').AsString:=XMLDocument1.DocumentElement.ChildNodes['localidade'].Text;
       dm.qryFuncionarios.FieldByName('funEstado').AsString:=XMLDocument1.DocumentElement.ChildNodes['uf'].Text;
      end;
 end;
   edtcep.Text:=Cep;
end;

procedure TfrmCadFuncionario.DSFuncionariosDataChange(Sender: TObject;
  Field: TField);


begin
      if DSFuncionarios.State <> dsInsert then
      begin
         edtDtaAdmissao.Text:= DateToStr(dtpAdmicao.Date);
      end;
      if DSFuncionarios.State <> dsInsert then
      begin
         edtDtaNascimento.Text:= DateToStr(dtpNascimento.Date);
      end;
end;

procedure TfrmCadFuncionario.DSFuncionariosStateChange(Sender: TObject);
begin
 imgBtnInserir.Enabled :=DSFuncionarios.State=dsBrowse;
 imgBtnEditar.Enabled :=DSFuncionarios.State=dsBrowse;
 btnRemover.Enabled  :=DSFuncionarios.State=dsBrowse;
 imgBtnSalvar.Enabled :=DSFuncionarios.State in [dsInsert, dsEdit];
 imgBtnCancelar.Enabled :=DSFuncionarios.State in [dsInsert, dsEdit];
 dtpAdmicao.Enabled:=DSFuncionarios.State in [dsInsert, dsEdit];
 dtpDemicao.Enabled:=DSFuncionarios.State in [dsInsert, dsEdit];
 dtpNascimento.Enabled:=DSFuncionarios.State in [dsInsert, dsEdit];
 btnTelMail.Enabled:=DSFuncionarios.State in [dsEdit];

    if DSFuncionarios.State in [dsInsert, dsEdit] then   // modo inserção deixa o shape em cinza
     begin
      spBtnInserir.Brush.Color:=clgray;
      spBtnEditar.Brush.Color:=clgray;
      spBtnRemover.Brush.Color:=clgray;
      spBtnCancelar.Brush.Color:=$00B28541;
      spBtnSalvar.Brush.Color:=$00B28541;
     end
     else
     begin
      spBtnInserir.Brush.Color:=$00B28541;
      spBtnEditar.Brush.Color:=$00B28541;
      spBtnRemover.Brush.Color:=$00B28541;
      spBtnCancelar.Brush.Color:=clgray;
      spBtnSalvar.Brush.Color:=clgray;
     end;
 end;

procedure TfrmCadFuncionario.dtpAdmicaoChange(Sender: TObject);
begin
edtDtaAdmissao.Text := DateToStr(dtpAdmicao.Date);
end;

procedure TfrmCadFuncionario.dtpDemicaoChange(Sender: TObject);
begin
edtDtaDemissao.Text := DateToStr(dtpDemicao.date);
end;

procedure TfrmCadFuncionario.dtpNascimentoChange(Sender: TObject);
begin
edtDtaNascimento.Text := DateToStr(dtpNascimento.date);
end;

procedure TfrmCadFuncionario.edtCEPExit(Sender: TObject);
begin
ConsultaCep(edtCEP.Text);
end;

procedure TfrmCadFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.qryFuncionarios.Close;
end;

procedure TfrmCadFuncionario.FormShow(Sender: TObject);
begin
DM.qryFuncionarios.Open;
DM.qryFuncFotos.Open;
TStringField(DM.qryFuncionarios.FieldByName('funCEP')).EditMask :=
  '99999-999;1;_';
end;

procedure TfrmCadFuncionario.imgBtnEditarClick(Sender: TObject);
begin
begin
DSFuncionarios.DataSet.Edit;
edtConfirmaSenha.Text:=edtSenha.Text;

if checkBSituacao.Checked=True then
begin
dtpDemicao.Visible:=False;
edtDtaDemissao.Height:=1;
edtDtaDemissao.Width:=1;
end
else
begin
  dtpDemicao.Visible:=True;
end;
end;
end;

procedure TfrmCadFuncionario.imgBtnCancelarClick(Sender: TObject);
begin
DSFuncionarios.DataSet.Cancel;
end;

procedure TfrmCadFuncionario.imgBtnInserirClick(Sender: TObject);
begin
DSFuncionarios.DataSet.Append;
edtDtaNascimento.Text := DateToStr(Date);
dtpNascimento.Date:= Date;

edtDtaAdmissao.Text := DateToStr(Date);
dtpAdmicao.Date:= Date;

//edtDtaDemissao.Text := DateToStr(Date);
dtpDemicao.Date:= Date;
checkBSituacao.Checked:=true;
end;

procedure TfrmCadFuncionario.imgBtnSalvarClick(Sender: TObject);
var
confValida:Boolean;
begin
confValida:=True;

//--------------------------------SE CHECK TRABALHANDO FOR TRUE
if checkBSituacao.Checked=True then
//-------------------------DECLARA VISIBLE DA DATA DE DEMISSÃO COMO FALSA E EDIT = VAZIO
begin
edtDtaDemissao.Text:='';
dtpDemicao.Visible:=False;
//--------------------------SENHAS DIFERENTES
if edtSenha.Text<>edtConfirmaSenha.Text then
begin
 Application.MessageBox('Senhas não correspondentes','ERRO',16);
 confValida:=False;
 edtSenha.Clear;
 edtConfirmaSenha.Clear;
end
else
begin
  confValida:=True;
end;

//---------------------------------VERIFICAÇÃO DE CAMPO VAZIO
if ((edtNome.Text ='') or(cbbTipo.Text='' )or (edtCPF.Text='')
or(edtPagBruto.Text='')or(edtCargo.Text=''))
  then

  begin
    if edtNome.Text='' then
    begin
      Application.MessageBox('Digite o nome','ERRO',16);
      confValida:=False;
    end;

    if cbbTipo.Text = '' then
    begin
      Application.MessageBox('Digite o tipo de funcionário','ERRO',16);
      confValida:=False;
      MessageBox(Application.Handle,'Confirme o tipo de funcionario!','Aviso',16);
    end;

    if edtCPF.Text='' then
    begin
      Application.MessageBox('Digite o CPF','ERRO',16);
      confValida:=False;
    end;

    if edtPagBruto.Text='' then
    begin
      Application.MessageBox('Digite o pagamento bruto','ERRO',16);
      confValida:=False;
    end;

    if edtCargo.Text='' then
    begin
      Application.MessageBox('Digite o cargo','ERRO',16);
      confValida:=False;
    end;
  end;
//-------------------------------------CONFIRMAÇÃO PARA SALVAR
   if confValida= true then
   begin
DSFuncionarios.DataSet.Post;

if MessageBox(Application.Handle,'Deseja cadastrar/editar Email ou Telefone?','Telefone/Email'+
'Tel/Mail',36)=IDYES then

begin
frmTelEmail := TfrmTelEmail.Create(Self);
    try
      frmTelEmail.Tag:=1;
      frmTelEmail.ShowModal;
    finally
       frmTelEmail.Release;
       frmTelEmail:= Nil;
    end;

end;
end;
    end;
//--------------------------- SE O CHECK TRABALHANDO FOR FALSO

if checkBSituacao.Checked=False then
begin


//------------------------------EDIT DATA DE DEMISSÃO IGUAL AO DTP DEMISSÃO E GANHA VISIBLE=TRUE
edtDtaDemissao.Text:= DateToStr(dtpDemicao.Date);
dtpDemicao.Visible:=True;

//-----------------------------CONFIRMAÇÃO DE DATAS
if edtDtaNascimento.Text = DateToStr(Date) then
begin
  if MessageBox(Application.Handle,'A data de nascimento está correta?',
  'Confirmação Data Nascimento',36)=IDNO then
   begin
     confValida:=False;
     MessageBox(Application.Handle,'Confirme a data de nascimento!','Aviso',16)
   end
   else
   begin
     confValida:=True;
   end;


if edtDtaDemissao.Text = DateToStr(Date) then
begin
  if MessageBox(Application.Handle,'A data de demissão está correta?','Confirmação'+
  ' Data de Demissão',36)=IDNO then
   begin
     confValida:=False;
     MessageBox(Application.Handle,'Confirme a data de Demissão!','Aviso',16);
   end
   else
   begin
     confValida:=True;
   end;
end;
//-----------------------------------------SENHAS CORRESPONDENTES
begin
if edtSenha.Text<>edtConfirmaSenha.Text then
begin
 Application.MessageBox('Senhas não correspondentes','ERRO',16);
 confValida:=False;
 edtSenha.Clear;
 edtConfirmaSenha.Clear;
end
else
begin
  confValida:=True;
end;

//----------------------------- VALIDAÇÃO DE CAMPOS VAZIOS
if ((edtNome.Text ='') or(cbbTipo.Text='' )or (edtCPF.Text='')
or(edtPagBruto.Text='')or(edtCargo.Text=''))
  then
  begin
    if edtNome.Text='' then
    begin
      Application.MessageBox('Digite o nome','ERRO',16);
      confValida:=False;
    end;

    if cbbTipo.Text = '' then
    begin
      Application.MessageBox('Digite o tipo de funcionário','ERRO',16);
      confValida:=False;
      MessageBox(Application.Handle,'Confirme o tipo de funcionario!','Aviso',16);
    end;

    if edtCPF.Text='' then
    begin
      Application.MessageBox('Digite o CPF','ERRO',16);
      confValida:=False;
    end;

    if edtPagBruto.Text='' then
    begin
      Application.MessageBox('Digite o pagamento bruto','ERRO',16);
      confValida:=False;
    end;

    if edtCargo.Text='' then
    begin
      Application.MessageBox('Digite o cargo','ERRO',16);
      confValida:=False;
    end;
  end;
//----------------------------------------CONFIRMAÇÃO PRA SALVAR
 if confValida = true then
 begin
   DSFuncionarios.DataSet.Post;

   if MessageBox(Application.Handle,'Deseja cadastrar/editar Email ou Telefone?','Telefone/Email'+
  'Tel/Mail',36)=IDYES then

   begin
frmTelEmail := TfrmTelEmail.Create(Self);
    try
      frmTelEmail.Tag:=1;
      frmTelEmail.ShowModal;
    finally
       frmTelEmail.Release;
       frmTelEmail:= Nil;
    end;

 end;
 end;
 end;


end;
end;
end;

procedure TfrmCadFuncionario.lblFecharClick(Sender: TObject);
begin
  pnlObservacoes.Visible:=False;
  btnObs.Visible:=True;
end;

procedure TfrmCadFuncionario.lblFecharFotoClick(Sender: TObject);
begin
pnlDadosPessoais.Visible:=True;
pnlContato.Visible:=True;
pnlBotoes.Visible:=True;
pnlDadosTrab.Visible:=True;
frmCadFuncionario.Width:=1019;
frmCadFuncionario.Height:=811;

end;

procedure TfrmCadFuncionario.btnVerNetClick(Sender: TObject);
var
Flags:Cardinal;
begin
  if not InternetGetConnectedState(@Flags, 0) then
    begin
    Showmessage('Sem conexão');
    btnVerNet.Glyph.LoadFromFile('../Debug/imagem/semconexao.bmp');
    btnVerNet.Hint:='Clique para tentar se reconectar';
    end
  else
    begin
      showmessage('Conectado');
      btnVerNet.Glyph.LoadFromFile('../Debug//imagem/comconexao.bmp');
      btnVerNet.Hint:='Você esta Conectado';
    end;
end;
end.
