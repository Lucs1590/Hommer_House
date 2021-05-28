unit UComplementos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Data.DB, Vcl.ExtCtrls;

type
  TfrmComplementos = class(TForm)
    grdComplementos: TDBGrid;
    edtComplemento: TEdit;
    Label1: TLabel;
    dsComplemento: TDataSource;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    lblPesquisar: TLabel;
    lblAddComp: TLabel;
    btnPesquisar: TImage;
    btnAddComp: TImage;
    Shape5: TShape;
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdComplementosDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnAddCompClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmComplementos: TfrmComplementos;

implementation

{$R *.dfm}

uses UCadCompImo, UCadImovel, UDM, UCadComplemento;

procedure TfrmComplementos.btnAddCompClick(Sender: TObject);
begin
    frmCadComp:=TfrmCadComp.Create(Self);

    dm.qryTipoComp.DataSource:=frmCadComp.dsComplemento;
    dm.qryTipoImoveis.DataSource:=frmCadComp.dsTpComp;
    try
      frmCadComp.ShowModal;
    finally
      frmCadComp.Release;
      frmCadComp:= Nil;
    end;
end;

procedure TfrmComplementos.btnAdicionarClick(Sender: TObject);
begin
    frmCadComp:=TfrmCadComp.Create(Self);

    try
      frmCadComp.ShowModal;
    finally
      frmCadComp.Release;
      frmCadComp:= Nil;
    end;
end;

procedure TfrmComplementos.btnPesquisarClick(Sender: TObject);
begin
    dm.qryComplementos.Close;
    dm.qryComplementos.Parameters.ParamByName('pComp').Value:=('%'+edtComplemento.Text+'%');
    dm.qryComplementos.Open;
end;

procedure TfrmComplementos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      if(grdComplementos.SelectedRows.Count -1 = 0 ) then
      begin
       dm.qryCompImoveiscompCodigo.Value:= dm.qryComplementoscompCodigo.Value;
      end;
    DM.qryComplementos.Open;

end;

procedure TfrmComplementos.FormShow(Sender: TObject);
begin
    dm.qryComplementos.Close;
    dm.qryComplementos.Parameters.ParamByName('pComp').Value:=('%'+edtComplemento.Text+'%');
    dm.qryComplementos.Open;
end;

procedure TfrmComplementos.grdComplementosDblClick(Sender: TObject);
begin
    close;
end;

end.
