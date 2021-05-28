unit UCadComplemento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.Mask, Data.DB, Vcl.ExtCtrls;

type
  TfrmCadComp = class(TForm)
    Label1: TLabel;
    dsComplemento: TDataSource;
    Label2: TLabel;
    edtNome: TDBEdit;
    txtCodigo: TDBText;
    dsTpComp: TDataSource;
    dsTpImovel: TDataSource;
    gbTipoImo: TGroupBox;
    cbLote: TCheckBox;
    cbCasa: TCheckBox;
    cbApartamento: TCheckBox;
    cbComer: TCheckBox;
    dsExlcuirTComp: TDataSource;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    lblAdicionar: TLabel;
    lblEditar: TLabel;
    lblRemover: TLabel;
    lblCancelar: TLabel;
    lblSalvar: TLabel;
    btnAdicionar: TImage;
    btnEditar: TImage;
    btnRemover: TImage;
    btnCancelar: TImage;
    btnSalvar: TImage;
    Shape8: TShape;
    dsConComp: TDataSource;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsComplementoStateChange(Sender: TObject);
    procedure cbLoteClick(Sender: TObject);
    procedure cbApartamentoClick(Sender: TObject);
    procedure cbCasaClick(Sender: TObject);
    procedure cbComerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadComp: TfrmCadComp;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmCadComp.btnAdicionarClick(Sender: TObject);
begin
 dsComplemento.DataSet.Insert;
end;

procedure TfrmCadComp.btnCancelarClick(Sender: TObject);
begin
    dsComplemento.DataSet.Cancel;
end;

procedure TfrmCadComp.btnEditarClick(Sender: TObject);
begin
dsComplemento.DataSet.Edit;
end;

procedure TfrmCadComp.btnSalvarClick(Sender: TObject);
begin
    if edtNome.Text='' then
    ShowMessage('Insira um Nome para o Complemento')
    else
    dsComplemento.DataSet.Post;

     dm.qryComplementos.Close;
     dm.qryComplementos.Open;

end;

procedure TfrmCadComp.cbApartamentoClick(Sender: TObject);
begin
    if cbApartamento.Checked=true then
    begin
      DM.qryTipoComp.Open;
      dsTpComp.DataSet.Append;
      DM.qryTipoCompcompCodigo.Value:=dm.qryComplementocompCodigo.Value;
      dm.qryTipoComptpImoCodigo.Value:=2;
      dsTpComp.DataSet.Post;
      dm.qryTipoComp.Close;
    end
    else
    begin
      dm.qryexcluirtpcomp.Close;
      dm.qryExcluirTpComp.Parameters.ParamByName('compCodigo').Value:= dm.qryComplementocompCodigo.Value;
      dm.qryExcluirTpComp.Parameters.ParamByName('tpImoCodigo').Value:= 2;
      dm.qryExcluirTpComp.Open;
      dsExlcuirTComp.DataSet.Delete;
    end;
end;

procedure TfrmCadComp.cbCasaClick(Sender: TObject);
begin
    if cbCasa.Checked=true then
    begin
      DM.qryTipoComp.Open;
      dsTpComp.DataSet.Append;
      DM.qryTipoCompcompCodigo.Value:=dm.qryComplementocompCodigo.Value;
      dm.qryTipoComptpImoCodigo.Value:=1;
      dsTpComp.DataSet.Post;
      dm.qryTipoComp.Close;
    end
    else
    begin
      dm.qryexcluirtpcomp.Close;
      dm.qryExcluirTpComp.Parameters.ParamByName('compCodigo').Value:= dm.qryComplementocompCodigo.Value;
      dm.qryExcluirTpComp.Parameters.ParamByName('tpImoCodigo').Value:= 1;
      dm.qryExcluirTpComp.Open;
      dsExlcuirTComp.DataSet.Delete;
    end;
end;

procedure TfrmCadComp.cbComerClick(Sender: TObject);
begin
    if cbComer.Checked=true then
    begin
      DM.qryTipoComp.Open;
      dsTpComp.DataSet.Append;
      DM.qryTipoCompcompCodigo.Value:=dm.qryComplementocompCodigo.Value;
      dm.qryTipoComptpImoCodigo.Value:=4;
      dsTpComp.DataSet.Post;
      dm.qryTipoComp.Close;
    end
    else
    begin
      dm.qryexcluirtpcomp.Close;
      dm.qryExcluirTpComp.Parameters.ParamByName('compCodigo').Value:= dm.qryComplementocompCodigo.Value;
      dm.qryExcluirTpComp.Parameters.ParamByName('tpImoCodigo').Value:= 4;
      dm.qryExcluirTpComp.Open;
      dsExlcuirTComp.DataSet.Delete;
    end;
end;

procedure TfrmCadComp.cbLoteClick(Sender: TObject);
begin
    if cbLote.Checked=true then
    begin
      DM.qryTipoComp.Open;
      dsTpComp.DataSet.Append;
      DM.qryTipoCompcompCodigo.Value:=dm.qryComplementocompCodigo.Value;
      dm.qryTipoComptpImoCodigo.Value:=3;
      dsTpComp.DataSet.Post;
      dm.qryTipoComp.Close;
    end
    else
    begin
      dm.qryexcluirtpcomp.Close;
      dm.qryExcluirTpComp.Parameters.ParamByName('compCodigo').Value:= dm.qryComplementocompCodigo.Value;
      dm.qryExcluirTpComp.Parameters.ParamByName('tpImoCodigo').Value:= 3;
      dm.qryExcluirTpComp.Open;
      dsExlcuirTComp.DataSet.Delete;
    end;
end;

procedure TfrmCadComp.dsComplementoStateChange(Sender: TObject);
begin
     gbTipoImo.Enabled := dsComplemento.State = dsBrowse;
     btnAdicionar.Enabled := dsComplemento.State = dsBrowse;
     btnEditar.Enabled := dsComplemento.State = dsBrowse;
     btnRemover.Enabled := dsComplemento.State = dsBrowse;
     btnCancelar.Enabled := dsComplemento.State in [dsInsert, dsEdit];
     btnSalvar.Enabled := dsComplemento.State in [dsInsert, dsEdit];
end;

procedure TfrmCadComp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dm.qryComplemento.Close;
end;

procedure TfrmCadComp.FormShow(Sender: TObject);
begin
    dm.qryComplemento.Open;
    dm.qryConsTpComp.close;
    dm.qryConsTpComp.Parameters.ParamByName('compCodigoo').Value:=
    dm.qryComplementocompCodigo.value;
    dm.qryConsTpComp.Open;
    while not dsConComp.DataSet.Eof do
    begin
      if dm.qryConsTpComptpImoCodigo.Value=2 then
      begin
        cbApartamento.Checked:=true;
      end
      else
      if dm.qryConsTpComptpImoCodigo.Value=1 then
      begin
        cbCasa.Checked:=true;
      end
      else
      if dm.qryConsTpComptpImoCodigo.Value=4 then
      begin
        cbComer.Checked:=true;
      end
      else
      if dm.qryConsTpComptpImoCodigo.Value=3 then
      begin
        cbLote.Checked:=true;
      end;
      dsConComp.DataSet.Next;
    end;


end;

end.
