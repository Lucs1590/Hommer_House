unit UConfig;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ColorGrd, Vcl.ActnColorMaps,
  Vcl.ActnMan, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask, Data.DB,
  Vcl.DBCtrls;

type
  TfrmConfiguracao = class(TForm)
    cbCoresForm: TColorBox;
    btnAplicar: TBitBtn;
    btnCancelar: TBitBtn;
    lblCorForm: TLabel;
    Label1: TLabel;
    edtTempo: TMaskEdit;
    lblPadTempo: TLabel;
    DSConfig: TDataSource;
    edtCor: TDBEdit;
    edtTempoData: TDBEdit;
    procedure btnAplicarClick(Sender: TObject);
    procedure DSConfigDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfiguracao: TfrmConfiguracao;

implementation

{$R *.dfm}

uses UPrincipal, UCadAgendamento, UCadCliente, UCadFuncionario, UCadImovel,
  UCadServTerceirizado, UConAgendamento, UConCliente, UConFuncionario,
  UConImovel, UConLocacao, UConMen, UConServTerceirizado, UConVenda, UDM,
  ULocCasa, ULogin, UMensagem, UVenApartamento;

procedure TfrmConfiguracao.btnAplicarClick(Sender: TObject);
begin
frmPrincipal.Color:=cbCoresForm.Selected;
frmPrincipal.tempo:= edtTempo.Text;

DSConfig.DataSet.Post;
end;
procedure TfrmConfiguracao.DSConfigDataChange(Sender: TObject; Field: TField);
begin
edtCor.Text:=ColorToString(cbCoresForm.Selected);
edtTempo.Text:=edtTempoData.Text;
end;

procedure TfrmConfiguracao.FormShow(Sender: TObject);
begin
DM.qryConfig.Open;
DSConfig.DataSet.Append;
end;

end.
