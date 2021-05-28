unit UVenApartamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmVenApartamento = class(TForm)
    lblCodCli: TLabel;
    dsVendas: TDataSource;
    lblCodImo: TLabel;
    dbeCodImo: TDBEdit;
    lblCodFunc: TLabel;
    lblPreco: TLabel;
    dbePreco: TDBEdit;
    lblDtVenda: TLabel;
    dbeDtVnd: TDBEdit;
    lblCodigo: TLabel;
    dbSit: TDBCheckBox;
    dtpVenda: TDateTimePicker;
    DBText1: TDBText;
    pnlPrimeiro: TPanel;
    pnlSegundo: TPanel;
    pnlTerceiro: TPanel;
    pnlQuarto: TPanel;
    dsClientes: TDataSource;
    dsFuncionarios: TDataSource;
    cbbCliente: TDBLookupComboBox;
    cbbFuncionario: TDBLookupComboBox;
    Shape1: TShape;
    Shape2: TShape;
    spExcluir: TShape;
    spEditar: TShape;
    spInserir: TShape;
    spCancelar: TShape;
    spSalvar: TShape;
    lblExcluir: TLabel;
    lblEditar: TLabel;
    lblInserir: TLabel;
    lblCancelar: TLabel;
    lblSalvar: TLabel;
    btnExcluir: TImage;
    btnEditar: TImage;
    btnInserir: TImage;
    btnCancelar: TImage;
    btnSalvar: TImage;
    Shape3: TShape;
    lblBuscar: TLabel;
    btnBusca: TImage;
    Shape4: TShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure dsVendasStateChange(Sender: TObject);
    procedure dtpVendaChange(Sender: TObject);
    procedure dsVendasDataChange(Sender: TObject; Field: TField);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnBuscaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVenApartamento: TfrmVenApartamento;

implementation

{$R *.dfm}

uses UDM, UConImovel;

procedure TfrmVenApartamento.btnBuscaClick(Sender: TObject);
begin
     frmConImovel:=TfrmConImovel.Create(self);
     frmConImovel.btnSelecionar.Tag:= 1 ; // tag 1 é consulta VenApart
     try
       frmConImovel.ShowModal;
     finally
       frmConImovel.Release;
       frmConImovel:= nil;
     end;
end;

procedure TfrmVenApartamento.btnCancelarClick(Sender: TObject);
begin
 dsVendas.DataSet.Cancel;
end;

procedure TfrmVenApartamento.btnEditarClick(Sender: TObject);
begin
 dsVendas.DataSet.Edit;
end;

procedure TfrmVenApartamento.btnExcluirClick(Sender: TObject);
begin
 if MessageBox(Application.Handle, 'Dejesa realmente excluir este registro', 'Excluir', 36)
 = idYes then
  begin
    dsVendas.DataSet.Delete;
  end;

end;

procedure TfrmVenApartamento.btnInserirClick(Sender: TObject);
begin
 dsVendas.DataSet.Append;
 dbeDtVnd.Text := DateToStr(Date);
 dtpVenda.Date := Date;
 dm.qryVendasvenSituacaoDePagamento.Value:=true;
end;

procedure TfrmVenApartamento.btnSalvarClick(Sender: TObject);
var
confValida : Boolean;
begin

 confValida := True;

 if dbeDtVnd.Text = DateToStr(date) then
 begin
   if MessageBox(Application.Handle,
   'A data da venda é hoje?', 'Confirmação', 36) = idNo then
 begin
   confValida := False;
   dtpVenda.SetFocus;
 end
 else
 begin
   confValida := True;
 end;
end;


   if dbePreco.Text = ''  then
   begin
     Application.MessageBox('Informe o preço da venda!', 'ERRO', 16);
     confValida := False;
     dbePreco.SetFocus;
   end;

if confValida = True then
 begin
   dsVendas.DataSet.Post;
    Application.MessageBox('Registro gravado com sucesso', 'Confirmação', 64);
 end;


end;

procedure TfrmVenApartamento.dsVendasDataChange(Sender: TObject; Field: TField);
begin
 if dsVendas.State <> dsInsert then
 begin
   dbeDtVnd.Text := DateToStr(dtpVenda.Date);
 end;

end;

procedure TfrmVenApartamento.dsVendasStateChange(Sender: TObject);
begin
btnInserir.Enabled := dsVendas.State = dsBrowse;
btnEditar.Enabled := dsVendas.State = dsBrowse;
btnExcluir.Enabled := dsVendas.State = dsBrowse;
btnSalvar.Enabled := dsVendas.State in [dsInsert, dsEdit];
btnCancelar.Enabled := dsVendas.State in [dsInsert, dsEdit];
dtpVenda.Enabled := dsVendas.State in [dsInsert, dsEdit];

if dsVendas.State in [dsInsert, dsEdit] then   // modo inserção deixa o shape em cinza
     begin
      spInserir.Brush.Color:=clgray;
      spEditar.Brush.Color:=clgray;
      spExcluir.Brush.Color:=clgray;
      spCancelar.Brush.Color:=$00D37A48;
      spSalvar.Brush.Color:=$00D37A48;
     end
     else
     begin
      spInserir.Brush.Color:=$00D37A48;
      spEditar.Brush.Color:=$00D37A48;
      spExcluir.Brush.Color:=$00D37A48;
      spCancelar.Brush.Color:=clgray;
      spSalvar.Brush.Color:=clgray;
     end;



end;

procedure TfrmVenApartamento.dtpVendaChange(Sender: TObject);
begin
 dbeDtVnd.Text := DateToStr(dtpVenda.Date);
end;

procedure TfrmVenApartamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.qryVendas.Close;
 dm.qryFuncionarios.Close;
 dm.qryClientes.Close;
end;

procedure TfrmVenApartamento.FormShow(Sender: TObject);
begin
 DM.qryVendas.Open;
 dm.qryFuncionarios.Open;
 dm.qryClientes.Open;
end;

end.
