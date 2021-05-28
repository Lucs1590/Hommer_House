unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Buttons,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnPopup, Data.DB, Vcl.ImgList, ShellApi,
  Vcl.StdActns, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
  TfrmPrincipal = class(TForm)
    actListaAcoes: TActionList;
    actCadCliente: TAction;
    actCadFuncionario: TAction;
    actCadImovel: TAction;
    actCadAgendamento: TAction;
    actCadServTerceirizado: TAction;
    actConCliente: TAction;
    actConFuncionario: TAction;
    actConImovel: TAction;
    actConAgendamento: TAction;
    actConServTerceirizado: TAction;
    actSair: TAction;
    actDesconectar: TAction;
    pnlInfo: TPanel;
    lblBemVindo: TLabel;
    lblData: TLabel;
    Timer: TTimer;
    lblHora: TLabel;
    DSFun: TDataSource;
    actMensagem: TAction;
    imgLista: TImageList;
    actConVenda: TAction;
    actCadVenda: TAction;
    actCadLocacao: TAction;
    actConLocacao: TAction;
    btnMensagem: TSpeedButton;
    PopupMenu: TPopupMenu;
    popConfig: TMenuItem;
    imgLogo: TImage;
    popDesbloquear: TMenuItem;
    tmr_tela_login: TTimer;
    imgServTerceirizados: TImage;
    imgLocacao: TImage;
    imgVenda: TImage;
    imoConsClientes: TImage;
    imoClientes: TImage;
    imgConsImo: TImage;
    imgImovel: TImage;
    imgConsServTerceirizados: TImage;
    imgFundo: TImage;
    mnuPrincipal: TMainMenu;
    mnuCadastrar_Editar: TMenuItem;
    cadCliente: TMenuItem;
    cadFuncionario: TMenuItem;
    cadImovel: TMenuItem;
    cadAgendamento: TMenuItem;
    cadServTerceirizado: TMenuItem;
    cadVenda: TMenuItem;
    cadLocacao: TMenuItem;
    mnuConsultar: TMenuItem;
    conCliente: TMenuItem;
    conFuncionario: TMenuItem;
    conImovel: TMenuItem;
    conAgendamento: TMenuItem;
    conServTerceirizado: TMenuItem;
    ConVenda: TMenuItem;
    ConLocacao: TMenuItem;
    mnuDesconectar: TMenuItem;
    mnuSair: TMenuItem;
    procedure mnuSairClick(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure lblTesteCadAgendamentoClick(Sender: TObject);
    procedure actCadClienteExecute(Sender: TObject);
    procedure actCadFuncionarioExecute(Sender: TObject);
    procedure actCadImovelExecute(Sender: TObject);
    procedure actCadAgendamentoExecute(Sender: TObject);
    procedure actCadServTerceirizadoExecute(Sender: TObject);
    procedure actConClienteExecute(Sender: TObject);
    procedure actConFuncionarioExecute(Sender: TObject);
    procedure actConImovelExecute(Sender: TObject);
    procedure actConAgendamentoExecute(Sender: TObject);
    procedure actConServTerceirizadoExecute(Sender: TObject);
    procedure actVenCasaExecute(Sender: TObject);
    procedure actVenLoteExecute(Sender: TObject);
    procedure actVenApartamentoExecute(Sender: TObject);
    procedure actLocCasaExecute(Sender: TObject);
    procedure actLocLoteExecute(Sender: TObject);
    procedure actLocApartamentoExecute(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure btnMensagemClick(Sender: TObject);
    procedure actMensagemExecute(Sender: TObject);
    procedure actCadVendaExecute(Sender: TObject);
    procedure actConVendaExecute(Sender: TObject);
    procedure actCadLocacaoExecute(Sender: TObject);
    procedure actConLocacaoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actDesconectarExecute(Sender: TObject);
    procedure popConfigClick(Sender: TObject);
    procedure popDesbloquearClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tmr_tela_loginTimer(Sender: TObject);
    procedure imgConsImoClick(Sender: TObject);
    procedure imoConsClientesClick(Sender: TObject);
    procedure imgImovelClick(Sender: TObject);
    procedure imgConsServTerceirizadosClick(Sender: TObject);
    procedure imgServTerceirizadosClick(Sender: TObject);
    procedure imgLocacaoClick(Sender: TObject);
    procedure imgVendaClick(Sender: TObject);
    procedure imoClientesClick(Sender: TObject);

  private
    { Private declarations }
    procedure controla_mouse_teclado (var Msg: TMsg; var Handled: Boolean);
    var Ftmr_ultima_digitacao,  Ftmr_agora : TTime;

  public
    { Public declarations }
    nomefuncionario:String;
    login, codigofuncionario:Integer;
    tempo, tipofuncionario:String;
    editar:integer;
    edt, new, busc, cadVenImo, CadLocImo, CadAgenImo :Boolean;


  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UDM, UCadAgendamento, UCadCliente, UCadFuncionario, UCadImovel,
  UCadServTerceirizado, UConAgendamento, UConCliente, UConFuncionario,
  UConImovel, UConServTerceirizado, ULocApartamento, ULocCasa, ULocLote, ULogin,
  UMensagem, UVenApartamento, UVenCasa, UVenLote, UConLocacao, UConVenda,
  UConfig, UDesbloqueio, UCadComplemento;

procedure TfrmPrincipal.actCadAgendamentoExecute(Sender: TObject);
begin
    frmCadAgendamento:= TfrmCadAgendamento.Create(Self);

try
    frmCadAgendamento.ShowModal;
finally
    frmCadAgendamento.Release;
    frmCadAgendamento:= Nil;
end;
end;

procedure TfrmPrincipal.actCadClienteExecute(Sender: TObject);
begin
    frmCadCliente := TfrmCadCliente.Create(Self);

    try
      frmCadCliente.ShowModal;
    finally
       frmCadCliente.Release;
       frmCadCliente:= Nil;
    end;
end;

procedure TfrmPrincipal.actCadFuncionarioExecute(Sender: TObject);
begin
 frmCadFuncionario:= TfrmCadFuncionario.Create(Self);
 try
  frmCadFuncionario.ShowModal;
 finally
   frmCadFuncionario.Release;
   frmCadFuncionario:= Nil;
 end;

 end;

procedure TfrmPrincipal.actCadImovelExecute(Sender: TObject);
begin
frmCadImovel:= TfrmCadImovel.Create(Self);
    frmCadImovel.dsCadImovel.DataSet:=DM.qryImoveis;
    dm.qryImoFotos.DataSource:=frmCadImovel.dsCadImovel;
    dm.qryPrecos.DataSource:=frmCadImovel.dsCadImovel;
    dm.qryConsTipoImoveis.DataSource:=frmCadImovel.dsCadImovel;
    dm.qryConsComplemento.DataSource:=frmCadImovel.dsCadImovel;
    dm.qryCompImoveis.DataSource:=frmCadImovel.dsComplementos;
try
  frmCadImovel.ShowModal;
finally
  frmCadImovel.Release;
  frmCadImovel:= Nil;
end;
end;

procedure TfrmPrincipal.actCadLocacaoExecute(Sender: TObject);
begin
frmLocCasa:=TfrmLocCasa.Create(Self);

    try
      frmLocCasa.ShowModal;

    finally
      frmLocCasa.Release;
      frmLocCasa:= Nil;
    end;
end;

procedure TfrmPrincipal.actCadServTerceirizadoExecute(Sender: TObject);
begin
    frmCadServTerceirizado:=TfrmCadServTerceirizado.Create(Self);

    try
      frmCadServTerceirizado.ShowModal;
    finally
      frmCadServTerceirizado.Release;
      frmCadServTerceirizado:= Nil;
    end;
end;

procedure TfrmPrincipal.actCadVendaExecute(Sender: TObject);
begin
  frmVenApartamento:= TfrmVenApartamento.Create(Self);

    try
      frmVenApartamento.ShowModal;

    finally
      frmVenApartamento.Release;
      frmVenApartamento:= Nil;
end;
end;

procedure TfrmPrincipal.actConAgendamentoExecute(Sender: TObject);
begin
frmConAgendamento:= TfrmConAgendamento.Create(Self);

    try
      frmConAgendamento.ShowModal;

    finally
      frmConAgendamento.Release;
      frmConAgendamento:= Nil;
    end;
end;

procedure TfrmPrincipal.actConClienteExecute(Sender: TObject);
begin
    frmConCliente:= TfrmConCliente.Create(Self);

    try
      frmConCliente.ShowModal;

    finally
      frmConCliente.Release;
      frmConCliente:= Nil;
    end;
end;

procedure TfrmPrincipal.actConFuncionarioExecute(Sender: TObject);
begin
frmConFuncionario:= TfrmConFuncionario.Create(Self);

    try
      frmConFuncionario.ShowModal;

    finally
      frmConFuncionario.Release;
      frmConFuncionario:= Nil;
    end;
end;

procedure TfrmPrincipal.actConImovelExecute(Sender: TObject);
begin
frmConImovel:= TfrmConImovel.Create(Self);

    try
      frmConImovel.ShowModal;

    finally
      frmConImovel.Release;
      frmConImovel:= Nil;
    end;
end;

procedure TfrmPrincipal.actConLocacaoExecute(Sender: TObject);
begin
frmConLocacao:=TfrmConLocacao.Create(Self);

    try
      frmConLocacao.ShowModal;

    finally
      frmConLocacao.Release;
      frmConLocacao:= Nil;
    end;
end;

procedure TfrmPrincipal.actConServTerceirizadoExecute(Sender: TObject);
begin
frmConServTerceirizado:=TfrmConServTerceirizado.Create(Self);

    try
      frmConServTerceirizado.ShowModal;

    finally
       frmConServTerceirizado.Release;
       frmConServTerceirizado:= Nil;
    end;
end;

procedure TfrmPrincipal.actConVendaExecute(Sender: TObject);
begin
frmConVenda:=TfrmConVenda.Create(Self);

    try
      frmConVenda.ShowModal;

    finally
      frmConVenda.Release;
      frmConVenda:= Nil;
    end;
end;

procedure TfrmPrincipal.actDesconectarExecute(Sender: TObject);
begin
    ShellExecute(Handle,'open',PChar(Application.ExeName), nil, nil, SW_SHOWNORMAL);
    Application.Terminate;
end;

procedure TfrmPrincipal.actLocApartamentoExecute(Sender: TObject);
begin
frmLocApartamento:= TfrmLocApartamento.Create(Self);

    try
      frmLocApartamento.ShowModal;

    finally
      frmLocApartamento.Release;
      frmLocApartamento:= Nil;
    end;
end;

procedure TfrmPrincipal.actLocCasaExecute(Sender: TObject);
begin
frmLocCasa:= TfrmLocCasa.Create(Self);

    try
      frmLocCasa.ShowModal;

    finally
      frmLocCasa.Release;
      frmLocCasa:= Nil;
    end;
end;

procedure TfrmPrincipal.actLocLoteExecute(Sender: TObject);
begin
frmLocLote:= TfrmLocLote.Create(Self);

    try
      frmLocLote.ShowModal;

    finally
      frmLocLote.Release;
      frmLocLote:= Nil;
    end;
end;

procedure TfrmPrincipal.actMensagemExecute(Sender: TObject);
begin
frmMensagem:= TfrmMensagem.Create(Self);

    try
      frmMensagem.ShowModal;

    finally
      frmMensagem.Release;
      frmMensagem:= Nil;
    end;
end;

procedure TfrmPrincipal.actSairExecute(Sender: TObject);
begin
   Close;
end;

procedure TfrmPrincipal.actVenApartamentoExecute(Sender: TObject);
begin
frmVenApartamento:= TfrmVenApartamento.Create(Self);

    try
      frmVenApartamento.ShowModal;

    finally
      frmVenApartamento.Release;
      frmVenApartamento:= Nil;
    end;
end;

procedure TfrmPrincipal.actVenCasaExecute(Sender: TObject);
begin
frmVenCasa:= TfrmVenCasa.Create(Self);

    try
      frmVenCasa.ShowModal;


    finally
      frmVenCasa.Release;
      frmVenCasa:=Nil;
    end;
end;

procedure TfrmPrincipal.actVenLoteExecute(Sender: TObject);
begin
frmVenLote:= TfrmVenLote.Create(Self);

    try
      frmVenLote.ShowModal;

    finally
      frmVenLote.Release;
      frmVenLote:= Nil;
    end;
end;

procedure TfrmPrincipal.btnMensagemClick(Sender: TObject);
begin
frmMensagem.ShowModal;
end;

procedure TfrmPrincipal.controla_mouse_teclado(var Msg: TMsg;
  var Handled: Boolean);
begin
  //Função que testa se alguma tecla foi digitada
  // ou se o mouse foi movimentado ou pressionado
  If (Msg.message = WM_KEYDOWN) or
    (Msg.message = VK_LBUTTON) or
    (Msg.message = VK_RBUTTON) or
    (Msg.message = VK_MBUTTON) or
    (Msg.message = WM_MOUSEMOVE) then
  begin
    Ftmr_ultima_digitacao := Time;
 end;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if MessageBox(Application.Handle, 'Você deseja sair do sistema?','Sair',
MB_ICONQUESTION + MB_YESNO) = IDYES then
begin
Action := caFree;
end
else
Action := caNone;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
SetWindowLong(frmPrincipal.Handle, GWL_ExStyle, GetWindowLong(frmPrincipal.Handle, GWL_ExStyle) or
  WS_EX_AppWindow);
  Application.OnMessage := controla_mouse_teclado;
  Ftmr_ultima_digitacao := Time;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
lblBemVindo.Caption:='Bem Vindo, '+nomefuncionario+'!';
actListaAcoes.State:=asNormal;
      if frmPrincipal.Tag=1 then
      begin
        actCadFuncionario.Enabled:=false;
        popDesbloquear.Enabled:=false;
      end;
end;

procedure TfrmPrincipal.imgConsImoClick(Sender: TObject);
begin
    actConImovel.Execute;
end;

procedure TfrmPrincipal.imgConsServTerceirizadosClick(Sender: TObject);
begin
    actConServTerceirizado.Execute;
end;

procedure TfrmPrincipal.imgImovelClick(Sender: TObject);
begin
    actCadImovel.Execute;
end;

procedure TfrmPrincipal.imgLocacaoClick(Sender: TObject);
begin
   actCadLocacao.Execute;
end;

procedure TfrmPrincipal.imgServTerceirizadosClick(Sender: TObject);
begin
    actCadServTerceirizado.Execute;
end;

procedure TfrmPrincipal.imgVendaClick(Sender: TObject);
begin
    actCadVenda.Execute;
end;

procedure TfrmPrincipal.imoClientesClick(Sender: TObject);
begin
    actCadCliente.Execute;
end;

procedure TfrmPrincipal.imoConsClientesClick(Sender: TObject);
begin
    actConCliente.Execute;
end;

procedure TfrmPrincipal.lblTesteCadAgendamentoClick(Sender: TObject);
begin
frmCadAgendamento.ShowModal;
end;

procedure TfrmPrincipal.mnuSairClick(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TfrmPrincipal.popConfigClick(Sender: TObject);
begin
frmConfiguracao := TfrmConfiguracao.Create(Self);

    try
      frmConfiguracao.ShowModal;
    finally
       frmConfiguracao.Release;
       frmConfiguracao:= Nil;
    end;
end;

procedure TfrmPrincipal.popDesbloquearClick(Sender: TObject);
begin
frmDesbloquear := TfrmDesbloquear.Create(Self);

    try
      frmDesbloquear.ShowModal;
    finally
       frmDesbloquear.Release;
       frmDesbloquear:= Nil;
    end;

end;

procedure TfrmPrincipal.tmr_tela_loginTimer(Sender: TObject);
begin
 Ftmr_agora := time;
  if (Ftmr_agora - Ftmr_ultima_digitacao) >= strtotime(tempo) then
  begin
    try
      tmr_tela_login.Enabled := false;//Para o Ttimer
      frmlogin := Tfrmlogin.Create(Self);
      try
        ShellExecute(Handle,'open',PChar(Application.ExeName), nil, nil, SW_SHOWNORMAL);
        Application.Terminate;
      finally
         frmlogin.Release;
         frmLogin:= Nil;
         tmr_tela_login.Enabled := true;
      end;
    except
      exit;
    end;
  end;
end;

procedure TfrmPrincipal.TimerTimer(Sender: TObject);
var
Dia: Integer;
DiaDaSemana: string;
begin
Dia := (DayOfWeek(Date));
case Dia of
1: DiaDaSemana := 'Domingo';
2: DiaDaSemana := 'Segunda-Feira';
3: DiaDaSemana := 'Terça-Feira';
4: DiaDaSemana := 'Quarta-Feira';
5: DiaDaSemana := 'Quinta-Feira';
6: DiaDaSemana := 'Sexta-Feira';
7: DiaDaSemana := 'Sábado';
end;
lblData.Caption:=DiaDaSemana+' - '+DateToStr(Date);
lblHora.Caption:=' '+TimeToStr(Now);
end;

end.
