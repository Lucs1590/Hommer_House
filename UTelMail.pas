unit UTelMail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmTelEmail = class(TForm)
    DSTelefone: TDataSource;
    DSEmail: TDataSource;
    btnCancelar: TBitBtn;
    DSFuncionario: TDataSource;
    DSServTerceirizado: TDataSource;
    DSCliente: TDataSource;
    pcTelMail: TPageControl;
    tsTelefone: TTabSheet;
    tsEmail: TTabSheet;
    lblCodigoTel: TLabel;
    lblTipo: TLabel;
    lblDDD: TLabel;
    edtDDD: TDBEdit;
    lblNumero: TLabel;
    edtNumero: TDBEdit;
    lblOperadora: TLabel;
    edtOperadora: TDBEdit;
    lblCodigoEmail: TLabel;
    lblEmail: TLabel;
    edtEmail: TDBEdit;
    cbbTipo: TDBComboBox;
    lblCODMAIL: TDBText;
    lblCODTEL: TDBText;
    spBtnInserir: TShape;
    spBtnEditar: TShape;
    spBtnExcluir: TShape;
    spBtnSalvar: TShape;
    lblInserir: TLabel;
    lblEditar: TLabel;
    lblSalvar: TLabel;
    lblExcluir: TLabel;
    imgBtnInserir: TImage;
    imgBtnEditar: TImage;
    imgBtnSalvar: TImage;
    imgBtnExcluir: TImage;
    spEditarEmail: TShape;
    spBtnSalvarEmail: TShape;
    lblSalvarEmail: TLabel;
    lblInserirEmail: TLabel;
    lblEditarEmail: TLabel;
    spBtnExcluirEmail: TShape;
    lblExcluirEmail: TLabel;
    spBtnInserirEmail: TShape;
    imgBtnInserirEmail: TImage;
    imgBtnEditarEmail: TImage;
    imgBtnSalvarEmail: TImage;
    imgBtnExcluirEmail: TImage;
    spCabecalhoTop: TShape;
    spCabecalhoBot: TShape;
    DBNavegar1: TDBNavigator;
    DBNavigar2: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure imgBtnSalvarClick(Sender: TObject);
    procedure imgBtnExcluirClick(Sender: TObject);
    procedure imgBtnEditarClick(Sender: TObject);
    procedure imgBtnInserirClick(Sender: TObject);
    procedure imgBtnInserirEmailClick(Sender: TObject);
    procedure imgBtnEditarEmailClick(Sender: TObject);
    procedure imgBtnSalvarEmailClick(Sender: TObject);
    procedure imgBtnExcluirEmailClick(Sender: TObject);
    procedure DSEmailStateChange(Sender: TObject);
    procedure DSTelefoneStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codnormal1,codespecifico,codnormal,quem:string;
    func,servter,clie:string;
    parclie,parserv,parfunc:string;

  end;

var
  frmTelEmail: TfrmTelEmail;

implementation

{$R *.dfm}

uses UDM, UCadCliente, UCadFuncionario, UCadServTerceirizado;

procedure TfrmTelEmail.btnEditarClick(Sender: TObject);
begin

DSEmail.DataSet.Edit;
end;

procedure TfrmTelEmail.btnSalvarClick(Sender: TObject);
begin

DSEmail.DataSet.Post;
end;

procedure TfrmTelEmail.DSEmailStateChange(Sender: TObject);
begin
imgBtnInserirEmail.Enabled := DSEmail.State = dsBrowse;
imgBtnEditarEmail.Enabled := DSEmail.State = dsBrowse;
imgBtnSalvarEmail.Enabled := DSEmail.State in [dsInsert, dsEdit];
imgBtnExcluirEmail.Enabled := DSEmail.State in [dsInsert, dsEdit];
end;


procedure TfrmTelEmail.DSTelefoneStateChange(Sender: TObject);
begin
imgBtnInserir.Enabled := DSTelefone.State = dsBrowse;
imgBtnEditar.Enabled := DSTelefone.State = dsBrowse;
imgBtnSalvar.Enabled := DSTelefone.State in [dsInsert, dsEdit];
imgBtnExcluir.Enabled := DSTelefone.State in [dsInsert, dsEdit];

if DSTelefone.State in [dsInsert, dsEdit] then   // modo inserção deixa o shape em cinza
     begin
      spBtnInserir.Brush.Color:=clgray;
      spBtnEditar.Brush.Color:=clgray;
      spbtnExcluir.Brush.Color:=clGray;
      spBtnSalvar.Brush.Color:=$00B28541;
     end
     else
     begin
      spBtnInserir.Brush.Color:=$00B28541;
      spBtnEditar.Brush.Color:=$00B28541;
      spbtnExcluir.Brush.Color:=$00B28541;
      spBtnSalvar.Brush.Color:=clgray;
     end;
end;

procedure TfrmTelEmail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
quem:='';
codnormal1:='';
codespecifico:='';
end;

procedure TfrmTelEmail.FormCreate(Sender: TObject);
begin
DM.qryTelefones.Open;
DM.qryEmails.Open;
pcTelMail.ActivePage:=tsTelefone;

end;

procedure TfrmTelEmail.FormShow(Sender: TObject);
begin
codnormal:='select telCodigo, telTipo, telDDD,'+
' telNumero, telOperadora, cliCodigo, terCodigo, funCodigo from TELEFONES where';

codnormal1:='select emaCodigo, emaEmail, funCodigo, terCodigo, cliCodigo from EMAILS where';

// tag 0 Cliente
if frmTelEmail.Tag=0 then
 begin
DM.qryEmails.Close;
DM.qryTelefones.Close;

DM.qryTelefones.SQL.Clear;
DM.qryTelefones.Parameters.Clear;
DM.qryEmails.SQL.Clear;
DM.qryEmails.Parameters.Clear;


clie:=' cliCodigo';

parclie:=' = :CliCodigo';

DM.qryTelefones.SQL.Add(codnormal+clie+parclie);
DM.qryEmails.SQL.Add(codnormal1+clie+parclie);

DM.qryTelefones.DataSource:=frmCadCliente.dsCadastroCli;
DM.qryEmails.DataSource:=frmCadCliente.dsCadastroCli;

DM.qryEmails.Open;
DM.qryTelefones.Open;
 end;

// tag 1 Funcionario
if frmTelEmail.Tag=1 then
 begin
DM.qryTelefones.Close;
DM.qryEmails.Close;

DM.qryTelefones.SQL.Clear;
DM.qryTelefones.Parameters.Clear;
DM.qryEmails.SQL.Clear;
DM.qryEmails.Parameters.Clear;

func:=' funCodigo';

parfunc:=' = :FunCodigo';

DM.qryTelefones.SQL.Add(codnormal+func+parfunc);
DM.qryEmails.SQL.Add(codnormal1+func+parfunc);


DM.qryTelefones.DataSource:=frmCadFuncionario.DSFuncionarios;
DM.qryEmails.DataSource:=frmCadFuncionario.DSFuncionarios;

DM.qryEmails.Open;
DM.qryTelefones.Open;

end;

// tag 3 Terceirizado
if frmTelEmail.Tag=2 then
begin
DM.qryTelefones.Close;
DM.qryEmails.Close;

DM.qryTelefones.SQL.Clear;
DM.qryTelefones.Parameters.Clear;
DM.qryEmails.SQL.Clear;
DM.qryEmails.Parameters.Clear;

servter:=' terCodigo';

parserv:=' = :TerCodigo';

DM.qryTelefones.SQL.Add(codnormal+servter+parserv);
DM.qryEmails.SQL.Add(codnormal1+servter+parserv);

dm.qryTelefones.DataSource:=frmCadServTerceirizado.dsCadastrarServTerc;
dm.qryEmails.DataSource:=frmCadServTerceirizado.dsCadastrarServTerc;

DM.qryEmails.Open;
DM.qryTelefones.Open;
end;
end;

procedure TfrmTelEmail.imgBtnEditarClick(Sender: TObject);
begin
DSTelefone.DataSet.Edit;
end;

procedure TfrmTelEmail.imgBtnEditarEmailClick(Sender: TObject);
begin
DSEmail.DataSet.Edit;
end;

procedure TfrmTelEmail.imgBtnExcluirClick(Sender: TObject);
begin
DSTelefone.DataSet.Delete;
end;

procedure TfrmTelEmail.imgBtnExcluirEmailClick(Sender: TObject);
begin
DSEmail.DataSet.Delete;
end;

procedure TfrmTelEmail.imgBtnInserirClick(Sender: TObject);
begin
DSTelefone.DataSet.Append;
end;

procedure TfrmTelEmail.imgBtnInserirEmailClick(Sender: TObject);
begin
DSEmail.DataSet.Append;
end;

procedure TfrmTelEmail.imgBtnSalvarClick(Sender: TObject);
begin
DSTelefone.DataSet.Post;
end;

procedure TfrmTelEmail.imgBtnSalvarEmailClick(Sender: TObject);
begin
DSEmail.DataSet.Post;
end;

end.
