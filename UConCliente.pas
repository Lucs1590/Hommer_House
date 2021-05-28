unit UConCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Data.DB, frxClass, frxDBSet, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TfrmConCliente = class(TForm)
    dbGridConsultaCli: TDBGrid;
    dsConsultaClie: TDataSource;
    pnlPrimario: TPanel;
    rbtNome: TRadioButton;
    rbtRG: TRadioButton;
    rbtCpfCnpj: TRadioButton;
    pnlSecundario: TPanel;
    rbtAz: TRadioButton;
    rbtZa: TRadioButton;
    pnlQuaternario: TPanel;
    PnlQuinto: TPanel;
    frxDBDataset: TfrxDBDataset;
    frxReport: TfrxReport;
    pnlTerceiro: TPanel;
    rbtTipoTodos: TRadioButton;
    rbtTipoFisico: TRadioButton;
    rbtTipoJuridico: TRadioButton;
    rbtCidade: TRadioButton;
    rbtEndereco: TRadioButton;
    edtConCli: TMaskEdit;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape7: TShape;
    lblLimpar: TLabel;
    lblConsultar: TLabel;
    lblRelatorio: TLabel;
    lblEditar: TLabel;
    bitbtnGerarRelatorio: TImage;
    bitbtnConsultaCli: TImage;
    btnLimpar: TImage;
    btnEditar: TImage;
    procedure bitbtnGerarRelatorioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbtNomeClick(Sender: TObject);
    procedure rbtRGClick(Sender: TObject);
    procedure rbtCpfCnpjClick(Sender: TObject);
    procedure rbtAzClick(Sender: TObject);
    procedure rbtZaClick(Sender: TObject);
    procedure edtConCliClick(Sender: TObject);
    procedure rbtCidadeClick(Sender: TObject);
    procedure rbtEnderecoClick(Sender: TObject);
    procedure rbtTipoTodosClick(Sender: TObject);
    procedure edtConCliChange(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure dbGridConsultaCliDblClick(Sender: TObject);
    procedure bitbtnConsultaCliClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

    sqltel,sqlemail:string;

  public
    { Public declarations }
    primario, secundario , terciario : string;

    const
    selectSql = 'select cliCodigo, cliNome, cliRG, cliCpfCnpj, cliEndereco, cliBairro,  '
    + 'cliCidade, cliEstado, cliDataNascimento, cliEstadoCivil, cliTipo, cliNumero, cliCEP from CLIENTES where ';

  end;

var
  frmConCliente: TfrmConCliente;

implementation

{$R *.dfm}

uses UDM, UCadAgendamento, UPrincipal, UCadCliente, UConsContatos;

procedure TfrmConCliente.bitbtnConsultaCliClick(Sender: TObject);
begin
DM.qryConsClientes.Close;
 DM.qryConsClientes.SQL.Clear;
 DM.qryConsClientes.SQL.Add(selectSql + primario + secundario + terciario);

 if (rbtNome.Checked = True) then
 begin
   DM.qryConsClientes.Parameters.ParamByName('pPesquisa').Value := '%'+edtConCli.Text+'%';
 end;
  if (rbtRG.Checked = True) then
 begin
   DM.qryConsClientes.Parameters.ParamByName('pPesquisa').Value := '%'+edtConCli.Text+'%';
 end;
   if (rbtCpfCnpj.Checked = True) then
 begin
   DM.qryConsClientes.Parameters.ParamByName('pPesquisa').Value := '%'+edtConCli.Text+'%';
 end;
   if (rbtCidade.Checked = True) then
 begin
   DM.qryConsClientes.Parameters.ParamByName('pPesquisa').Value := '%'+edtConCli.Text+'%';
 end;
    if (rbtEndereco.Checked = True) then
 begin
   DM.qryConsClientes.Parameters.ParamByName('pPesquisa').Value := '%'+edtConCli.Text+'%';
 end;
  dm.qryConsClientes.Open;
end;

procedure TfrmConCliente.bitbtnGerarRelatorioClick(Sender: TObject);
begin
frxReport.ShowReport();
end;

procedure TfrmConCliente.btnEditarClick(Sender: TObject);
begin

    frmCadCliente:= TfrmCadCliente.Create(Self);
    frmCadCliente.dsCadastroCli.DataSet:= DM.qryConsClientes;
try
    frmCadCliente.ShowModal;
finally
    frmCadCliente.Release;
    frmCadCliente:= Nil;
 end;
end;

procedure TfrmConCliente.btnLimparClick(Sender: TObject);
begin
edtConCli.Clear;
edtConCli.EditMask:='';
end;

procedure TfrmConCliente.btnNovoClick(Sender: TObject);
begin

frmPrincipal.new:=True;
frmCadCliente:= TfrmCadCliente.Create(Self);
frmCadCliente.ShowModal;

end;

procedure TfrmConCliente.dbGridConsultaCliDblClick(Sender: TObject);
begin


 dm.qryConsTelefones2.Close;
 dm.qryConsEmails2.Close;

    sqltel:= 'Select telTipo,clicodigo, telDDD, telNumero, telOperadora from telefones where clicodigo = :cliCodigo';
    sqlemail:='SELECT emaEmail, clicodigo from emails where clicodigo = :cliCodigo';


   frmContatos:= TfrmContatos.Create(Self);
    dm.qryConsTelefones2.SQL.Clear;
    dm.qryConsTelefones2.SQL.Add(sqltel);
    dm.qryConsTelefones2.DataSource:=frmConCliente.dsConsultaClie;
    dm.qryConsEmails2.SQL.Clear;
    dm.qryConsEmails2.SQL.Add(sqlemail);
    dm.qryConsEmails2.DataSource:=frmConCliente.dsConsultaClie;
    dm.qryConsTelefones2.Open;
    dm.qryConsEmails2.Open;
    
try
    frmContatos.ShowModal;
finally
    frmContatos.Release;
    frmContatos:= Nil;

 end;


end;

procedure TfrmConCliente.edtConCliChange(Sender: TObject);
begin
if ((rbtCpfCnpj.Checked=true) and (rbtTipoFisico.Checked=True)) then
begin
  edtConCli.EditMask:= '999.999.999-99;1;_';
end
else
if ((rbtCpfCnpj.Checked=true) and (rbtTipoJuridico.Checked=True)) then
begin
  edtConCli.EditMask:='99\.999\.999\/9999\-99;1;_';
end
else
begin
    edtConCli.EditMask:='';
end;
end;

procedure TfrmConCliente.edtConCliClick(Sender: TObject);
begin
   edtConCli.Text := ' ';
end;

procedure TfrmConCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM.qryConsClientes.Close;
end;

procedure TfrmConCliente.FormShow(Sender: TObject);
begin
   primario := ' cliNome like :pPesquisa ';
   secundario := ' ORDER BY cliNome ASC ';
   terciario:=' ';


   end;

procedure TfrmConCliente.rbtCidadeClick(Sender: TObject);
begin
primario:= 'cliCidade like :pPesquisa ';
edtConCli.Visible:=True;
rbtTipoTodos.Visible:=True;
end;

procedure TfrmConCliente.rbtAzClick(Sender: TObject);
begin
secundario := ' ORDER BY cliNome ASC ';
end;

procedure TfrmConCliente.rbtZaClick(Sender: TObject);
begin
secundario := ' ORDER BY cliNome DESC ';
end;

procedure TfrmConCliente.rbtCpfCnpjClick(Sender: TObject);
begin
 primario := ' cliCpfCnpj like :pPesquisa ';
edtConCli.Visible := True;
 if rbtCpfCnpj.Checked=True then
 begin
 rbtTipoTodos.Visible:=False;
 end;
 
 if rbtCpfCnpj.Checked=False then
  rbtTipoTodos.Visible:=True;
 end;


procedure TfrmConCliente.rbtEnderecoClick(Sender: TObject);
begin
primario:='cliEndereco like :pPesquisa';
rbtTipoTodos.Visible:=True;
end;

procedure TfrmConCliente.rbtNomeClick(Sender: TObject);
begin
  primario := ' cliNome like :pPesquisa ';
  edtConCli.Visible := True;
  rbtTipoTodos.Visible:=True;

end;


procedure TfrmConCliente.rbtRGClick(Sender: TObject);
begin
 primario := ' cliRG like :pPesquisa ';
 edtConCli.Visible := True;
 rbtTipoTodos.Visible:=True;
end;

procedure TfrmConCliente.rbtTipoTodosClick(Sender: TObject);
begin
terciario:= ' ';
end;

end.
