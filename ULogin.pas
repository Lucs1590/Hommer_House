unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Data.DB, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg;

type
  TfrmLogin = class(TForm)
    pnlDicas: TPanel;
    lblDica1: TLabel;
    lblDica2: TLabel;
    dsLogin: TDataSource;
    lblDica3: TLabel;
    dsBloqueio: TDataSource;
    btnEntrar: TBitBtn;
    btnSair: TBitBtn;
    lblLogin: TLabel;
    lblSenha: TLabel;
    edtUsuario: TEdit;
    edtSenha: TMaskEdit;
    lblInfor: TLabel;
    Image1: TImage;
    procedure btnEntrarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure edtSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses UDM, UPrincipal;

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
begin

dm.qryLogin.close;
dm.qryLogin.Parameters.ParamByName('pLogin').Value:=edtUsuario.Text;
dm.qryLogin.Parameters.ParamByName('pSenha').Value:=edtSenha.Text;
dm.qryLogin.Open;

    dm.qryBloqueioLogin.close;
    dm.qryBloqueioLogin.Parameters.ParamByName('pLogin').Value:=edtUsuario.Text;
    dm.qryBloqueioLogin.Open;

    if (dm.qryBloqueioLogin.IsEmpty) then
    begin
      MessageBox(Application.Handle, 'Usuário inválido','Acesso Negado'
     , 16);
     edtSenha.Clear;
     edtUsuario.SetFocus;
    end
    else
    begin
      // tem login
      if dm.qryBloqueioLoginfunBloqueio.Value=5 then
      begin
       ShowMessage('Usuário Bloqueado');
       edtUsuario.Clear;
       edtSenha.Clear;
       edtUsuario.SetFocus;
      end
      else
      begin
        if dm.qryLogin.IsEmpty then
        begin
          dsBloqueio.DataSet.Edit;
          DM.qryBloqueioLoginfunBloqueio.value:=DM.qryBloqueioLoginfunBloqueio.value+1;
          dsBloqueio.DataSet.Post;
          MessageBox(Application.Handle, 'Senha inválida','Acesso Negado'
          , 16);
          edtSenha.Clear;
          edtSenha.SetFocus;
            if DM.qryBloqueioLoginfunBloqueio.value=3 then
            begin
              ShowMessage('Atenção! Você só possui mais 2 chances para acertar a senha.'+
              ' Caso contrário, será bloqueado do sistema!');
            end;
            if DM.qryBloqueioLoginfunBloqueio.value=5 then
            begin
              ShowMessage('Usuário Bloqueado! Para ter acesso novamente pessa para um'+
              ' Administrador liberá-lo');
            end;
        end
        else
        begin
         dsBloqueio.DataSet.Edit;
         DM.qryBloqueioLoginfunBloqueio.value:=0;
         dsBloqueio.DataSet.Post;
         Application.CreateForm(TfrmPrincipal, frmPrincipal);
         frmPrincipal.nomefuncionario:= dm.qryLoginfunNome.AsString;
         frmPrincipal.codigofuncionario:= dm.qryLoginfunCodigo.AsInteger;
         frmPrincipal.tempo:='00:03:00';
         if dm.qryLoginfunTipo.AsString = 'Comum' then
         begin
          frmPrincipal.Tag:=1;
         end;
         Application.MessageBox(Pchar('Olá ' + frmPrincipal.nomefuncionario),
         'Acessando o sistema', 64);
         DM.qryLogin.Close;
         DM.qryBloqueioLogin.Close;
         ModalResult:=mrOk;
        end;
      end;
    end;

end;


procedure TfrmLogin.btnSairClick(Sender: TObject);
begin

Application.Terminate;

end;

procedure TfrmLogin.edtSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=13 then
btnEntrar.Click;
end;

end.
