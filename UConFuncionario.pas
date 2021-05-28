unit UConFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, frxClass, frxDBSet,
  Vcl.DBCtrls, Vcl.Mask;

type
  TfrmConFuncionario = class(TForm)
    DBGridConFuncionario: TDBGrid;
    dsConFuncionario: TDataSource;
    pnlPrincipal: TPanel;
    pnlSecundario: TPanel;
    pnlTerciario: TPanel;
    pnlQuaternario: TPanel;
    rbtNome: TRadioButton;
    rbtCPF: TRadioButton;
    rbtRG: TRadioButton;
    rbtAtivo: TRadioButton;
    rbtInativo: TRadioButton;
    rbtCargo: TRadioButton;
    rbtDtaAdmissao: TRadioButton;
    dtpData: TDateTimePicker;
    rbtAmbos: TRadioButton;
    rbtAz: TRadioButton;
    rbtZa: TRadioButton;
    frxDBDatasetConFun: TfrxDBDataset;
    frxReportConFun: TfrxReport;
    Panel1: TPanel;
    edtConFuncionario: TMaskEdit;
    ShapeCima: TShape;
    ShapeBaixo: TShape;
    spLimpar: TShape;
    spPesquisar: TShape;
    spRelatorio: TShape;
    lblLimpar: TLabel;
    lblPesquisar: TLabel;
    lblRelatorio: TLabel;
    lblEditar: TLabel;
    btnLimpar: TImage;
    btnPesquisar: TImage;
    btnRelatorio: TImage;
    btnEditar: TImage;
    Shape4: TShape;
    Shape6: TShape;
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure rbtNomeClick(Sender: TObject);
    procedure rbtRGClick(Sender: TObject);
    procedure rbtCPFClick(Sender: TObject);
    procedure rbtDtaAdmissaoClick(Sender: TObject);
    procedure rbtCargoClick(Sender: TObject);
    procedure rbtAmbosClick(Sender: TObject);
    procedure rbtAtivoClick(Sender: TObject);
    procedure rbtInativoClick(Sender: TObject);
    procedure rbtAzClick(Sender: TObject);
    procedure rbtZaClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtConFuncionarioChange(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure DBGridConFuncionarioDblClick(Sender: TObject);
    procedure lblEditarClick(Sender: TObject);
  private
    { Private declarations }

    sqltel, sqlemail:string;

  public
    { Public declarations }
    principal,secundario,terciario :string;

    const
    selectSql ='select funCodigo, funTipo, funNome, funRG, funCPF, funEndereco, funCidade, '
 +'funEstado, funSituacao, funPagamentoBruto, funDataNascimento, '
 +'funCTPS, funCRECI, funObservacoes, funDataAdmissao, funDataDemissao, '
 +'funBairro, funLogin, funSenha, funCargo, funBloqueio, funCEP, funNumeroImovel from FUNCIONARIOS '
 +'Where ';

  end;

var
  frmConFuncionario: TfrmConFuncionario;

implementation

{$R *.dfm}

uses UDM, UPrincipal, UCadFuncionario, UCadAgendamento, UConsContatos;

procedure TfrmConFuncionario.btnEditarClick(Sender: TObject);
begin

    frmCadFuncionario:= TfrmCadFuncionario.Create(Self);
    frmCadFuncionario.DSFuncionarios.DataSet:= DM.qryConsFuncionarios;
try
    frmCadFuncionario.ShowModal;
finally
    frmCadFuncionario.Release;
    frmCadFuncionario:= Nil;
 end;
end;

procedure TfrmConFuncionario.btnLimparClick(Sender: TObject);
begin
    edtConFuncionario.Clear;
end;

procedure TfrmConFuncionario.btnNovoClick(Sender: TObject);
begin

frmPrincipal.new:=True;
frmCadFuncionario.ShowModal;


end;

procedure TfrmConFuncionario.btnPesquisarClick(Sender: TObject);
begin
DM.qryConsFuncionarios.Close;
DM.qryConsFuncionarios.SQL.Clear;
DM.qryConsFuncionarios.SQL.Add(selectSql + principal + secundario + terciario);

if (rbtNome.Checked=True) then
begin
  DM.qryConsFuncionarios.Parameters.ParamByName('pFunNome').Value := '%'+edtConFuncionario.Text+'%';
end;

if (rbtRG.Checked=True) then
begin
  DM.qryConsFuncionarios.Parameters.ParamByName('pFunNome').Value := '%'+edtConFuncionario.Text+'%';
end;

if (rbtCPF.Checked=True) then
begin
  DM.qryConsFuncionarios.Parameters.ParamByName('pFunNome').Value := '%'+edtConFuncionario.Text+'%';
end;

if (rbtCargo.Checked=True) then
begin
  DM.qryConsFuncionarios.Parameters.ParamByName('pFunNome').Value := '%'+edtConFuncionario.Text+'%';
end;

if (rbtDtaAdmissao.Checked=True) then
begin
  DM.qryConsFuncionarios.Parameters.ParamByName('pFunNome').Value := DateToStr(dtpData.Date);
end;


DM.qryConsFuncionarios.open;
end;

procedure TfrmConFuncionario.btnRelatorioClick(Sender: TObject);
begin
frxReportConFun.ShowReport();
end;

procedure TfrmConFuncionario.DBGridConFuncionarioDblClick(Sender: TObject);
begin


 dm.qryConsTelefones2.Close;
 dm.qryConsEmails2.Close;

    sqltel:= 'Select telTipo,clicodigo, telDDD, telNumero, telOperadora from telefones where funcodigo = :funCodigo';
    sqlemail:='SELECT emaEmail, clicodigo from emails where funcodigo = :funCodigo';


   frmContatos:= TfrmContatos.Create(Self);
    dm.qryConsTelefones2.SQL.Clear;
    dm.qryConsTelefones2.SQL.Add(sqltel);
    dm.qryConsTelefones2.DataSource:=frmConFuncionario.dsConFuncionario;
    dm.qryConsEmails2.SQL.Clear;
    dm.qryConsEmails2.SQL.Add(sqlemail);
    dm.qryConsEmails2.DataSource:=frmConFuncionario.dsConFuncionario;
    dm.qryConsTelefones2.Open;
    dm.qryConsEmails2.Open;

try
    frmContatos.ShowModal;
finally
    frmContatos.Release;
    frmContatos:= Nil;

 end;

end;

procedure TfrmConFuncionario.edtConFuncionarioChange(Sender: TObject);
begin
if (rbtCPF.Checked=true)then
begin
  edtConFuncionario.EditMask:= '999.999.999-99;1;_';
end;
if (rbtCPF.Checked=false) then
begin
    edtConFuncionario.EditMask:='';
end;
end;

procedure TfrmConFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.qryConsFuncionarios.Close;
frmPrincipal.busc:=False;
frmPrincipal.edt:=False;
frmPrincipal.editar:=0;

end;

procedure TfrmConFuncionario.FormShow(Sender: TObject);
begin
principal:='funNome like :pFunNome';
secundario:=' ';
terciario:=' ORDER BY funNome ASC ';
end;

procedure TfrmConFuncionario.Image3Click(Sender: TObject);
begin
frxReportConFun.ShowReport();
end;

procedure TfrmConFuncionario.lblEditarClick(Sender: TObject);
begin

  frmCadFuncionario:= TfrmCadFuncionario.Create(Self);
    frmCadFuncionario.DSFuncionarios.DataSet:= DM.qryConsClientes;
    frmCadFuncionario.DSFuncionarios.DataSet.Edit;
try
    frmCadFuncionario.ShowModal;
finally
    frmCadFuncionario.Release;
    frmCadFuncionario:= Nil;
 end;

 end;

procedure TfrmConFuncionario.rbtAmbosClick(Sender: TObject);
begin
secundario:=' ';
end;

procedure TfrmConFuncionario.rbtAtivoClick(Sender: TObject);
begin
secundario:=' AND funSituacao = 1 ';
end;

procedure TfrmConFuncionario.rbtAzClick(Sender: TObject);
begin
terciario:='ORDER BY funNome ASC';
end;

procedure TfrmConFuncionario.rbtCargoClick(Sender: TObject);
begin
principal:='funCargo like :pFunNome';
edtConFuncionario.Visible:=true;
dtpData.Visible:=false;
end;

procedure TfrmConFuncionario.rbtCPFClick(Sender: TObject);
begin
principal:='funCPF like :pFunNome';
edtConFuncionario.Visible:=true;
dtpData.Visible:=false;


end;

procedure TfrmConFuncionario.rbtDtaAdmissaoClick(Sender: TObject);
begin
principal:=' funDataAdmissao like :pFunNome ';
edtConFuncionario.Visible:=false;
dtpData.Visible:=true;
dtpData.Date:=Date;
end;

procedure TfrmConFuncionario.rbtInativoClick(Sender: TObject);
begin
secundario:= ' AND funSituacao = 0 ';
end;

procedure TfrmConFuncionario.rbtNomeClick(Sender: TObject);
begin
principal:=' funNome like :pFunNome ';
edtConFuncionario.Visible:=true;
dtpData.Visible:=false;
end;

procedure TfrmConFuncionario.rbtRGClick(Sender: TObject);
begin
principal:=' funRG like :pFunNome ';
edtConFuncionario.Visible:=true;
dtpData.Visible:=false;
end;

procedure TfrmConFuncionario.rbtZaClick(Sender: TObject);
begin
terciario:=' ORDER BY funNome DESC ';
end;

end.
