unit ULocCasa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmLocCasa = class(TForm)
    lblLocCodigo: TLabel;
    lblLocPreco: TLabel;
    lblLocInicio: TLabel;
    lblimoCodigo: TLabel;
    lblCliente: TLabel;
    lblLocFim: TLabel;
    imoCodigo: TDBEdit;
    edtInicio: TDBEdit;
    edtFim: TDBEdit;
    locPreco: TDBEdit;
    dsLocacao: TDataSource;
    dateInicio: TDateTimePicker;
    dateFim: TDateTimePicker;
    DsClientes: TDataSource;
    txtCodLoc: TDBText;
    spTopo: TShape;
    spbot: TShape;
    spTotal: TShape;
    lblrecebeCodFunc: TLabel;
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
    btnEditar: TImage;
    btnCancelar: TImage;
    btnExcluir: TImage;
    btnSalvar: TImage;
    btnInserir: TImage;
    cbbCliente: TDBLookupComboBox;
    spBuscar: TShape;
    lblConsImo: TLabel;
    btnBuscar: TImage;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnInserirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure dsLocacaoDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocCasa: TfrmLocCasa;

implementation

{$R *.dfm}

uses UDM, UPrincipal, UConImovel;

procedure TfrmLocCasa.btnBuscarClick(Sender: TObject);
begin
     frmConImovel:=TfrmConImovel.Create(self);
     frmConImovel.btnSelecionar.Tag:=3; // tag 3 é consulta Locação
     try
       frmConImovel.ShowModal;
     finally
       frmConImovel.Release;
       frmConImovel:= nil;
     end;
end;

procedure TfrmLocCasa.btnCancelarClick(Sender: TObject);
begin
    dsLocacao.DataSet.Cancel;
end;

procedure TfrmLocCasa.btnEditarClick(Sender: TObject);
begin
    dsLocacao.DataSet.Edit;
end;

procedure TfrmLocCasa.btnExcluirClick(Sender: TObject);
begin
    if MessageBox(Application.Handle,'Você realmente deseja excluir esta Locação?',
    'Excluir',36) = idYes then
    begin
      dsLocacao.DataSet.Delete;
    end;
end;

procedure TfrmLocCasa.btnInserirClick(Sender: TObject);
begin
    dsLocacao.DataSet.Append;
    dateInicio.Date:=date;
    dateFim.Date:=date;
end;

procedure TfrmLocCasa.btnSalvarClick(Sender: TObject);
var
confValida : Boolean;
begin
 confValida := True;
   edtInicio.Text:=DatetoStr(dateInicio.Date);
   edtfim.Text:=datetostr(datefim.Date);
  if edtfim.Text= datetostr(date) then
  begin
    edtfim.Text:='';    //se a data final for no dia atual, o aluguel não tera
  end;                 // Prazo
  if edtInicio.Text = DateToStr (date) then
  begin
     if MessageBox (Application.Handle,
     'A data de incio da locação está correta ?','Confirmação',36) = idNo then
      begin
        confValida := False;
      end
      else
      begin
        confValida := True;
      end;
  end;
  if ((imoCodigo.Text = '' ) or (locPreco.Text = '' ) )
   then
  begin
    if imoCodigo.Text = ''  then
    begin
      Application.MessageBox('Selecione o imóvel!', 'ERRO',16);
      confValida := False;
      imoCodigo.SetFocus;
    end;
    if locPreco.Text = '' then
    begin
      Application.MessageBox('Digite o valor da locação !', 'ERRO',16);
      confValida := False;
      locPreco.SetFocus;
    end;

  end;
  if confValida = True then
begin
  dslocacao.DataSet.Post;
  Application.MessageBox('Cadastro salvo com sucesso!','Ok!',64);
end;
end;

procedure TfrmLocCasa.dsLocacaoDataChange(Sender: TObject; Field: TField);
begin
     btnInserir.Enabled := dsLocacao.State = dsBrowse;
     btnEditar.Enabled := dsLocacao.State = dsBrowse;
     btnExcluir.Enabled := dsLocacao.State = dsBrowse;
     btnSalvar.Enabled := dsLocacao.State in [dsInsert, dsEdit];
     btnCancelar.Enabled := dsLocacao.State in [dsInsert, dsEdit];
     btnBuscar.Enabled:= dsLocacao.State in [dsInsert, dsEdit];

if dsLocacao.State in [dsInsert, dsEdit] then   // modo inserção deixa o shape em cinza
     begin
      spInserir.Brush.Color:=clgray;
      spEditar.Brush.Color:=clgray;
      spExcluir.Brush.Color:=clgray;
      spCancelar.Brush.Color:=$00B85B78;
      spSalvar.Brush.Color:=$00B85B78;
      spBuscar.Brush.Color:=$00B85B78;
     end
     else
     begin
      spInserir.Brush.Color:=$00B85B78;
      spEditar.Brush.Color:=$00B85B78;
      spExcluir.Brush.Color:=$00B85B78;
      spCancelar.Brush.Color:=clgray;
      spSalvar.Brush.Color:=clgray;
      spBuscar.Brush.Color:=clgray;
     end;
end;

procedure TfrmLocCasa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dm.qryLocacao.Close;
    dm.qryClientes.Close;
end;

procedure TfrmLocCasa.FormShow(Sender: TObject);
begin
    dm.qryLocacao.Open;
    dm.qryClientes.Open;
end;

end.
