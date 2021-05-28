unit UDesbloqueio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmDesbloquear = class(TForm)
    grdBloquados: TDBGrid;
    lblIntroducao: TLabel;
    lblDescricao: TLabel;
    dsBloqueados: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdBloquadosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDesbloquear: TfrmDesbloquear;

implementation

{$R *.dfm}

uses UDM;

procedure TfrmDesbloquear.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.qryconsfuncionarios.close;
end;

procedure TfrmDesbloquear.FormShow(Sender: TObject);
begin
    dm.qryConsFuncionarios.Close;
    dm.qryConsFuncionarios.SQL.Clear;
    dm.qryConsFuncionarios.SQL.Add('select funCodigo, funTipo, funNome, funRG, funCPF, funEndereco, funCidade, '
 +'funEstado, funSituacao, funPagamentoBruto, funDataNascimento, '
 +'funCTPS, funCRECI, funObservacoes, funDataAdmissao, funDataDemissao, '
 +'funBairro, funLogin, funSenha, funCargo, funBloqueio from FUNCIONARIOS '
 +'Where funbloqueio >= 5 ');
    dm.qryConsFuncionarios.Open;
end;

procedure TfrmDesbloquear.grdBloquadosDblClick(Sender: TObject);
begin
      if(grdBloquados.SelectedRows.Count -1 = 0 ) then
      begin
      dsBloqueados.DataSet.Edit;
      DM.qryConsFuncionarios.FieldByName('funbloqueio').value:= 0;
      dsBloqueados.DataSet.Post;
      ShowMessage('Usuário Desbloqueado.');
      dm.qryConsFuncionarios.Close;
      dm.qryConsFuncionarios.Open;
      end;
end;

end.
