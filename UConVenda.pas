unit UConVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Data.DB, Vcl.ComCtrls, frxClass, frxDBSet;

type
  TfrmConVenda = class(TForm)
    pnlSecundário: TPanel;
    dbgConsVenda: TDBGrid;
    pnlTerciário: TPanel;
    pnlQuaternario: TPanel;
    edtPesquisa: TEdit;
    dsConsVendas: TDataSource;
    pnlPrincipal: TPanel;
    rbtCod: TRadioButton;
    rbtNomeCli: TRadioButton;
    rbtNomeFunc: TRadioButton;
    rbtNomeImo: TRadioButton;
    rbtPreco: TRadioButton;
    lblSitPag: TLabel;
    lblImo: TLabel;
    rbtAmbos: TRadioButton;
    rbtAtv: TRadioButton;
    rbtInv: TRadioButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    frxDBDatasetPesquisa: TfrxDBDataset;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    lblPesquisar: TLabel;
    lblRelatório: TLabel;
    Shape5: TShape;
    btnPesquisar: TImage;
    btnRelatorio: TImage;
    frxReportRelatorio: TfrxReport;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure rbtCodClick(Sender: TObject);
    procedure rbtPrecoClick(Sender: TObject);
    procedure rbtNomeCliClick(Sender: TObject);
    procedure rbtNomeFuncClick(Sender: TObject);
    procedure rbtNomeImoClick(Sender: TObject);
    procedure rbtAmbosClick(Sender: TObject);
    procedure rbtAtvClick(Sender: TObject);
    procedure rbtInvClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    primarioPesq, secundarioPesq, terciarioPesq, quaternarioPesq : string;
 const
    selectSql = 'select imoveis.imoNome, funcionarios.funNome, clientes.cliNome ,'
  +'vendas.venData, vendas.venSituacaoDePagamento, vendas.venPreco from VENDAS '
  +'inner join funcionarios on vendas.funcodigo = funcionarios.funCodigo '
  +'inner join clientes on vendas.cliCodigo = clientes.cliCodigo '
  +'inner join imoveis on vendas.imoCodigo = imoveis.imoCodigo '
  +'where ';

  end;

var
  frmConVenda: TfrmConVenda;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmConVenda.btnPesquisarClick(Sender: TObject);
begin

 DM.qryConsVendas.Close;
 DM.qryConsVendas.SQL.Clear;
 DM.qryConsVendas.SQL.Add(selectSql + primarioPesq + secundarioPesq + terciarioPesq + quaternarioPesq);
 DM.qryVendas.open;
 dm.qryVendas.Close;
 if (rbtCod.Checked = True) then
 begin
 if edtPesquisa.Text<>'' then
 begin
  DM.qryConsVendas.Parameters.ParamByName('pConsVenda').Value := edtPesquisa.Text;
 end
 else
 begin
   ShowMessage('Insira o Código da Venda');
 end;
 end;

 if (rbtPreco.Checked = True) then
 begin
 if edtPesquisa.Text<>'' then
 begin
  DM.qryConsVendas.Parameters.ParamByName('pConsVenda').Value := edtPesquisa.Text;
 end
 else
 begin
   ShowMessage('Insira o Preço');
 end;
 end;

  if (rbtNomeCli.Checked = True) then
 begin
  DM.qryConsVendas.Parameters.ParamByName('pConsVenda').Value := '%'+edtPesquisa.Text+'%';
 end;

  if (rbtNomeFunc.Checked = True) then
 begin
  DM.qryConsVendas.Parameters.ParamByName('pConsVenda').Value := '%'+edtPesquisa.Text+'%';
 end;

 if (rbtNomeImo.Checked = True) then
 begin
 if edtPesquisa.Text<>'' then
 begin
  DM.qryConsVendas.Parameters.ParamByName('pConsVenda').Value := edtPesquisa.Text;
 end
 else
 begin
   ShowMessage('Insira o Código do Imóvel');
 end;
 end;
 DM.qryConsVendas.Open;
end;

procedure TfrmConVenda.btnRelatorioClick(Sender: TObject);
begin
frxReportRelatorio.ShowReport();
end;

procedure TfrmConVenda.FormShow(Sender: TObject);
begin
  primarioPesq:= ' vendas.venCodigo = :pConsVenda ';
  secundarioPesq:= ' ';
  terciarioPesq:= ' order by  vencodigo  asc ';
end;

procedure TfrmConVenda.RadioButton1Click(Sender: TObject);
begin
terciarioPesq:= ' order by  vencodigo  asc ';
end;

procedure TfrmConVenda.RadioButton2Click(Sender: TObject);
begin
terciarioPesq:= ' order by  vencodigo  desc ';
end;

procedure TfrmConVenda.rbtAmbosClick(Sender: TObject);
begin
secundarioPesq:= ' ';
end;

procedure TfrmConVenda.rbtAtvClick(Sender: TObject);
begin
   secundarioPesq:=' and venSituacaodePagamento = 1 ';
end;

procedure TfrmConVenda.rbtCodClick(Sender: TObject);
begin
  primarioPesq:= ' vendas.venCodigo = :pConsVenda ';
end;

procedure TfrmConVenda.rbtInvClick(Sender: TObject);
begin
   secundarioPesq:=' and venSituacaodePagamento = 0 '
end;

procedure TfrmConVenda.rbtNomeCliClick(Sender: TObject);
begin
primarioPesq:= ' clientes.cliNome like :pconsVenda ';
end;

procedure TfrmConVenda.rbtNomeFuncClick(Sender: TObject);
begin
primarioPesq:= ' funcionarios.funNome like :pconsVenda ';
end;

procedure TfrmConVenda.rbtNomeImoClick(Sender: TObject);
begin
primarioPesq:=' imoCodigo = :pConsVenda ';
end;

procedure TfrmConVenda.rbtPrecoClick(Sender: TObject);
begin
primarioPesq:='  vendas.venPreco like :pConsVenda ';
end;

end.
