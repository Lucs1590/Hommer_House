unit UConAgendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Data.DB, Vcl.ComCtrls, Vcl.Buttons,
  frxClass, frxDBSet;

type
  TfrmConAgendamento = class(TForm)
    dbgPesquisa: TDBGrid;
    pnlPrincipal: TPanel;
    dtpPesquisa: TDateTimePicker;
    dsConAgendamento: TDataSource;
    rbtEndereco: TRadioButton;
    rbtDtHora: TRadioButton;
    pnlSecundario: TPanel;
    rbtMaiorProx: TRadioButton;
    rbtMenorProx: TRadioButton;
    edtEndeAgendamento: TEdit;
    lblImovel: TLabel;
    pnlTerciario: TPanel;
    frxDBDatasetPesquisa: TfrxDBDataset;
    frxReport1: TfrxReport;
    lblNumero: TLabel;
    edtNumAgend: TEdit;
    rbtDtEndereco: TRadioButton;
    lblData: TLabel;
    Panel1: TPanel;
    rbtFunc: TRadioButton;
    rbtCliente: TRadioButton;
    edtNome: TEdit;
    lblNome: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape5: TShape;
    Shape6: TShape;
    lblPesquisar: TLabel;
    lblRelatorio: TLabel;
    lblEditar: TLabel;
    btnPesquisar: TImage;
    btnRelatorio: TImage;
    btnEditar: TImage;

    procedure btnPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbtMenorProxClick(Sender: TObject);
    procedure rbtMaiorProxClick(Sender: TObject);
    procedure rbtDtHoraClick(Sender: TObject);
    procedure rbtEnderecoClick(Sender: TObject);
    procedure rbtDtEnderecoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure rbtFuncClick(Sender: TObject);
    procedure rbtClienteClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    data2:string;
    data3:string;
  public
     principal,secundario:string;

    const
     selectSql ='select agendamentos.agendCodigo, agendamentos.agendDataHora,'
     +'agendamentos.funCodigo, agendamentos.clicodigo, agendamentos.imocodigo,'
     +'funcionarios.funNome, clientes.cliNome, imoveis.imoEndereco,'
     +' imoveis.imoNumero from agendamentos inner join funcionarios on agendamentos.funCodigo=funcionarios.funCodigo'
     +' inner join clientes on agendamentos.cliCodigo=clientes.cliCodigo inner join imoveis on agendamentos.imocodigo=imoveis.imoCodigo ';
    { Public declarations }
  end;

var
  frmConAgendamento: TfrmConAgendamento;

implementation

{$R *.dfm}

uses UDM, UCadAgendamento, UPrincipal;

procedure TfrmConAgendamento.btnEditarClick(Sender: TObject);
begin

{
  frmPrincipal.editar:=dm.qryConsAgendamentos2agendCodigo.AsInteger;
  frmPrincipal.edt:=True;
  frmCadAgendamento:= TfrmCadAgendamento.Create(Self);
  frmCadAgendamento.ShowModal;   }

    frmCadAgendamento:= TfrmCadAgendamento.Create(Self);
    frmCadAgendamento.dsCadAgendamento.DataSet:= DM.qryConsAgendamentos2;
try
    frmCadAgendamento.ShowModal;
finally
    frmCadAgendamento.Release;
    frmCadAgendamento:= Nil;
end;
end;


procedure TfrmConAgendamento.btnNovoClick(Sender: TObject);
begin

frmPrincipal.new:=True;
frmCadAgendamento:= TfrmCadAgendamento.Create(Self);
frmCadAgendamento.ShowModal;

end;

procedure TfrmConAgendamento.btnPesquisaClick(Sender: TObject);
var
data:string;
begin
  dm.qryConsAgendamentos2.Close;
  dm.qryConsAgendamentos2.SQL.Clear;

  if rbtDtHora.Checked=True then
  begin
    principal:='where agendamentos.agendDataHora between :pdtinicio and :pdtfim';
    secundario:=' ORDER BY agendDataHora ASC';
  end;

  if rbtEndereco.Checked=True then
  begin
    if edtNumAgend.Text='' then
    begin
      principal:='where imoveis.imoEndereco like '+#39+'%'+edtEndeAgendamento.Text+'%'+#39;
    end
    else if edtEndeAgendamento.Text='' then
    begin
      principal:='where imoveis.imoNumero = '+edtNumAgend.Text;
    end
    else if (edtEndeAgendamento.Text='') and (edtNumAgend.Text='') then
    begin
      principal:='';
    end
    else
    begin
      principal:='where imoveis.imoEndereco like '+#39+'%'+edtEndeAgendamento.Text+'%'+#39+' and imoveis.imoNumero = '+edtNumAgend.Text;
    end;
  end;

  if (rbtDtEndereco.Checked=True) then
  begin
    data2:= DateToStr(dtpPesquisa.Date) + ' 00:00:00';   ;
    data3:=  DateToStr(dtpPesquisa.Date) + ' 23:59:59';   ;

    if (edtEndeAgendamento.Text='') and (edtNumAgend.Text='') then
    begin
      principal:=' where agendamentos.agendDataHora between '+#39+data2+#39+' and '+#39+data3+#39;
    end
    else if (edtEndeAgendamento.Text='') then
    begin
      principal:=' where imoveis.imoNumero = '+edtNumAgend.Text+' and agendamentos.agendDataHora between '+#39+data2+#39+' and '+#39+data3+#39;
    end
    else if edtNumAgend.Text='' then
    begin
      principal:=' where imoveis.imoEndereco like '+#39+'%'+edtEndeAgendamento.Text+'%'+#39+' and agendamentos.agendDataHora between '+#39+data2+#39+' and '+#39+data3+#39;
    end
    else
    begin
      principal:=' where imoveis.imoEndereco like '+#39+'%'+edtEndeAgendamento.Text+'%'+#39+' and imoveis.imonumero = '+edtNumAgend.Text+' and agendamentos.agendDataHora between '+#39+data2+#39+' and '+#39+data3+#39;
    end;
  end;

    dm.qryConsAgendamentos2.SQL.Add(selectSql + principal + secundario);

  if (rbtFunc.Checked=True) then
  begin
    dm.qryConsAgendamentos2.Parameters.ParamByName('pAgendDataHora').Value:='%'+edtNome.Text+'%';
  end;

  if (rbtCliente.Checked=True) then
  begin
    dm.qryConsAgendamentos2.Parameters.ParamByName('pAgendDataHora').Value:='%'+edtNome.Text+'%';
  end;

  if (rbtDtHora.Checked=True) then
  begin
    data:= DateToStr(dtpPesquisa.Date) + ' 00:00:00';
    dm.qryConsAgendamentos2.Parameters.ParamByName('pdtinicio').Value := StrToDateTime(data);
    data:= DateToStr(dtpPesquisa.Date) + ' 23:59:59';
    dm.qryConsAgendamentos2.Parameters.ParamByName('pdtfim').Value := StrToDateTime(data);
  end;

  dm.qryConsAgendamentos2.Open;
end;

procedure TfrmConAgendamento.btnPesquisarClick(Sender: TObject);
var
data:string;
begin
  dm.qryConsAgendamentos2.Close;
  dm.qryConsAgendamentos2.SQL.Clear;

  if rbtDtHora.Checked=True then
  begin
    principal:='where agendamentos.agendDataHora between :pdtinicio and :pdtfim';
    secundario:=' ORDER BY agendDataHora ASC';
  end;

  if rbtEndereco.Checked=True then
  begin
    if edtNumAgend.Text='' then
    begin
      principal:='where imoveis.imoEndereco like '+#39+'%'+edtEndeAgendamento.Text+'%'+#39;
    end
    else if edtEndeAgendamento.Text='' then
    begin
      principal:='where imoveis.imoNumero = '+edtNumAgend.Text;
    end
    else if (edtEndeAgendamento.Text='') and (edtNumAgend.Text='') then
    begin
      principal:='';
    end
    else
    begin
      principal:='where imoveis.imoEndereco like '+#39+'%'+edtEndeAgendamento.Text+'%'+#39+' and imoveis.imoNumero = '+edtNumAgend.Text;
    end;
  end;

  if (rbtDtEndereco.Checked=True) then
  begin
    data2:= DateToStr(dtpPesquisa.Date) + ' 00:00:00';   ;
    data3:=  DateToStr(dtpPesquisa.Date) + ' 23:59:59';   ;

    if (edtEndeAgendamento.Text='') and (edtNumAgend.Text='') then
    begin
      principal:=' where agendamentos.agendDataHora between '+#39+data2+#39+' and '+#39+data3+#39;
    end
    else if (edtEndeAgendamento.Text='') then
    begin
      principal:=' where imoveis.imoNumero = '+edtNumAgend.Text+' and agendamentos.agendDataHora between '+#39+data2+#39+' and '+#39+data3+#39;
    end
    else if edtNumAgend.Text='' then
    begin
      principal:=' where imoveis.imoEndereco like '+#39+'%'+edtEndeAgendamento.Text+'%'+#39+' and agendamentos.agendDataHora between '+#39+data2+#39+' and '+#39+data3+#39;
    end
    else
    begin
      principal:=' where imoveis.imoEndereco like '+#39+'%'+edtEndeAgendamento.Text+'%'+#39+' and imoveis.imonumero = '+edtNumAgend.Text+' and agendamentos.agendDataHora between '+#39+data2+#39+' and '+#39+data3+#39;
    end;
  end;

    dm.qryConsAgendamentos2.SQL.Add(selectSql + principal + secundario);

  if (rbtFunc.Checked=True) then
  begin
    dm.qryConsAgendamentos2.Parameters.ParamByName('pAgendDataHora').Value:='%'+edtNome.Text+'%';
  end;

  if (rbtCliente.Checked=True) then
  begin
    dm.qryConsAgendamentos2.Parameters.ParamByName('pAgendDataHora').Value:='%'+edtNome.Text+'%';
  end;

  if (rbtDtHora.Checked=True) then
  begin
    data:= DateToStr(dtpPesquisa.Date) + ' 00:00:00';
    dm.qryConsAgendamentos2.Parameters.ParamByName('pdtinicio').Value := StrToDateTime(data);
    data:= DateToStr(dtpPesquisa.Date) + ' 23:59:59';
    dm.qryConsAgendamentos2.Parameters.ParamByName('pdtfim').Value := StrToDateTime(data);
  end;

  dm.qryConsAgendamentos2.Open;
end;



procedure TfrmConAgendamento.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
dm.qryConsAgendamentos2.Close;
end;

procedure TfrmConAgendamento.FormShow(Sender: TObject);
begin
principal:='where agendamentos.agendDataHora between :pdtinicio and :pdtfim';
secundario:=' ORDER BY agendDataHora ASC';

end;

procedure TfrmConAgendamento.Image2Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

procedure TfrmConAgendamento.rbtClienteClick(Sender: TObject);
begin

principal:='where clientes.cliNome like :pAgendDataHora';

edtEndeAgendamento.Visible:=False;
edtNumAgend.Visible:=False;
lblImovel.Visible:=False;
lblNumero.Visible:=False;
dtpPesquisa.Visible:=False;
lblData.Visible:=False;
lblNome.Visible:=True;
edtNome.Visible:=True;
edtEndeAgendamento.Clear;
edtNumAgend.Clear;
edtNome.Clear;

end;

procedure TfrmConAgendamento.rbtDtEnderecoClick(Sender: TObject);
begin

edtEndeAgendamento.Visible:= True;
edtNumAgend.Visible:= True;
lblImovel.Visible:= True;
lblNumero.Visible:=True;
dtpPesquisa.Visible:=True;
lblData.Visible:=true;
lblNome.Visible:=False;
edtNome.Visible:=False;
edtEndeAgendamento.Clear;
edtNumAgend.Clear;
edtNome.Clear;


end;

procedure TfrmConAgendamento.rbtDtHoraClick(Sender: TObject);
begin
principal:='where agendamentos.agendDataHora between :pdtinicio and :pdtfim';

edtEndeAgendamento.Visible:=false;
edtNumAgend.Visible:=false;
lblImovel.Visible:=False;
lblNumero.Visible:=False;
dtpPesquisa.Visible:=True;
lblData.Visible:=true;
 lblNome.Visible:=False;
 edtNome.Visible:=False;
edtEndeAgendamento.Clear;
edtNumAgend.Clear;
edtNome.Clear;

end;

procedure TfrmConAgendamento.rbtEnderecoClick(Sender: TObject);
begin

edtEndeAgendamento.Visible:=True;
edtNumAgend.Visible:=True;
lblImovel.Visible:=True;
lblNumero.Visible:=True;
dtpPesquisa.Visible:=False;
lblData.Visible:=False;
 lblNome.Visible:=False;
 edtNome.Visible:=False;
edtEndeAgendamento.Clear;
edtNumAgend.Clear;
edtNome.Clear;

end;

procedure TfrmConAgendamento.rbtFuncClick(Sender: TObject);
begin

principal:='where funcionarios.funNome like :pAgendDataHora';

edtEndeAgendamento.Visible:=False;
edtNumAgend.Visible:=False;
lblImovel.Visible:=False;
lblNumero.Visible:=False;
dtpPesquisa.Visible:=False;
lblData.Visible:=False;
 lblNome.Visible:=True;
 edtNome.Visible:=True;
edtEndeAgendamento.Clear;
edtNumAgend.Clear;
edtNome.Clear;


end;

procedure TfrmConAgendamento.rbtMaiorProxClick(Sender: TObject);
begin

  secundario:=' ORDER BY agendDataHora ASC';

end;

procedure TfrmConAgendamento.rbtMenorProxClick(Sender: TObject);
begin

  secundario:=' ORDER BY agendDataHora DESC';

end;

end.
