unit UConServTerceirizado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, frxClass, frxDBSet;

type
    TfrmConServTerceirizado = class(TForm)
    DBGrid1: TDBGrid;
    dsConServTerc: TDataSource;
    rbNome: TRadioButton;
    rbBairro: TRadioButton;
    rbCidade: TRadioButton;
    rbEndereco: TRadioButton;
    rbServ: TRadioButton;
    pnlTerciario: TPanel;
    rbtAz: TRadioButton;
    rbtZa: TRadioButton;
    pnlQuaternario: TPanel;
    edtPesquisa: TEdit;
    frxReportConsServTerc: TfrxReport;
    frxDBDatasetConsServTerc: TfrxDBDataset;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    lblLimpar: TLabel;
    lblPesquisar: TLabel;
    lblRelatorio: TLabel;
    btnLimpar: TImage;
    btnPesquisa: TImage;
    btnRelatorio: TImage;
    procedure FormShow(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure rbtAzClick(Sender: TObject);
    procedure rbServClick(Sender: TObject);
    procedure rbNomeClick(Sender: TObject);
    procedure rbtZaClick(Sender: TObject);
    procedure rbCidadeClick(Sender: TObject);
    procedure rbBairroClick(Sender: TObject);
    procedure rbEnderecoClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }

    sqltel,sqlemail:string;
  public
    { Public declarations }
    principal,terciario :string;
    const
    selectSql ='select terCodigo, terNome,  terServico, terObservacao, terBairro,'
    +'terEndereco, terCidade, terEstado from SERV_TERCEIRIZADOS '
    + 'Where ';
  end;

var
  frmConServTerceirizado: TfrmConServTerceirizado;

implementation

{$R *.dfm}

uses UDM, UCadServTerceirizado, UConsContatos;

procedure TfrmConServTerceirizado.btnLimparClick(Sender: TObject);
begin
edtPesquisa.Clear;
end;

procedure TfrmConServTerceirizado.btnPesquisaClick(Sender: TObject);
begin
DM.qryConsServTerceirizados.Close;
DM.qryConsServTerceirizados.SQL.Clear;
DM.qryConsServTerceirizados.SQL.Add(selectSql + principal + terciario);

if (rbNome.Checked=True) then
begin
DM.qryConsServTerceirizados.Parameters.ParamByName('pTerNome').Value := '%' + edtPesquisa.Text +'%';
end;

if(rbServ.Checked=True) then
begin
  DM.qryConsServTerceirizados.Parameters.ParamByName('pTerNome').Value := '%'+edtPesquisa.Text+'%';
end;

 if(rbCidade.Checked=True) then
begin
  DM.qryConsServTerceirizados.Parameters.ParamByName('pTerNome').Value := '%'+edtPesquisa.Text+'%';
end;


if(rbBairro.Checked=True) then
begin
  DM.qryConsServTerceirizados.Parameters.ParamByName('pTerNome').Value := '%'+edtPesquisa.Text+'%';
end;

 if(rbEndereco.Checked=True) then
begin
  DM.qryConsServTerceirizados.Parameters.ParamByName('pTerNome').Value := '%'+edtPesquisa.Text+'%';
end;


DM.qryConsServTerceirizados.Open;
end;

procedure TfrmConServTerceirizado.btnRelatorioClick(Sender: TObject);
begin
frxReportConsServTerc.ShowReport();
end;

procedure TfrmConServTerceirizado.DBGrid1DblClick(Sender: TObject);
begin


 dm.qryConsTelefones2.Close;
 dm.qryConsEmails2.Close;

    sqltel:= 'Select telTipo,clicodigo, telDDD, telNumero, telOperadora from telefones where tercodigo = :terCodigo';
    sqlemail:='SELECT emaEmail, clicodigo from emails where tercodigo = :terCodigo';


   frmContatos:= TfrmContatos.Create(Self);
    dm.qryConsTelefones2.SQL.Clear;
    dm.qryConsTelefones2.SQL.Add(sqltel);
    dm.qryConsTelefones2.DataSource:=frmConServTerceirizado.dsConServTerc;
    dm.qryConsEmails2.SQL.Clear;
    dm.qryConsEmails2.SQL.Add(sqlemail);
    dm.qryConsEmails2.DataSource:=frmConServTerceirizado.dsConServTerc;
    dm.qryConsTelefones2.Open;
    dm.qryConsEmails2.Open;

try
    frmContatos.ShowModal;
finally
    frmContatos.Release;
    frmContatos:= Nil;

 end;

end;

procedure TfrmConServTerceirizado.FormShow(Sender: TObject);
begin
principal:=' terNome like :pTerNome';
terciario:=' ORDER BY terNome ASC ';
end;


procedure TfrmConServTerceirizado.Image3Click(Sender: TObject);
begin
frxReportConsServTerc.ShowReport();
end;

procedure TfrmConServTerceirizado.rbBairroClick(Sender: TObject);
begin
principal:=' terBairro like :pTerNome';

end;

procedure TfrmConServTerceirizado.rbCidadeClick(Sender: TObject);
begin
principal:=' terCidade like :pTerNome';
end;

procedure TfrmConServTerceirizado.rbEnderecoClick(Sender: TObject);
begin
principal:=' terEndereco like :pTerNome';

end;

procedure TfrmConServTerceirizado.rbNomeClick(Sender: TObject);
begin
principal:=' terNome like :pTerNome';

end;

procedure TfrmConServTerceirizado.rbServClick(Sender: TObject);
begin
principal:=' terServico like :pTerNome';

end;

procedure TfrmConServTerceirizado.rbtAzClick(Sender: TObject);
begin
terciario:=' ORDER BY terNome ASC';
end;

procedure TfrmConServTerceirizado.rbtZaClick(Sender: TObject);
begin
terciario:=' ORDER BY terNome DESC';

end;

end.
