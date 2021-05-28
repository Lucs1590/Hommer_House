unit UCadServTerceirizado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Data.DB, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ImgList,IdSSL,
  IdSSLOpenSSL, System.Actions, Vcl.ActnList, Xml.xmldom, Xml.XMLIntf, IdBaseComponent,
  IdComponent, IdServerIOHandler, WinInet, Xml.XMLDoc;

type
  TfrmCadServTerceirizado = class(TForm)
    lblCodigo: TLabel;
    dsCadastrarServTerc: TDataSource;
    lblNome: TLabel;
    edtNome: TDBEdit;
    lblServico: TLabel;
    edtServico: TDBEdit;
    lblObs: TLabel;
    lblBairro: TLabel;
    edtBairro: TDBEdit;
    lblEndereco: TLabel;
    edtEndereco: TDBEdit;
    lblCidade: TLabel;
    edtCidade: TDBEdit;
    lblEstado: TLabel;
    MemoObs: TDBMemo;
    txtCodigo: TDBText;
    cbbEstado: TDBComboBox;
    btnObs: TSpeedButton;
    pnlObservacoes: TPanel;
    lblFechar: TLabel;
    actServTer: TActionList;
    actObs: TAction;
    actTelMail: TAction;
    imgLista: TImageList;
    pnlPessoais: TPanel;
    pnlContato: TPanel;
    lnlNumero: TLabel;
    edtNumero: TDBEdit;
    lblCEP: TLabel;
    edtCEP: TDBEdit;
    btnVerNet: TSpeedButton;
    pnlBotoes: TPanel;
    spCabecalhoBot: TShape;
    spCabecalhoTop: TShape;
    spBtnInserir: TShape;
    spBtnEditar: TShape;
    spBtnSalvar: TShape;
    spBtnExcluir: TShape;
    spBtnCancelar: TShape;
    lblInserir: TLabel;
    lblEditar: TLabel;
    lblSalvar: TLabel;
    lblExcluir: TLabel;
    lblCancelar: TLabel;
    ImgBtnSalvar: TImage;
    ImgBtnEditar: TImage;
    ImgBtnExcluir: TImage;
    ImgBtnInserir: TImage;
    ImgBtnCancelar: TImage;
    btnTelMail: TSpeedButton;
    XMLDocument1: TXMLDocument;
    SSLIO: TIdServerIOHandlerSSLOpenSSL;
    DBNavigador: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure ImgBtnEditarClick(Sender: TObject);
    procedure ImgBtnExcluirClick(Sender: TObject);
    procedure ImgBtnCancelarClick(Sender: TObject);
    procedure dsCadastrarServTercStateChange(Sender: TObject);
    procedure actObsExecute(Sender: TObject);
    procedure actTelMailExecute(Sender: TObject);
    procedure lblFecharClick(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure btnVerNetClick(Sender: TObject);
    procedure edtCEPExit(Sender: TObject);
    procedure dsCadastrarServTercDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConsultaCep(Cep: String);
  end;

var
  frmCadServTerceirizado: TfrmCadServTerceirizado;

implementation

{$R *.dfm}

uses UDM, UTelMail;

procedure TfrmCadServTerceirizado.actObsExecute(Sender: TObject);
begin
pnlObservacoes.Height:=293;
pnlObservacoes.Width:=262;
pnlObservacoes.Visible:=True;
btnObs.Visible:=False;
end;

procedure TfrmCadServTerceirizado.actTelMailExecute(Sender: TObject);
begin
frmTelEmail := TfrmTelEmail.Create(Self);

    try
    frmTelEmail.Tag:=2;
      frmTelEmail.ShowModal;
    finally
       frmTelEmail.Release;
       frmTelEmail:= Nil;
    end;
end;

procedure TfrmCadServTerceirizado.ImgBtnCancelarClick(Sender: TObject);
begin
dsCadastrarServTerc.DataSet.Cancel;
end;

procedure TfrmCadServTerceirizado.ImgBtnEditarClick(Sender: TObject);
begin
dsCadastrarServTerc.DataSet.Edit;
end;

procedure TfrmCadServTerceirizado.ImgBtnExcluirClick(Sender: TObject);
begin
if MessageBox(Application.Handle,
'Você deseja realmente excluir este registro?','Excluir',36) =idYes then
begin
dsCadastrarServTerc.DataSet.delete;
end;
end;

procedure TfrmCadServTerceirizado.ConsultaCep(Cep: String);
var
 Flags: Cardinal;
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
       dm.qryServTerceirizados.FieldByName('terBairro').AsString:=xmldocument1.DocumentElement.ChildNodes['bairro'].Text;
       dm.qryServTerceirizados.FieldByName('terEndereco').AsString:=XMLDocument1.DocumentElement.ChildNodes['logradouro'].Text;
       dm.qryServTerceirizados.FieldByName('terCidade').AsString:=XMLDocument1.DocumentElement.ChildNodes['localidade'].Text;
       dm.qryServTerceirizados.FieldByName('terEstado').AsString:=XMLDocument1.DocumentElement.ChildNodes['uf'].Text;
      end;
 end;
   edtcep.Text:=Cep;
end;

procedure TfrmCadServTerceirizado.dsCadastrarServTercDataChange(Sender: TObject;
  Field: TField);
begin
//----------------------------------------BTN CANCELAR
if imgbtnCancelar.Enabled=False then
begin
spBtnCancelar.Brush.Color:=clGray;
end;

if imgbtnCancelar.Enabled=True then
begin
spBtnCancelar.Brush.Color:=$00B85B78;
end;
//---------------------------------------BTN SALVAR
if imgBtnSalvar.Enabled=False then
begin
spBtnSalvar.Brush.Color:=clGray;
end;

if imgBtnSalvar.Enabled=True then
begin
spBtnSalvar.Brush.Color:=$00B85B78;
end;
//---------------------------------------BTN EXCLUIR
if ImgBtnExcluir.Enabled=False then
begin
spBtnExcluir.Brush.Color:=clGray;
end;

if ImgBtnExcluir.Enabled=True then
begin
spBtnExcluir.Brush.Color:=$00B85B78;
end;
end;

procedure TfrmCadServTerceirizado.dsCadastrarServTercStateChange(
  Sender: TObject);
begin
 ImgBtnInserir.Enabled := dsCadastrarServTerc.State = dsBrowse;
 ImgBtnEditar.Enabled := dsCadastrarServTerc.State = dsBrowse;
 ImgBtnSalvar.Enabled := dsCadastrarServTerc.State in [dsInsert,dsEdit];
 ImgBtnCancelar.Enabled := dsCadastrarServTerc.State in [dsInsert,dsEdit];
 ImgBtnExcluir.Enabled := dsCadastrarServTerc.State in [dsInsert,dsEdit];
 btnTelMail.Enabled:=dsCadastrarServTerc.State in [dsEdit];

 if dsCadastrarServTerc.State in [dsInsert, dsEdit] then   // modo inserção deixa o shape em cinza
     begin
      spBtnInserir.Brush.Color:=clgray;
      spBtnEditar.Brush.Color:=clgray;
      spBtnExcluir.Brush.Color:=clgray;
      spBtnCancelar.Brush.Color:=$00B85B78;
      spBtnSalvar.Brush.Color:=$00B85B78;
     end
     else
     begin
      spBtnInserir.Brush.Color:=$00B85B78;
      spBtnEditar.Brush.Color:=$00B85B78;
      spBtnExcluir.Brush.Color:=$00B85B78;
      spBtnCancelar.Brush.Color:=clgray;
      spBtnSalvar.Brush.Color:=clgray;
     end;
 end;

procedure TfrmCadServTerceirizado.edtCEPExit(Sender: TObject);
begin
ConsultaCep(edtCEP.Text);
end;

procedure TfrmCadServTerceirizado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.qryServTerceirizados.Close;
end;

procedure TfrmCadServTerceirizado.FormShow(Sender: TObject);
begin
DM.qryServTerceirizados.Open;
TStringField(DM.qryServTerceirizados.FieldByName('terCEP')).EditMask :=
  '99999-999;1;_';
end;

procedure TfrmCadServTerceirizado.Image1Click(Sender: TObject);
var
confvalida : Boolean ;
begin
confValida := True;
if ((edtNome.Text='') or (edtEndereco.Text ='')or(edtServico.Text='')) then
begin
  if edtEndereco.Text=''  then
  begin
    Application.MessageBox('É necessário informar o endereço!','ERRO',16);
    ConfValida := False;
    edtEndereco.SetFocus;
  end;
  if edtNome.Text='' then
  begin
    Application.MessageBox('Digite o Nome, Por Favor!','ERRO',16);
    confValida :=False;
    edtNome.SetFocus;
  end;
  if edtServico.Text='' then
  begin
    Application.MessageBox('Digite o Serviço Terceirizado Requirido!','ERRO',16);
    confvalida :=False;
    edtServico.SetFocus;
  end;
end;
if confValida = true then
begin
dsCadastrarServTerc.DataSet.Post;
Application.MessageBox('Registro gravado com sucesso!','Tudo ok!',64);

  if MessageBox(Application.Handle,'Deseja cadstrar email ou Telefone?','Telefone/Email'+
  'Tel/Mail',36)=IDYES then
   begin
frmTelEmail := TfrmTelEmail.Create(Self);
    try
      frmTelEmail.Tag:=2;
      frmTelEmail.ShowModal;
    finally
       frmTelEmail.Release;
       frmTelEmail:= Nil;
    end;
   end;
end;
end;

procedure TfrmCadServTerceirizado.Image4Click(Sender: TObject);
begin
dsCadastrarServTerc.DataSet.Append;
end;

procedure TfrmCadServTerceirizado.lblFecharClick(Sender: TObject);
begin
pnlObservacoes.Visible:=False;
  btnObs.Visible:=True;
end;

procedure TfrmCadServTerceirizado.btnVerNetClick(Sender: TObject);
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
