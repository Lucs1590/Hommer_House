program Imobiliaria;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  UDM in 'UDM.pas' {DM: TDataModule},
  UCadCliente in 'UCadCliente.pas' {frmCadCliente},
  UCadFuncionario in 'UCadFuncionario.pas' {frmCadFuncionario},
  UCadImovel in 'UCadImovel.pas' {frmCadImovel},
  UCadAgendamento in 'UCadAgendamento.pas' {frmCadAgendamento},
  UCadServTerceirizado in 'UCadServTerceirizado.pas' {frmCadServTerceirizado},
  UConCliente in 'UConCliente.pas' {frmConCliente},
  UConFuncionario in 'UConFuncionario.pas' {frmConFuncionario},
  UConImovel in 'UConImovel.pas' {frmConImovel},
  UConAgendamento in 'UConAgendamento.pas' {frmConAgendamento},
  UConServTerceirizado in 'UConServTerceirizado.pas' {frmConServTerceirizado},
  ULogin in 'ULogin.pas' {frmLogin},
  UMensagem in 'UMensagem.pas' {frmMensagem},
  UVenApartamento in 'UVenApartamento.pas' {frmVenApartamento},
  ULocCasa in 'ULocCasa.pas' {frmLocCasa},
  UConVenda in 'UConVenda.pas' {frmConVenda},
  UConLocacao in 'UConLocacao.pas' {frmConLocacao},
  UConMen in 'UConMen.pas' {frmContMens},
  UTelMail in 'UTelMail.pas' {frmTelEmail},
  UCadCompImo in 'UCadCompImo.pas' {frmCompImo},
  UCadComplemento in 'UCadComplemento.pas' {frmCadComp},
  UComplementos in 'UComplementos.pas' {frmComplementos},
  UDesbloqueio in 'UDesbloqueio.pas' {frmDesbloquear},
  Vcl.Themes,
  Vcl.Styles,
  UConsContatos in 'UConsContatos.pas' {frmContatos},
  UConfig in 'UConfig.pas' {frmConfiguracao};

{$R *.res}
var login : TfrmLogin;


begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmContatos, frmContatos);
  Application.CreateForm(TfrmConfiguracao, frmConfiguracao);
  login:= TfrmLogin.Create(Nil);
  if (login.ShowModal = 1) then
  begin
    login.Free;
    Application.Run;
  end
  else
  begin
    login.Free;
  end;
end.
