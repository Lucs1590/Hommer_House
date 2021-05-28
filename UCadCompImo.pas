unit UCadCompImo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmCompImo = class(TForm)
    dsCompImo: TDataSource;
    Label2: TLabel;
    edtQuantidade: TDBEdit;
    Label3: TLabel;
    edtCaracteristica: TDBEdit;
    Label4: TLabel;
    edtCodComp: TDBEdit;
    Label5: TLabel;
    txtCodImo: TDBText;
    btnSelecionar: TBitBtn;
    Shape1: TShape;
    imag: TShape;
    spAdd: TShape;
    spEdt: TShape;
    spRemover: TShape;
    spCanc: TShape;
    spSalvar: TShape;
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
    Shape2: TShape;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsCompImoStateChange(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarytClick(Sender: TObject);
    procedure edtQuantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure btnSelecionarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompImo: TfrmCompImo;

implementation

{$R *.dfm}

uses UCadImovel, UDM, UComplementos;

procedure TfrmCompImo.btnSelecionarClick(Sender: TObject);
begin
    frmComplementos:=TfrmComplementos.Create(Self);

    try
      frmComplementos.ShowModal;
    finally
      frmComplementos.Release;
      frmComplementos:= Nil;
    end;
end;

procedure TfrmCompImo.btnAdicionarClick(Sender: TObject);
begin
     dsCompImo.dataset.Insert;
end;

procedure TfrmCompImo.btnCancelarClick(Sender: TObject);
begin
      dsCompImo.DataSet.Cancel;
end;

procedure TfrmCompImo.btnRemoverClick(Sender: TObject);
begin
   if MessageBox(Application.Handle,'Você deseja realmente remover este complemento do Imóvel?',
    'Excluir',36) =idYes then
    begin
       dsCompImo.DataSet.delete;
      dm.qryConsComplemento.Close;
      dm.qryConsComplemento.Open;
    end;
end;

procedure TfrmCompImo.btnSalvarytClick(Sender: TObject);
begin
    if ((edtCodComp.Text='')) then
    begin
      ShowMessage('Selecione um Complemento');
    end
    else
    begin
      dsCompImo.DataSet.POST;
      dm.qryConsComplemento.Close;
      dm.qryConsComplemento.Open;
    end;

end;

procedure TfrmCompImo.dsCompImoStateChange(Sender: TObject);
begin
     btnAdicionar.Enabled := dsCompImo.State = dsBrowse;
     btnEditar.Enabled := dsCompImo.State = dsBrowse;
     btnRemover.Enabled := dsCompImo.State = dsBrowse;
     btnCancelar.Enabled := dsCompImo.State in [dsInsert, dsEdit];
     btnSalvar.Enabled := dsCompImo.State in [dsInsert, dsEdit];
     btnSelecionar.Enabled := dsCompImo.State in [dsInsert, dsEdit];
     if dsCompImo.State in [dsInsert, dsEdit] then   // modo inserção deixa o shape em cinza
     begin
      spAdd.Brush.Color:=clgray;
      spEdt.Brush.Color:=clgray;
      spRemover.Brush.Color:=clgray;
      spCanc.Brush.Color:=$00B02BBD;
      spSalvar.Brush.Color:=$00B02BBD;
     end
     else
     begin
      spAdd.Brush.Color:=$00B02BBD;
      spEdt.Brush.Color:=$00B02BBD;
      spRemover.Brush.Color:=$00B02BBD;
      spCanc.Brush.Color:=clgray;
      spSalvar.Brush.Color:=clgray;
     end;
end;

procedure TfrmCompImo.edtQuantidadeKeyPress(Sender: TObject; var Key: Char);
begin
    inherited;
    if not (key in ['0'..'9',#8]) then
     key:=#0;
end;

procedure TfrmCompImo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dm.qryCompImoveis.Close;
end;

procedure TfrmCompImo.FormShow(Sender: TObject);
begin
    dm.qryCompImoveis.Open;
end;

procedure TfrmCompImo.Image2Click(Sender: TObject);
begin
    dsCompImo.DataSet.Edit;
end;

procedure TfrmCompImo.btnSalvarClick(Sender: TObject);
begin
    if ((edtCodComp.Text='')) then
    begin
      ShowMessage('Selecione um Complemento');
    end
    else
    begin
      dsCompImo.DataSet.POST;
      dm.qryConsComplemento.Close;
      dm.qryConsComplemento.Open;
    end;
end;

end.
