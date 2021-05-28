unit UCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, System.Actions,
  Vcl.ActnList,Xml.XMLDoc, WinInet, Xml.xmldom, Xml.XMLIntf, IdBaseComponent,
  IdComponent, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdSSLOpenSSL, Vcl.ImgList;

type
  TfrmCadCliente = class(TForm)
    lblNomeCli: TLabel;
    edtNome: TDBEdit;
    lblTipoCli: TLabel;
    lblCodigoCli: TLabel;
    dsCadastroCli: TDataSource;
    dbeCodCli: TDBText;
    pnlPrimeiro: TPanel;
    cbbTipo: TDBComboBox;
    pnlSegundo: TPanel;
    edtDataDeNasc: TDBEdit;
    lblDtNascCli: TLabel;
    DtpCliente: TDateTimePicker;
    edtEstadoCivil: TDBEdit;
    lblEstadoCivilCli: TLabel;
    lblCpfCli: TLabel;
    edtCpfCnpj: TDBEdit;
    lblRgCli: TLabel;
    edtRG: TDBEdit;
    pnlTerceiro: TPanel;
    lblEstadoCli: TLabel;
    cbbEstado: TDBComboBox;
    lblCidadeCli: TLabel;
    edtCidade: TDBEdit;
    lblBairroCli: TLabel;
    edtBairro: TDBEdit;
    edtEndereco: TDBEdit;
    lblEnderecoCli: TLabel;
    pnlQuarto: TPanel;
    actLista: TActionList;
    actTelMail: TAction;
    btnTelMail: TSpeedButton;
    lblCEP: TLabel;
    edtCEP: TDBEdit;
    lblNumero: TLabel;
    edtNumero: TDBEdit;
    btnVerNet: TSpeedButton;
    XMLDocument1: TXMLDocument;
    SSLIO: TIdSSLIOHandlerSocketOpenSSL;
    DBNavador: TDBNavigator;
    spBtnInserir: TShape;
    lblInserir: TLabel;
    imgBtnInserir: TImage;
    spBtnEditar: TShape;
    spBtnSalvar: TShape;
    spBtnCancelar: TShape;
    lblBtnEditar: TLabel;
    lblBtnSalvar: TLabel;
    lblBtnCancelar: TLabel;
    imgBtnEditar: TImage;
    imgBtnSalvar: TImage;
    imgbtnCancelar: TImage;
    spCabecalhoTop: TShape;
    spCabecalhoBot: TShape;
    imgLista: TImageList;
    spbtnExcluir: TShape;
    Label1: TLabel;
    btnExcluir: TImage;
    procedure DtpClienteChange(Sender: TObject);
    procedure dsCadastroCliDataChange(Sender: TObject; Field: TField);
    procedure dsCadastroCliStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cbbTipoChange(Sender: TObject);
    procedure actTelMailExecute(Sender: TObject);
    procedure btnVerNetClick(Sender: TObject);
    procedure edtCEPExit(Sender: TObject);
    procedure imgBtnInserirClick(Sender: TObject);
    procedure imgBtnEditarClick(Sender: TObject);
    procedure imgBtnSalvarClick(Sender: TObject);
    procedure imgbtnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConsultaCep(Cep: String);
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation

{$R *.dfm}

uses UDM, UTelMail, UPrincipal;


procedure TfrmCadCliente.actTelMailExecute(Sender: TObject);
begin
frmTelEmail := TfrmTelEmail.Create(Self);

    try
      frmTelEmail.Tag:=0;
      frmTelEmail.ShowModal;
    finally
       frmTelEmail.Release;
       frmTelEmail:= Nil;
    end;
end;

procedure TfrmCadCliente.btnExcluirClick(Sender: TObject);
begin
if MessageBox(Application.Handle,'Você deseja realmente excluir este funcionário?',
    'Excluir',36) =idYes then
    begin
dsCadastroCli.DataSet.Delete;
end;
end;

procedure TfrmCadCliente.btnVerNetClick(Sender: TObject);
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

procedure TfrmCadCliente.cbbTipoChange(Sender: TObject);
begin

if cbbTipo.ItemIndex=0 then
begin
lblCpfCli.Caption:='CPF';


TStringField(DM.qryClientes.FieldByName('cliCpfCnpj')).EditMask :=
  '999.999.999-99;1;_';
TStringField(DM.qryClientes.FieldByName('cliTipo')).Value :='Físico';
edtRG.Visible:=True;
edtEstadoCivil.Visible:=True;
end

else

if cbbTipo.ItemIndex=1 then
begin
lblCpfCli.Caption:='CNPJ';

TStringField(DM.qryClientes.FieldByName('cliCpfCnpj')).EditMask :=
  '99\.999\.999\/9999\-99;1;_';
TStringField(DM.qryClientes.FieldByName('cliTipo')).Value :='Jurídico';

edtRG.Visible:=False;
edtEstadoCivil.Visible:=False;
end;
end;

procedure TfrmCadCliente.ConsultaCep(Cep: String);
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
       dm.qryClientes.FieldByName('cliBairro').AsString:=xmldocument1.DocumentElement.ChildNodes['bairro'].Text;
       dm.qryClientes.FieldByName('cliEndereco').AsString:=XMLDocument1.DocumentElement.ChildNodes['logradouro'].Text;
       dm.qryClientes.FieldByName('cliCidade').AsString:=XMLDocument1.DocumentElement.ChildNodes['localidade'].Text;
       dm.qryClientes.FieldByName('cliEstado').AsString:=XMLDocument1.DocumentElement.ChildNodes['uf'].Text;
      end;
 end;
   edtcep.Text:=Cep;
end;

procedure TfrmCadCliente.dsCadastroCliDataChange(Sender: TObject;
  Field: TField);
begin
if dsCadastroCli.State <> dsInsert  then
begin
   edtDataDeNasc.Text:=DateToStr(DtpCliente.Date);
end;

if dsCadastroCli.State = dsEdit  then
begin
 DtpCliente.Date:=StrToDate(edtDataDeNasc.Text);
end;



end;

procedure TfrmCadCliente.dsCadastroCliStateChange(Sender: TObject);
begin
imgBtnInserir.Enabled := dsCadastroCli.State = dsBrowse;
imgBtnEditar.Enabled := dsCadastroCli.State = dsBrowse;
imgBtnSalvar.Enabled := dsCadastroCli.State in [dsInsert, dsEdit];
imgbtnCancelar.Enabled := dsCadastroCli.State in [dsInsert, dsEdit];
btnExcluir.Enabled:= dscadastrocli.State = dsbrowse;
DtpCliente.Enabled := dsCadastroCli.State in [dsInsert, dsEdit];
btnTelMail.Enabled := dsCadastroCli.State in [dsEdit];

     if dsCadastroCli.State in [dsInsert, dsEdit] then   // modo inserção deixa o shape em cinza
     begin
      spBtnInserir.Brush.Color:=clgray;
      spBtnEditar.Brush.Color:=clgray;
      spbtnExcluir.Brush.Color:=clGray;
      spBtnCancelar.Brush.Color:=$00B02BBD;
      spBtnSalvar.Brush.Color:=$00B02BBD;
     end
     else
     begin
      spBtnInserir.Brush.Color:=$00B02BBD;
      spBtnEditar.Brush.Color:=$00B02BBD;
      spbtnExcluir.Brush.Color:=$00B02BBD;
      spBtnCancelar.Brush.Color:=clgray;
      spBtnSalvar.Brush.Color:=clgray;
     end;
end;

procedure TfrmCadCliente.DtpClienteChange(Sender: TObject);
begin
  edtDataDeNasc.Text := DateToStr (DtpCliente.Date);
end;

procedure TfrmCadCliente.edtCEPExit(Sender: TObject);
begin
ConsultaCep(edtCEP.Text);
 end;

procedure TfrmCadCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin

frmPrincipal.new:=False;
frmPrincipal.edt:=False;

DM.qryClientes.Open;
end;

procedure TfrmCadCliente.FormShow(Sender: TObject);
var
Flags:Cardinal;
begin
DM.qryClientes.Open;
TStringField(DM.qryClientes.FieldByName('cliCEP')).EditMask :=
  '99999-999;1;_';

  if not InternetGetConnectedState(@Flags, 0) then
    begin
    Showmessage('Sem conexão com internet; Preencha todos os Campos ou tente se reconectar.');
    btnVerNet.Glyph.LoadFromFile('../Debug/imagem/semconexao.bmp');
    btnVerNet.Hint:='Clique para tentar se reconectar';
    end
  else
    begin
      btnVerNet.Glyph.LoadFromFile('../Debug//imagem/comconexao.bmp');
      btnVerNet.Hint:='Você esta Conectado';
    end;

    if frmPrincipal.new=True then
begin
  dsCadastroCli.DataSet.Append;
end
else if frmPrincipal.edt=True then
     begin
       dm.qryAgendamentosagendCodigo.Value:=frmPrincipal.editar;
       dsCadastroCli.DataSet.Edit;
     end;
    end;



procedure TfrmCadCliente.imgbtnCancelarClick(Sender: TObject);
begin
 dsCadastroCli.DataSet.Cancel;
end;

procedure TfrmCadCliente.imgBtnEditarClick(Sender: TObject);
begin
  dsCadastroCli.DataSet.Edit;
  end;

procedure TfrmCadCliente.imgBtnInserirClick(Sender: TObject);
begin
dsCadastroCli.DataSet.Append;
DtpCliente.Date:=date;
end;

procedure TfrmCadCliente.imgBtnSalvarClick(Sender: TObject);
var
confValida : Boolean;
begin
  confValida := True;

  if edtDataDeNasc.Text = DateToStr(Date) then
  begin
     if MessageBox (Application.Handle,
     'A data de nascimento está correta ?','Confirmação',36) = idNo then
    begin
    confValida := False;
    DtpCliente.SetFocus;
    end
      else
      begin
      confValida := True;
    end;
  end;
  if ((edtNome.Text = '' ) or (edtEndereco.Text = '' ) or (edtBairro.Text = '')
  or (edtCidade.Text = '') or (edtCpfCnpj.Text='')or(cbbEstado.ItemIndex=-1)) then
begin
  if edtEndereco.Text = ''  then
  begin
    Application.MessageBox('Digite o endereço !', 'ERRO',16);
    confValida := False;
    edtEndereco.SetFocus;
  end;
  if edtBairro.Text = '' then
  begin
    Application.MessageBox('Digite o bairro !', 'ERRO',16);
    confValida := False;
    edtEndereco.SetFocus;
  end;
  if edtCidade.Text = '' then
  begin
    Application.MessageBox('Digite a cidade !', 'ERRO',16);
    confValida := False;
    edtEndereco.SetFocus;
  end;
  if edtCpfCnpj.Text = '' then
  begin
    Application.MessageBox('Digite o CPF !', 'ERRO',16);
    confValida := False;
    edtEndereco.SetFocus;
  end;
   if (edtNome.Text = '') then
   begin
    Application.MessageBox('Digite o nome !', 'ERRO',16);
    confValida := False;
    edtEndereco.SetFocus;
  end;
  if cbbEstado.ItemIndex=-1 then
  begin
    Application.MessageBox('Digite o estado !', 'ERRO',16);
    confValida := False;
    cbbEstado.SetFocus;
  end;
end;
  if confValida = True then
begin

if cbbTipo.ItemIndex=1 then
begin
  edtRG.Visible:=True;
  edtRG.Text:='';
end;

  dsCadastroCli.DataSet.Post;
  Application.MessageBox('Cadastro salvo com sucesso!','Ok!',64);
  edtEstadoCivil.Visible:=True;
 if frmPrincipal.edt=False then
 begin
   if MessageBox(Application.Handle,'Deseja cadastrar/editar Email ou Telefone?','Telefone/Email'+
  'Tel/Mail',36)=IDYES then
   begin
frmTelEmail := TfrmTelEmail.Create(Self);
    try
      frmTelEmail.Tag:=0;
      frmTelEmail.ShowModal;
    finally
       frmTelEmail.Release;
       frmTelEmail:= Nil;
    end;
 end;



end;
end;
end;

end.
