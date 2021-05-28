unit UConLocacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, frxClass, frxDBSet,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfrmConLocacao = class(TForm)
    pnlPrincipal: TPanel;
    rbtCliente: TRadioButton;
    pnlPesquisa: TPanel;
    dbgTabela: TDBGrid;
    dsConLocacao: TDataSource;
    frxReportConsLocacao: TfrxReport;
    frxDBConsultaLocacao: TfrxDBDataset;
    rbtEndereco: TRadioButton;
    edtNumero: TEdit;
    lblEnderecoOrNome: TLabel;
    lblNumero: TLabel;
    edtEnderecoOrName: TEdit;
    Panel1: TPanel;
    Shape2: TShape;
    Shape1: TShape;
    Shape3: TShape;
    Pesquisar: TLabel;
    Relatório: TLabel;
    lblEditar: TLabel;
    btnPesquisar: TImage;
    btnRelatorio: TImage;
    btnEditar: TImage;
    Shape5: TShape;
    Shape6: TShape;
    procedure bitbtnRelatorioClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      principal,secundario:string;


  const
  selectSql ='select locacoes.locCodigo, locacoes.locPreco, locacoes.locInicio, locacoes.imoCodigo, locacoes.cliCodigo, locacoes.locFim, imoveis.imoEndereco, imoveis.imoNumero, clientes.cliNome '
  +'from locacoes inner join imoveis on locacoes.imoCodigo=imoveis.imoCodigo inner'
  +' join clientes on locacoes.cliCodigo=clientes.cliCodigo';

  end;

var
  frmConLocacao: TfrmConLocacao;

implementation

{$R *.dfm}

uses UDM, ULocCasa, UPrincipal;



procedure TfrmConLocacao.bitbtnRelatorioClick(Sender: TObject);
begin
frxReportConsLocacao.ShowReport();
end;

procedure TfrmConLocacao.btnEditarClick(Sender: TObject);
begin

frmPrincipal.edt:=True;
 frmLocCasa := TfrmLocCasa.Create(Self);
 frmLocCasa.dsLocacao.DataSet:= DM.qryConsLoc2;
    try
      frmLocCasa.ShowModal;
    finally
       frmLocCasa.Release;
       frmLocCasa:= Nil;
    end;

end;

procedure TfrmConLocacao.btnNovoClick(Sender: TObject);
begin

frmPrincipal.new:=True;
 frmLocCasa := TfrmLocCasa.Create(Self);
    try
      frmLocCasa.ShowModal;
    finally
       frmLocCasa.Release;
       frmLocCasa:= Nil;
    end;


end;

procedure TfrmConLocacao.btnPesquisarClick(Sender: TObject);
begin
DM.qryConsLoc2.Close;
DM.qryConsLoc2.SQL.Clear;

  if rbtCliente.Checked=True then
  begin
    principal:=' where clientes.cliNome like '+#39+'%'+edtEnderecoOrName.Text+'%'+#39;
  end
  else if rbtEndereco.Checked=True then
       begin
        if edtNumero.Text='' then
        begin
          principal:=' where imoveis.imoEndereco like '+#39+'%'+edtEnderecoOrName.Text+'%'+#39;
        end
        else if edtEnderecoOrName.Text='' then
             begin
              principal:=' where imoveis.imoNumero ='+(edtNumero.Text);
             end
             else if (edtNumero.Text='') and (edtEnderecoOrName.Text='') then
                  begin
                    principal:='';
                  end;
       end;




DM.qryConsLoc2.SQL.Add(selectSql + principal);
DM.qryConsLoc2.Open;

end;

procedure TfrmConLocacao.btnRelatorioClick(Sender: TObject);
begin
frxReportConsLocacao.ShowReport();
end;

end.
