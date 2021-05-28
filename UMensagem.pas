unit UMensagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls,
  Data.Win.ADODB;

type
  TfrmMensagem = class(TForm)
    btnNovaMsg: TBitBtn;
    btnExcluirMsg: TBitBtn;
    pgcMensagem: TPageControl;
    tbsEntrada: TTabSheet;
    tbsSaida: TTabSheet;
    grdCaixadeEntrada: TDBGrid;
    tbsEnviarMsg: TTabSheet;
    DSMensagem: TDataSource;
    DSMenFun: TDataSource;
    DSDestinatarios: TDataSource;
    grdCaixadeSaida: TDBGrid;
    dsCaixadeSaida: TDataSource;
    dsConsfun: TDataSource;
    pnDest: TPanel;
    Label4: TLabel;
    lcbbDestinatario: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    listDest: TListBox;
    btnRemoverDest: TButton;
    pnCabecalho: TPanel;
    Label1: TLabel;
    edtTitulo: TDBEdit;
    Label3: TLabel;
    cbbPrioridade: TDBComboBox;
    pnConteudo: TPanel;
    Label2: TLabel;
    btnEnviar: TBitBtn;
    btnCancelar: TBitBtn;
    mmoConteudo: TDBMemo;
    DsDest: TDataSource;
    Label5: TLabel;
    dsCaixadeEntrada: TDataSource;
    tmrAtualizar: TTimer;
    BitBtn2: TBitBtn;
    Shape1: TShape;
    Shape2: TShape;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovaMsgClick(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnRemoverDestClick(Sender: TObject);
    procedure grdCaixadeEntradaDblClick(Sender: TObject);
    procedure grdCaixadeSaidaDblClick(Sender: TObject);
    procedure btnExcluirMsgClick(Sender: TObject);
    procedure grdCaixadeEntradaCellClick(Column: TColumn);
    procedure grdCaixadeEntradaColExit(Sender: TObject);
    procedure tbsEntradaShow(Sender: TObject);
    procedure tbsSaidaShow(Sender: TObject);
    procedure grdCaixadeSaidaCellClick(Column: TColumn);
    procedure grdCaixadeSaidaColExit(Sender: TObject);
    procedure tmrAtualizarTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    codigofuncionario: integer;
  end;

var
  frmMensagem: TfrmMensagem;

implementation

{$R *.dfm}

uses UDM, UPrincipal, UConMen;

procedure TfrmMensagem.BitBtn1Click(Sender: TObject);
var
funnome:string;
begin
    if lcbbDestinatario.Text<> '' then
    begin
        listDest.Items.Add(lcbbDestinatario.Text);
        btnEnviar.Enabled:=true;
    end
    else
    begin
      showmessage('Selecione um Destinatário');
    end;
end;

procedure TfrmMensagem.btnCancelarClick(Sender: TObject);
begin
        tbsEnviarMsg.TabVisible:=false;
        pgcMensagem.TabIndex:=0;
        tbsEntrada.TabVisible:=true;
        tbsSaida.TabVisible:=true;
        btnNovaMsg.Visible:=true;
        btnExcluirMsg.Visible:=true;
        pgcMensagem.Align:= alTop;
        pgcMensagem.Height:=465;
        DSMensagem.DataSet.Cancel;
        DSMenFun.DataSet.Cancel;
        listdest.Visible:=false;
end;

procedure TfrmMensagem.btnEnviarClick(Sender: TObject);
var
texto:string;
i, codMen : integer;
begin
       if (edtTitulo.Text = '') or (cbbPrioridade.ItemIndex = -1) or
       ((lcbbDestinatario.Text = '')and (listDest.Items.Text = '')) then
          begin
             Showmessage('Preencha Todos os Campos Corretamente');
          end
       else
       begin
           if (listdest.Items.Text <> '')  then
            begin
                dm.qryMensagens.fieldbyname('menDataEmissao').Value:= date;
                dm.qryMensagens.fieldbyname('funCodigo').AsInteger:= codigofuncionario;
                dm.qryMensagens.FieldByName('menExcluida').Value:=0;
                DSMensagem.DataSet.Post;
                for i:=0 to listdest.Items.Count-1 do
                  begin
                  dsmenfun.DataSet.Insert;
                   dm.qryMensagensFunc.fieldbyname('menCodigo').Value := dm.qryMensagensmenCodigo.Value;
                   texto:= listdest.Items.Strings[i];
                    dm.qryConsFun.close;
                    dm.qryConsFun.Parameters.ParamByName('pnome').Value:= texto;
                    dm.qryConsFun.Open;
                  dm.qryMensagensFunc.fieldbyname('funCodigo').Value := dm.qryConsFun.fieldbyname('funcodigo').AsInteger;
                  dm.qryMensagensFunc.FieldByName('menfunExcluida').Value:=0;
                  DSMenFun.DataSet.Post;
                  end;


                showmessage('Mensagem enviada com Sucesso!');
                listDest.Items.Clear;
                tbsEnviarMsg.TabVisible:=false;
                pgcMensagem.TabIndex:=0;
                tbsEntrada.TabVisible:=true;
                tbsSaida.TabVisible:=true;
                btnNovaMsg.Visible:=true;
                btnExcluirMsg.Visible:=true;
                pgcMensagem.Align:= alTop;
                pgcMensagem.Height:=470;
                btnenviar.Enabled:= false;
            end
            else
            begin
              ShowMessage('Confirme ou Selecione pelo menos um Destinatário');
            end;
       end;

end;


procedure TfrmMensagem.btnExcluirMsgClick(Sender: TObject);
begin
      if pgcMensagem.TabIndex=0 then
      begin
        dsCaixadeEntrada.DataSet.Edit;
        dm.qryConsMensagensmenfunExcluida.value:= true;
        dsCaixadeEntrada.DataSet.Post;
      end
      else
      begin
        dsCaixadeSaida.DataSet.Edit;
        dm.qryCaixadeSaidamenExcluida.value:= true;
        dsCaixadeSaida.DataSet.Post;
      end;

end;

procedure TfrmMensagem.btnNovaMsgClick(Sender: TObject);
begin
      tbsEnviarMsg.TabVisible:=true;
      pgcMensagem.TabIndex:=2;
      tbsEntrada.TabVisible:=false;
      tbsSaida.TabVisible:=false;
      btnNovaMsg.Visible:=false;
      btnExcluirMsg.Visible:=false;
      pgcMensagem.Align:= alClient;
      DSMensagem.DataSet.Insert;
      DSMenFun.DataSet.Insert;

end;

procedure TfrmMensagem.btnRemoverDestClick(Sender: TObject);
begin
   if listDest.ItemIndex= -1 then
   begin
     ShowMessage('Selecione algum destinatário para remover');
   end
   else
   begin
    listdest.DeleteSelected;
   end;

end;

procedure TfrmMensagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dm.qryConsMensagens.Close;
end;

procedure TfrmMensagem.FormShow(Sender: TObject);
begin
    codigofuncionario:= frmPrincipal.codigofuncionario;

    dm.qryConsMensagens.Close;
    dm.qryConsMensagens.Parameters.ParamByName('pDestinatario').Value:= codigofuncionario;
    dm.qryConsMensagens.Open;    //caixa de entrada
    dm.qryCaixadeSaida.Close;
    dm.qryCaixadesaida.Parameters.ParamByName('pRemetente').Value:= codigofuncionario;
    dm.qrycaixadesaida.Open;


    dm.qryConsFuncionarios.Open;
    dm.qryConsMensagens.Open;
    dm.qryMensagens.Open;
    DM.qryMensagensFunc.Open;

        tbsEnviarMsg.TabVisible:=false;
        pgcMensagem.TabIndex:=0;
        tbsEntrada.TabVisible:=true;
        tbsSaida.TabVisible:=true;
        btnNovaMsg.Visible:=true;
        btnExcluirMsg.Visible:=true;
        pgcMensagem.Align:= alTop;
        pgcMensagem.Height:=470;
        DSMensagem.DataSet.Cancel;
        DSMenFun.DataSet.Cancel;

end;

procedure TfrmMensagem.grdCaixadeEntradaCellClick(Column: TColumn);
begin
     if(grdCaixadeEntrada.SelectedRows.Count -1 = 0 ) then
     begin
       btnExcluirMsg.Enabled:=false;
     end
     else
     begin
       btnExcluirMsg.Enabled:=true;
     end;
end;

procedure TfrmMensagem.grdCaixadeEntradaColExit(Sender: TObject);
begin
      if(grdCaixadeEntrada.SelectedRows.Count -1 = 0 ) then
     begin
       btnExcluirMsg.Enabled:=false;
     end
     else
     begin
       btnExcluirMsg.Enabled:=true;
     end
end;

procedure TfrmMensagem.grdCaixadeEntradaDblClick(Sender: TObject);
var
dest: string;
begin
    frmContMens:= TfrmContMens.Create(Self);

    try
      frmContMens.lblContTitulo.caption:= grdCaixadeEntrada.Columns[5].Field.Value;
      frmContMens.lblContRemetente.Caption:= grdCaixadeEntrada.Columns[6].Field.Value;
          dm.qryDest.Close;
          dm.qryDest.Parameters.ParamByName('codMen').Value:= grdCaixadeEntrada.Columns[0].Field.Value;
          dm.qryDest.Open;
           while not DSDest.DataSet.Eof do
           begin
             if dest = '' then
             begin
               dest:=dm.qryDestfunNome.AsString;
             end
             else
             begin
             dest:= dest +'; '+dm.qryDestfunNome.AsString;
             end;
             DsDest.DataSet.Next;
           end;
      frmContMens.lblContDestinatario.Caption:= dest;
      frmContMens.lblContDestinatario.Height:= 112;
      frmContMens.lblContDestinatario.Width:= 355;
      frmContMens.mmoConteudo.Lines.Add(grdCaixadeEntrada.Columns[3].Field.Value);
      frmContMens.mmoConteudo.Height:=  193;
      frmContMens.mmoConteudo.Width:=  705;
      frmContMens.ShowModal;

    finally
      frmContMens.Release;
      frmContMens:= Nil;
    end;

end;
procedure TfrmMensagem.grdCaixadeSaidaCellClick(Column: TColumn);
begin
 if(grdCaixadeEntrada.SelectedRows.Count -1 = 0 ) then
     begin
       btnExcluirMsg.Enabled:=false;
     end
     else
     begin
       btnExcluirMsg.Enabled:=true;
     end
end;

procedure TfrmMensagem.grdCaixadeSaidaColExit(Sender: TObject);
begin
 if(grdCaixadeEntrada.SelectedRows.Count -1 = 0 ) then
     begin
       btnExcluirMsg.Enabled:=false;
     end
     else
     begin
       btnExcluirMsg.Enabled:=true;
     end
end;

procedure TfrmMensagem.grdCaixadeSaidaDblClick(Sender: TObject);
var
dest: string;
begin
    frmContMens:= TfrmContMens.Create(Self);

    try
      frmContMens.lblContTitulo.caption:= grdCaixadeSaida.Columns[4].Field.Value;
          dm.qryRemet.Close;
          dm.qryRemet.Parameters.ParamByName('codMen').Value:= grdCaixaDeSaida.Columns[0].Field.Value;
          dm.qryRemet.open;
      frmcontmens.lblContRemetente.Caption:= dm.qryRemetfunNome.Value;
          dm.qryDest.Close;
          dm.qryDest.Parameters.ParamByName('codMen').Value:= grdCaixadeSaida.Columns[0].Field.Value;
          dm.qryDest.Open;
           while not DSDest.DataSet.Eof do
           begin
             if dest = '' then
             begin
               dest:=dm.qryDestfunNome.AsString;
             end
             else
             begin
             dest:= dest +'; '+dm.qryDestfunNome.AsString;
             end;
             DsDest.DataSet.Next;
           end;
      frmContMens.lblContDestinatario.Caption:= dest;
      frmContMens.lblContDestinatario.Height:= 112;
      frmContMens.lblContDestinatario.Width:= 355;
      frmContMens.mmoConteudo.Lines.Add(grdCaixadeSaida.Columns[3].Field.Value);
      frmContMens.mmoConteudo.Height:=  193;
      frmContMens.mmoConteudo.Width:=  705;
      frmContMens.ShowModal;

    finally
      frmContMens.Release;
      frmContMens:= Nil;
    end;

end;

procedure TfrmMensagem.tbsEntradaShow(Sender: TObject);
begin
    btnExcluirMsg.Enabled:=false;
end;

procedure TfrmMensagem.tbsSaidaShow(Sender: TObject);
begin

    btnExcluirMsg.Enabled:=false;
end;

procedure TfrmMensagem.tmrAtualizarTimer(Sender: TObject);
begin
    dm.qryConsMensagens.Close;
    dm.qryCaixadeSaida.Close;
    dm.qryConsMensagens.Open;
    dm.qryCaixadeSaida.Open;
    grdCaixadeEntrada.Refresh;
    grdCaixadeSaida.Refresh;
end;

end.
