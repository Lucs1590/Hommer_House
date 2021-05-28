unit UCadAgendamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls, UDM;

type
  TfrmCadAgendamento = class(TForm)
    spTopo: TShape;
    spbot: TShape;
    spTotal: TShape;
    lblCod: TLabel;
    lblData: TLabel;
    lblCodFunc: TLabel;
    lblCodCli: TLabel;
    lblCodImo: TLabel;
    DBCodigo: TDBText;
    lblrecebeCodFunc: TLabel;
    lblrecebeCodClientes: TLabel;
    lblrecebeCodImovel: TLabel;
    lblhora: TLabel;
    edtDtHora: TDBEdit;
    edtCodImo: TDBEdit;
    dtpDtHora: TDateTimePicker;
    edtHora: TMaskEdit;
    cbbClientes: TDBLookupComboBox;
    cbbFuncionarios: TDBLookupComboBox;
    dsCadAgendamento: TDataSource;
    DSCliente: TDataSource;
    dsFuncionarios: TDataSource;
    spInserir: TShape;
    spEditar: TShape;
    spExcluir: TShape;
    spCancelar: TShape;
    spSalvar: TShape;
    lblInserir: TLabel;
    lblEditar: TLabel;
    lblExcluir: TLabel;
    lblSalvar: TLabel;
    lblCancelar: TLabel;
    btnInserir: TImage;
    btnEditar: TImage;
    btnCancelar: TImage;
    btnExcluir: TImage;
    btnSalvar: TImage;
    spImov: TShape;
    lblBuscarImo: TLabel;
    btnBuscImo: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure dsCadAgendamentoStateChange(Sender: TObject);
    procedure dtpDtHoraChange(Sender: TObject);
    procedure dsCadAgendamentoDataChange(Sender: TObject; Field: TField);
    procedure btnBuscFunClick(Sender: TObject);
    procedure btnBuscCliClick(Sender: TObject);
    procedure btnBuscImoClick(Sender: TObject);
  private

    { Private declarations }

  public


    { Public declarations }
      CadAgendfunCodigo,CadAgendcliCodigo,CadAgendimoCodigo:integer;

  end;

var
  frmCadAgendamento: TfrmCadAgendamento;

implementation

{$R *.dfm}

uses UConAgendamento, UPrincipal, UConFuncionario, UTelMail, UConCliente,
  UConImovel;


procedure TfrmCadAgendamento.btnBuscCliClick(Sender: TObject);
begin

frmPrincipal.busc:=True;
frmConCliente:= TfrmConCliente.Create(Self);
frmConCliente.ShowModal;

end;

procedure TfrmCadAgendamento.btnBuscFunClick(Sender: TObject);
begin

frmPrincipal.busc:=True;
frmConFuncionario := TfrmConFuncionario.Create(Self);
frmConFuncionario.ShowModal;

end;

procedure TfrmCadAgendamento.btnBuscImoClick(Sender: TObject);
begin
     frmConImovel:=TfrmConImovel.Create(self);
     frmConImovel.btnSelecionar.Tag:=2; // tag 2 é consulta CadAgendamento
     try
       frmConImovel.ShowModal;
     finally
       frmConImovel.Release;
       frmConImovel:= nil;
     end;
end;

procedure TfrmCadAgendamento.btnCancelarClick(Sender: TObject);
begin
 dsCadAgendamento.DataSet.Cancel;
 if frmPrincipal.new=True  then
 begin
   frmCadAgendamento.Close;
 end;

 if frmPrincipal.edt=True then
 begin
    frmCadAgendamento.Close;
 end;

 end;

procedure TfrmCadAgendamento.btnInserirClick(Sender: TObject);
begin
 dsCadAgendamento.DataSet.Append;
 dtpDtHora.Date := Date;
end;

procedure TfrmCadAgendamento.btnSalvarClick(Sender: TObject);
var
confValida : Boolean;
data,atual:string;
begin

  confValida := True;
  atual:= datetostr(dtpDtHora.Date);

  if strtodate(atual) = date then
  begin
      if MessageBox(Application.Handle, 'A data de agendamento é hoje?', 'Confirmação',36) = idNo then
     begin
       confValida := False;
       dtpDtHora.SetFocus;
     end
    else
     begin
       confValida := True;
       data:=datetostr(dtpDtHora.Date) + edtHora.Text;
       dm.qryAgendamentosagendDataHora.Value := StrToDateTime(data);
     end;
  end
  else
  begin
      data:=datetostr(dtpDtHora.Date) + edtHora.Text;
      dm.qryAgendamentosagendDataHora.Value := StrToDateTime(data);
  end;

     if cbbClientes.Text='' then
     begin
       Application.MessageBox('Selecione um Cliente','ERRO',16);
       confValida := False;
     end;
     if cbbFuncionarios.Text='' then
     begin
        Application.MessageBox('Selecione um Funcionário','ERRO',16);
       confValida := False;
     end ;
     if edtHora.Text='  :  :  ' then
     begin
        Application.MessageBox('Digite uma Data','ERRO',16);
       confValida := False;
     end;
  if confValida = True then
  begin
    dsCadAgendamento.DataSet.Post;
    Application.MessageBox('Registro efetuado com sucesso!','Confirmação', 64);
  end;



  end;

procedure TfrmCadAgendamento.btnEditarClick(Sender: TObject);
begin
 dsCadAgendamento.DataSet.Edit;
end;

procedure TfrmCadAgendamento.btnExcluirClick(Sender: TObject);
begin
 if MessageBox(Application.Handle, 'Deseja excluir este registro?', 'Excluir', 36) =idYes then
 begin
   dsCadAgendamento.DataSet.Delete;
 end;

end;

procedure TfrmCadAgendamento.dsCadAgendamentoDataChange(Sender: TObject;
  Field: TField);
begin   {
 if dsCadAgendamento.State <> dsInsert then
  begin
    edtDtHora.Text := DateToStr(dtpDtHora.Date);
  end;}


end;

procedure TfrmCadAgendamento.dsCadAgendamentoStateChange(Sender: TObject);
begin
     btnInserir.Enabled := dsCadAgendamento.State = dsBrowse;
     btnEditar.Enabled := dsCadAgendamento.State = dsBrowse;
     btnExcluir.Enabled := dsCadAgendamento.State = dsBrowse;
     btnSalvar.Enabled := dsCadAgendamento.State in [dsInsert, dsEdit];
     btnCancelar.Enabled := dsCadAgendamento.State in [dsInsert, dsEdit];
     dtpDtHora.Enabled := dsCadAgendamento.State in [dsInsert, dsEdit];
     btnBuscImo.Enabled:= dsCadAgendamento.State in [dsInsert, dsEdit];
     if dsCadAgendamento.State in [dsInsert, dsEdit] then   // modo inserção deixa o shape em cinza
     begin
      spInserir.Brush.Color:=clgray;
      spEditar.Brush.Color:=clgray;
      spExcluir.Brush.Color:=clgray;
      spCancelar.Brush.Color:=$00B85B78;
      spSalvar.Brush.Color:=$00B85B78;
      spImov.Brush.Color:= $00B85B78;
     end
     else
     begin
      spInserir.Brush.Color:=$00B85B78;
      spEditar.Brush.Color:=$00B85B78;
      spExcluir.Brush.Color:=$00B85B78;
      spCancelar.Brush.Color:=clgray;
      spSalvar.Brush.Color:=clgray;
      spImov.Brush.Color:= clGray;
     end;

end;

procedure TfrmCadAgendamento.dtpDtHoraChange(Sender: TObject);
begin
 edtDtHora.Text := DateToStr(dtpDtHora.Date);
end;

procedure TfrmCadAgendamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

 DM.qryAgendamentos.Close;
 DM.qryClientes.Close;
 dm.qryFuncionarios.Close ;
 frmPrincipal.new:=False;

 end;

procedure TfrmCadAgendamento.FormShow(Sender: TObject);
begin

DM.qryAgendamentos.Open;
DM.qryClientes.Open;
dm.qryFuncionarios.Open;
      {
if frmPrincipal.new=True then
begin
  dsCadAgendamento.DataSet.Append;
  edtDtHora.Text := DateToStr(Date)+' '+edtHora.Text;
  dtpDtHora.Date := Date;
end
else if frmPrincipal.edt=True then
     begin
       dm.qryAgendamentosagendCodigo.Value:=frmPrincipal.editar;
       dsCadAgendamento.DataSet.Edit;
       edtDtHora.Text := DateToStr(Date)+' '+edtHora.Text;
     end;
             }
 end;

end.
