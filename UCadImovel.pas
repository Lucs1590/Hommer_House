unit UCadImovel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB,
  Vcl.Mask, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  Xml.xmldom, Xml.XMLIntf, IdBaseComponent, IdComponent, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, Xml.XMLDoc, WinInet,
  Vcl.ExtDlgs, JPEG, Vcl.Imaging.pngimage ;

type
  TfrmCadImovel = class(TForm)
    pgcImovel: TPageControl;
    tsDadosBasicos: TTabSheet;
    tsFotos: TTabSheet;
    dsCadImovel: TDataSource;
    dsFotos: TDataSource;
    tsPreco: TTabSheet;
    tsComplementos: TTabSheet;
    dsPreco: TDataSource;
    dsComplementos: TDataSource;
    dsTpImovel: TDataSource;
    XMLDocument1: TXMLDocument;
    SSLIO: TIdSSLIOHandlerSocketOpenSSL;
    opdImgImo: TOpenPictureDialog;
    Shape1: TShape;
    Shape2: TShape;
    btnAdicionarImo: TImage;
    btnAnt: TImage;
    btnCancelarImo: TImage;
    btnEditarImo: TImage;
    btnInternet: TBitBtn;
    btnPrim: TImage;
    btnProx: TImage;
    btnRemoverImo: TImage;
    btnSalvarImo: TImage;
    btnUlt: TImage;
    cbbEstado: TDBComboBox;
    cbbTpImovel: TDBLookupComboBox;
    checkBOcupacao: TDBCheckBox;
    dtpDtRegistro: TDateTimePicker;
    edtAreaPrivativa: TDBEdit;
    edtAreaTotal: TDBEdit;
    edtBairro: TDBEdit;
    edtCEP: TDBEdit;
    edtCidade: TDBEdit;
    edtComplemento: TDBEdit;
    edtDataRegistro: TDBEdit;
    edtEndereco: TDBEdit;
    edtEstadoImovel: TDBEdit;
    edtLote: TDBEdit;
    edtNegociacao: TDBEdit;
    edtNome: TDBEdit;
    edtNumero: TDBEdit;
    edtOrientacao: TDBEdit;
    edtQuadra: TDBEdit;
    edtValorIptu: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    lblEditar: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblAreaPrivativa: TLabel;
    lblAreaTotal: TLabel;
    lblBairro: TLabel;
    lblCEP: TLabel;
    lblCidade: TLabel;
    lblCodImovel: TLabel;
    lblComplemento: TLabel;
    lblDtRegistro: TLabel;
    lblEndereco: TLabel;
    lblEstado: TLabel;
    lblEstadoImovel: TLabel;
    lblLote: TLabel;
    lblNegociacao: TLabel;
    lblNumero: TLabel;
    lblObservacao: TLabel;
    lblOrientacao: TLabel;
    lblQuadra: TLabel;
    lblTipo: TLabel;
    lblValorIptu: TLabel;
    memoObservacao: TDBMemo;
    Salva: TLabel;
    spAdd: TShape;
    spAnt: TShape;
    spCan: TShape;
    spEdt: TShape;
    spPrim: TShape;
    spProx: TShape;
    spRem: TShape;
    spSal: TShape;
    txtCodigo: TDBText;
    spUlt: TShape;
    btnAdicionarPreco: TImage;
    btnCancelarPreco: TImage;
    btnEditarPreco: TImage;
    btnRemoverPreco: TImage;
    btnSalvarPreco: TImage;
    cbbTpContrato: TDBComboBox;
    dgrPreco: TDBGrid;
    edtValor: TDBEdit;
    lblAddPreco: TLabel;
    lblCanPreco: TLabel;
    lblCodImoPre: TLabel;
    lblEdtPreco: TLabel;
    lblPreco: TLabel;
    lblRemPreco: TLabel;
    lblSalvarFoto: TLabel;
    lblTpContrato: TLabel;
    spAddPreco: TShape;
    spCanPreco: TShape;
    spEdtPreco: TShape;
    spRemoverPreco: TShape;
    spSalvarPreco: TShape;
    txtCodigoPreco: TDBText;
    btnAdicionarFoto: TImage;
    btnAntFoto: TImage;
    btnCancelarFoto: TImage;
    btnCarregar: TBitBtn;
    btnEditarFotos: TImage;
    btnPrimFoto: TImage;
    btnProxFoto: TImage;
    btnRemoverFoto: TImage;
    btnSalvarFoto: TImage;
    btnUltFoto: TImage;
    edtCaminho: TDBEdit;
    edtDescricao: TDBEdit;
    imgFoto: TImage;
    lblAdd: TLabel;
    lblCaminho: TLabel;
    lblCancFoto: TLabel;
    lblDescricao: TLabel;
    lblEdtFoto: TLabel;
    lblfCodFoto: TLabel;
    lblRemoverFoto: TLabel;
    lblSalvFoto: TLabel;
    spAddFoto: TShape;
    spAntFoto: TShape;
    spCanFoto: TShape;
    spEdtFoto: TShape;
    spPrimFoto: TShape;
    spProxFoto: TShape;
    spRemoverFoto: TShape;
    spSalvarFoto: TShape;
    spUltFoto: TShape;
    txtCodigoFoto: TDBText;
    Shape3: TShape;
    grdComp: TDBGrid;
    Label1: TLabel;
    btnNovoComp: TImage;
    procedure FormShow(Sender: TObject);
    procedure dsCadImovelDataChange(Sender: TObject; Field: TField);
    procedure btnAdicionarImobtnAdicionarImoClick(Sender: TObject);
    procedure dtpDtRegistroChange(Sender: TObject);
    procedure dsCadImovelStateChange(Sender: TObject);
    procedure btnSalvarImobtnSalvarImoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnInternetClick(Sender: TObject);
    procedure edtCEPExit(Sender: TObject);
    procedure btnAdicionarFotoClick(Sender: TObject);
    procedure btnCancelarFotoClick(Sender: TObject);
    procedure btnSalvarFotoClick(Sender: TObject);
    procedure dsFotosDataChange(Sender: TObject; Field: TField);
    procedure btnCarregarClick(Sender: TObject);
    procedure dsFotosStateChange(Sender: TObject);
    procedure btnEditarFotosClick(Sender: TObject);
    procedure btnRemoverFotoClick(Sender: TObject);
    procedure btnAdicionarPrecoClick(Sender: TObject);
    procedure btnEditarPrecoClick(Sender: TObject);
    procedure btnCancelarPrecoClick(Sender: TObject);
    procedure btnSalvarPrecoClick(Sender: TObject);
    procedure dsPrecoStateChange(Sender: TObject);
    procedure btnRemoverPrecoClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure tsFotosShow(Sender: TObject);
    procedure btnEditarImoClick(Sender: TObject);
    procedure btnRemoverImoClick(Sender: TObject);
    procedure btnAdicionarImoClick(Sender: TObject);
    procedure btnCancelarImoClick(Sender: TObject);
    procedure btnSalvarImoClick(Sender: TObject);
    procedure btnPrimClick(Sender: TObject);
    procedure btnAntClick(Sender: TObject);
    procedure btnProxClick(Sender: TObject);
    procedure btnUltClick(Sender: TObject);
    procedure btnPrimFotoClick(Sender: TObject);
    procedure btnAntFotoClick(Sender: TObject);
    procedure btnProxFotoClick(Sender: TObject);
    procedure btnUltFotoClick(Sender: TObject);
    procedure btnNovoCompClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConsultaCep(Cep: String);
  end;

var
  frmCadImovel: TfrmCadImovel;

implementation

{$R *.dfm}

uses UDM, UCadCompImo;

procedure TfrmCadImovel.BitBtn6Click(Sender: TObject);
begin
    frmCompImo:=TfrmCompImo.Create(Self);
    try
      frmCompImo.ShowModal;
    finally
      frmCompImo.Release;
      frmCompImo:= Nil;
    end;
end;

procedure TfrmCadImovel.btnAdicionarFotoClick(Sender: TObject);
begin
    dsFotos.DataSet.Insert;
    if opdImgImo.Execute then
    begin
      imgFoto.Picture.LoadFromFile(opdImgImo.FileName);
      dm.qryImoFotosfotoCaminho.Value := opdImgImo.FileName;
    end;

end;

procedure TfrmCadImovel.btnAdicionarImobtnAdicionarImoClick(Sender: TObject);
begin
   dsCadImovel.DataSet.Insert;
   dm.qryImoveisimoOcupacao.Value:=false;
end;

procedure TfrmCadImovel.btnAdicionarImoClick(Sender: TObject);
begin
   dsCadImovel.DataSet.Insert;
   dm.qryImoveisimoOcupacao.Value:=false;
end;

procedure TfrmCadImovel.btnAdicionarPrecoClick(Sender: TObject);
begin
    dsPreco.DataSet.Insert;
end;

procedure TfrmCadImovel.btnAntClick(Sender: TObject);
begin
dsCadImovel.DataSet.Prior;
end;

procedure TfrmCadImovel.btnAntFotoClick(Sender: TObject);
begin
    dsFotos.DataSet.Prior;
end;

procedure TfrmCadImovel.btnEditarFotosClick(Sender: TObject);
begin
    dsFotos.DataSet.Edit;
end;

procedure TfrmCadImovel.btnEditarImoClick(Sender: TObject);
begin
    dsCadImovel.DataSet.Edit;
end;

procedure TfrmCadImovel.btnEditarPrecoClick(Sender: TObject);
begin
    dsPreco.DataSet.Edit;
end;

procedure TfrmCadImovel.btnInternetClick(Sender: TObject);
var
Flags:Cardinal;
begin
  if not InternetGetConnectedState(@Flags, 0) then
    begin
    Showmessage('Sem conexão');
    btnInternet.Glyph.LoadFromFile('../Debug/imagem/semconexao.bmp');
    btninternet.Hint:='Clique para tentar se reconectar';
    end
  else
    begin
      showmessage('Conectado');
      btnInternet.Glyph.LoadFromFile('../Debug//imagem/comconexao.bmp');
      btnInternet.Hint:='Você esta Conectado';
    end;
end;


procedure TfrmCadImovel.btnNovoCompClick(Sender: TObject);
begin
      frmCompImo:= TfrmCompImo.Create(Self);

try
    frmCompImo.ShowModal;
finally
    frmCompImo.Release;
    frmCompImo:= Nil;
end;
end;

procedure TfrmCadImovel.btnPrimClick(Sender: TObject);
begin
dsCadImovel.DataSet.First;
end;

procedure TfrmCadImovel.btnPrimFotoClick(Sender: TObject);
begin
    dsFotos.DataSet.First;
end;

procedure TfrmCadImovel.btnProxClick(Sender: TObject);
begin
dsCadImovel.DataSet.Next;
end;

procedure TfrmCadImovel.btnProxFotoClick(Sender: TObject);
begin
         dsFotos.DataSet.Next;
end;

procedure TfrmCadImovel.btnRemoverFotoClick(Sender: TObject);
begin
    if MessageBox(Application.Handle,'Você deseja realmente excluir esta foto?',
    'Excluir',36) =idYes then
    begin
       dsFotos.DataSet.delete;
    end;
end;

procedure TfrmCadImovel.btnRemoverImoClick(Sender: TObject);
begin
if MessageBox(Application.Handle,'Você deseja realmente excluir este registro?',
    'Excluir',36) =idYes then
    begin
       dsCadImovel.DataSet.delete;
    end;
end;

procedure TfrmCadImovel.btnRemoverPrecoClick(Sender: TObject);
begin
    if MessageBox(Application.Handle,'Você deseja realmente excluir este valor?',
    'Excluir',36) =idYes then
    begin
       dsPreco.DataSet.delete;
    end;
end;

procedure TfrmCadImovel.btnSalvarFotoClick(Sender: TObject);
begin
    dsFotos.DataSet.Post;
end;

procedure TfrmCadImovel.btnSalvarImobtnSalvarImoClick(Sender: TObject);
var
confValida : boolean;
begin

    if ((edtEndereco.Text='')or(edtBairro.Text='')or
       (edtNumero.Text='')or(edtCidade.Text='')or(cbbEstado.ItemIndex=-1) or
        (edtValorIptu.Text='') )then
      begin

        if edtEndereco.Text='' then
        begin
          Application.MessageBox('Insira o endereço','ERRO',16);
          confValida:=False;
          edtEndereco.SetFocus;
        end;
        if edtBairro.Text='' then
        begin
          Application.MessageBox('Insira o bairro','ERRO',16);
          confValida:=False;
          edtBairro.SetFocus;
        end;
        if edtNumero.Text='' then
        begin
          Application.MessageBox('Insira o número do imóvel','ERRO',16);
          confValida:=False;
          edtNumero.SetFocus;
        end;
        if edtCidade.Text='' then
        begin
          Application.MessageBox('Insira a Cidade','ERRO',16);
          confValida:=False;
          edtCidade.SetFocus;
        end;
        if cbbEstado.Text='' then
        begin
          Application.MessageBox('Escolha o Estado','ERRO',16);
          confValida:=False;
          cbbEstado.SetFocus;
        end;
        if  edtValorIptu.Text='' then
        begin
          Application.MessageBox('Insira o valor do IPTU','ERRO',16);
          confValida:=False;
          cbbEstado.SetFocus;
        end;
      end;
    dsCadImovel.DataSet.Post;
end;

procedure TfrmCadImovel.btnSalvarImoClick(Sender: TObject);
var
confValida : boolean;
begin

    if ((edtEndereco.Text='')or(edtBairro.Text='')or
       (edtNumero.Text='')or(edtCidade.Text='')or(cbbEstado.ItemIndex=-1) or
        (edtValorIptu.Text='') )then
      begin

        if edtEndereco.Text='' then
        begin
          Application.MessageBox('Insira o endereço','ERRO',16);
          confValida:=False;
          edtEndereco.SetFocus;
        end;
        if edtBairro.Text='' then
        begin
          Application.MessageBox('Insira o bairro','ERRO',16);
          confValida:=False;
          edtBairro.SetFocus;
        end;
        if edtNumero.Text='' then
        begin
          Application.MessageBox('Insira o número do imóvel','ERRO',16);
          confValida:=False;
          edtNumero.SetFocus;
        end;
        if edtCidade.Text='' then
        begin
          Application.MessageBox('Insira a Cidade','ERRO',16);
          confValida:=False;
          edtCidade.SetFocus;
        end;
        if cbbEstado.Text='' then
        begin
          Application.MessageBox('Escolha o Estado','ERRO',16);
          confValida:=False;
          cbbEstado.SetFocus;
        end;
        if  edtValorIptu.Text='' then
        begin
          Application.MessageBox('Insira o valor do IPTU','ERRO',16);
          confValida:=False;
          cbbEstado.SetFocus;
        end;
      end;
    dsCadImovel.DataSet.Post;
end;

procedure TfrmCadImovel.btnSalvarPrecoClick(Sender: TObject);
begin
    if (edtValor.Text='') or (cbbTpContrato.ItemIndex=-1) then
    begin
      ShowMessage('Preencha todos os campos corretamente');
    end
    else
    begin
    dsPreco.DataSet.Post;
    end;
end;

procedure TfrmCadImovel.btnUltClick(Sender: TObject);
begin
dsCadImovel.DataSet.Last;
end;

procedure TfrmCadImovel.btnUltFotoClick(Sender: TObject);
begin
    dsFotos.DataSet.Last;
end;

procedure TfrmCadImovel.ConsultaCep(Cep: String);
var
 Flags : Cardinal;
 const
 _ver='true';
begin
  if not InternetGetConnectedState(@Flags, 0) then
    begin
    Showmessage('Sem conexão. Preencha todos os campos');
    end
  else
  begin
    edtCEP.Clear;
    edtEndereco.Clear;
    edtBairro.Clear;
    edtcidade.Clear;
    cbbEstado.ItemIndex:=-1;
    XMLDocument1.FileName := 'https://viacep.com.br/ws/'+Trim(Cep)+ '/xml/';
    XMLDocument1.Active := true;
      if XMLDocument1.DocumentElement.ChildValues[0] = _ver then
      begin
       showmessage('Cep inexistente ou não encontrado, tente outro ou preencha  '+
        'todos os campos!');
      end
      else
      begin
       dm.qryImoveis.FieldByName('imoBairro').AsString:=xmldocument1.DocumentElement.ChildNodes['bairro'].Text;
       dm.qryImoveis.FieldByName('imoEndereco').AsString:=XMLDocument1.DocumentElement.ChildNodes['logradouro'].Text;
       dm.qryImoveis.FieldByName('imoCidade').AsString:=XMLDocument1.DocumentElement.ChildNodes['localidade'].Text;
       dm.qryImoveis.FieldByName('imoEstado').AsString:=XMLDocument1.DocumentElement.ChildNodes['uf'].Text;
      end;
 end;
   edtcep.Text:=Cep;

end;
procedure TfrmCadImovel.btnCancelarFotoClick(Sender: TObject);
begin
    dsFotos.DataSet.Cancel;
end;

procedure TfrmCadImovel.btnCancelarImoClick(Sender: TObject);
begin
    dsCadImovel.DataSet.Cancel;
end;

procedure TfrmCadImovel.btnCancelarPrecoClick(Sender: TObject);
begin
    dsPreco.DataSet.Cancel;
end;

procedure TfrmCadImovel.btnCarregarClick(Sender: TObject);
begin
    if opdImgImo.Execute then
    begin
      imgFoto.Picture.LoadFromFile(opdImgImo.FileName);
      dm.qryImoFotosfotoCaminho.Value := opdImgImo.FileName;
    end;
end;

procedure TfrmCadImovel.dsCadImovelDataChange(Sender: TObject; Field: TField);
begin
      if dsCadImovel.State <> dsInsert then
      begin
        if edtDataRegistro.Text='' then
        begin
         dtpDtRegistro.Date:=Date;
        end
        else
        begin
         dtpDtRegistro.Date:= StrToDate(edtDataRegistro.Text);
        end;
      end;

     if dsCadImovel.State = dsBrowse then
     begin
       if (((Sender as TDataSource).DataSet.Bof)) then
       begin // no primeiro registro os botoes primeiro e anterior se desativam e mudam de cor
         btnAnt.Enabled:=false;
         btnPrim.Enabled:=false;
         btnProx.Enabled:=true;
         btnUlt.Enabled:=true;
         spPrim.Brush.Color:=clgray;
         spAnt.Brush.Color:=clgray;
         spProx.Brush.Color:=$00B02BBD;
         spUlt.Brush.Color:=$00B02BBD;
       end
       else if (((Sender as TDataSource).DataSet.Eof))then
       begin
         btnAnt.Enabled:=true;
         btnPrim.Enabled:=true;
         btnProx.Enabled:=false;
         btnUlt.Enabled:=false;
         spPrim.Brush.Color:=$00B02BBD;
         spAnt.Brush.Color:=$00B02BBD;
         spProx.Brush.Color:=clgray;
         spUlt.Brush.Color:=clgray;
         end
       else
       begin
         btnAnt.Enabled:=true;
         btnPrim.Enabled:=true;
         btnProx.Enabled:=true;
         btnUlt.Enabled:=true;
         spPrim.Brush.Color:=$00B02BBD;
         spAnt.Brush.Color:=$00B02BBD;
         spProx.Brush.Color:=$00B02BBD;
         spUlt.Brush.Color:=$00B02BBD;
       end;
     end
     else
     begin

     end;
end;

procedure TfrmCadImovel.dsCadImovelStateChange(Sender: TObject);
begin
     tsFotos.TabVisible:=dsCadImovel.State = dsBrowse;
     tsPreco.TabVisible:= dsCadImovel.State = dsBrowse;
     tsComplementos.TabVisible:= dsCadImovel.State = dsBrowse;
     btnPrim.Enabled:=dsCadImovel.State = dsBrowse;
     btnAnt.Enabled:=dsCadImovel.State = dsBrowse;
     btnProx.Enabled:=dsCadImovel.State = dsBrowse;
     btnUlt.Enabled:=dsCadImovel.State = dsBrowse;
     btnAdicionarImo.Enabled := dsCadImovel.State = dsBrowse;
     btnEditarImo.Enabled := dsCadImovel.State = dsBrowse;
     btnRemoverImo.Enabled := dsCadImovel.State = dsBrowse;
     btnCancelarImo.Enabled := dsCadImovel.State in [dsInsert, dsEdit];
     btnSalvarImo.Enabled := dsCadImovel.State in [dsInsert, dsEdit];
     dtpDtRegistro.Enabled:= dsCadImovel.State in [dsInsert, dsEdit];
     if dsCadImovel.State in [dsInsert, dsEdit] then   // modo inserção deixa o shape em cinza
     begin
      spAdd.Brush.Color:=clgray;
      spEdt.Brush.Color:=clgray;
      spRem.Brush.Color:=clgray;
      spCan.Brush.Color:=$00B02BBD;
      spSal.Brush.Color:=$00B02BBD;
      spPrim.Brush.Color:=clgray;
      spant.Brush.Color:=clgray;
      spProx.Brush.Color:=clgray;
      spult.Brush.Color:=clgray;

     end
     else
     begin
      spAdd.Brush.Color:=$00B02BBD;
      spEdt.Brush.Color:=$00B02BBD;
      spRem.Brush.Color:=$00B02BBD;
      spCan.Brush.Color:=clgray;
      spSal.Brush.Color:=clgray;
      spPrim.Brush.Color:=$00B02BBD;
      spant.Brush.Color:=$00B02BBD;
      spProx.Brush.Color:=$00B02BBD;
      spult.Brush.Color:=$00B02BBD;
     end;
end;

procedure TfrmCadImovel.dsFotosDataChange(Sender: TObject; Field: TField);
begin
   if pgcImovel.TabIndex=1 then
   begin
   if (dm.qryImoFotosfotoCaminho.Value<>'') then
   begin
      if not FileExists(dm.qryImoFotosfotoCaminho.Value) then
      begin
        imgFoto.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
       '\imagens\sem-foto.jpg');
        ShowMessage('Imagem não encontrada');
      end
      else
      begin
        imgFoto.Picture.LoadFromFile(dm.qryImoFotosfotoCaminho.Value);
      end;
   end
   else
   begin
     imgFoto.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
     '\imagens\sem-foto.jpg');
   end;
   end;



     if (dsFotos.DataSet.Bof)  then
     begin // no primeiro registro os botoes primeiro e anterior se desativam e mudam de cor
       btnAntFoto.Enabled:=false;
       btnPrimFoto.Enabled:=false;
       btnProxFoto.Enabled:=true;
       btnUltFoto.Enabled:=true;
       spPrimFoto.Brush.Color:=clgray;
       spAntFoto.Brush.Color:=clgray;
       spProxFoto.Brush.Color:=$00B02BBD;
       spUltFoto.Brush.Color:=$00B02BBD;
     end
     else if (dsFotos.DataSet.Eof) then
     begin
       btnAntFoto.Enabled:=true;
       btnPrimFoto.Enabled:=true;
       btnProxFoto.Enabled:=false;
       btnUltFoto.Enabled:=false;
       spPrimFoto.Brush.Color:=$00B02BBD;
       spAntFoto.Brush.Color:=$00B02BBD;
       spProxFoto.Brush.Color:=clgray;
       spUltFoto.Brush.Color:=clgray;
       end
     else
     begin
       btnAntFoto.Enabled:=true;
       btnPrimFoto.Enabled:=true;
       btnProxFoto.Enabled:=true;
       btnUltFoto.Enabled:=true;
       spPrimFoto.Brush.Color:=$00B02BBD;
       spAntFoto.Brush.Color:=$00B02BBD;
       spProxFoto.Brush.Color:=$00B02BBD;
       spUltFoto.Brush.Color:=$00B02BBD;
     end;
end;
procedure TfrmCadImovel.dsFotosStateChange(Sender: TObject);
begin
     btnAdicionarFoto.Enabled := dsFotos.State = dsBrowse;
     btnEditarFotos.Enabled := dsFotos.State = dsBrowse;
     btnRemoverFoto.Enabled := dsFotos.State = dsBrowse;
     btnCancelarfoto.Enabled := dsFotos.State in [dsInsert, dsEdit];
     btnSalvarfoto.Enabled := dsFotos.State in [dsInsert, dsEdit];
     btnCarregar.Enabled := dsFotos.State in [dsInsert, dsEdit];
     btnPrimFoto.Enabled:=dsFotos.State = dsBrowse;
     btnAntFoto.Enabled:=dsFotos.State = dsBrowse;
     btnProxFoto.Enabled:=dsFotos.State = dsBrowse;
     btnUltFoto.Enabled:=dsFotos.State = dsBrowse;
     if dsFotos.State in [dsInsert, dsEdit] then   // modo inserção deixa o shape em cinza
     begin
      spAddFoto.Brush.Color:=clgray;
      spEdtFoto.Brush.Color:=clgray;
      spRemoverFoto.Brush.Color:=clgray;
      spCanFoto.Brush.Color:=$00B02BBD;
      spSalvarFoto.Brush.Color:=$00B02BBD;
      spPrimFoto.Brush.Color:=clgray;
      spAntFoto.Brush.Color:=clgray;
      spProxFoto.Brush.Color:=clgray;
      spUltFoto.Brush.Color:=clgray;
     end
     else
     begin
      spAddFoto.Brush.Color:=$00B02BBD;
      spEdtFoto.Brush.Color:=$00B02BBD;
      spRemoverFoto.Brush.Color:=$00B02BBD;
      spCanFoto.Brush.Color:=clgray;
      spSalvarFoto.Brush.Color:=clgray;
      spPrimFoto.Brush.Color:=$00B02BBD;
      spAntFoto.Brush.Color:=$00B02BBD;
      spProxFoto.Brush.Color:=$00B02BBD;
      spUltFoto.Brush.Color:=$00B02BBD;
     end;
end;

procedure TfrmCadImovel.dsPrecoStateChange(Sender: TObject);
begin
     btnAdicionarPreco.Enabled := dsPreco.State = dsBrowse;
     btnEditarPreco.Enabled := dsPreco.State = dsBrowse;
     btnRemoverPreco.Enabled := dsPreco.State = dsBrowse;
     btnCancelarPreco.Enabled := dsPreco.State in [dsInsert, dsEdit];
     btnSalvarPreco.Enabled := dsPreco.State in [dsInsert, dsEdit];
     if dsPreco.State in [dsInsert, dsEdit] then   // modo inserção deixa o shape em cinza
     begin
      spAddPreco.Brush.Color:=clgray;
      spEdtPreco.Brush.Color:=clgray;
      spRemoverPreco.Brush.Color:=clgray;
      spCanPreco.Brush.Color:=$00B02BBD;
      spSalvarPreco.Brush.Color:=$00B02BBD;
     end
     else
     begin
      spAddPreco.Brush.Color:=$00B02BBD;
      spEdtPreco.Brush.Color:=$00B02BBD;
      spRemoverPreco.Brush.Color:=$00B02BBD;
      spCanPreco.Brush.Color:=clgray;
      spSalvarPreco.Brush.Color:=clgray;
     end;
end;

procedure TfrmCadImovel.dtpDtRegistroChange(Sender: TObject);
begin
   edtDataRegistro.Text:= datetostr(dtpDtRegistro.Date);
end;

procedure TfrmCadImovel.edtCEPExit(Sender: TObject);
begin
    ConsultaCep(edtCEP.Text);
end;


procedure TfrmCadImovel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
dm.qryImoveis.Close;
dm.qryConsTipoImoveis.Close;
dm.qryImoFotos.Close;
dm.qryPrecos.Close;
dm.qryConsComplemento.Close;
end;

procedure TfrmCadImovel.FormShow(Sender: TObject);
var
Flags:Cardinal;
begin
dm.qryImoveis.Open;
dm.qryConsTipoImoveis.Open;
dm.qryPrecos.Open;
dm.qryConsComplemento.Open;
  

  if not InternetGetConnectedState(@Flags, 0) then
    begin
    Showmessage('Sem conexão com internet; Preencha todos os Campos ou tente se reconectar.');
    btnInternet.Glyph.LoadFromFile('../Debug/imagem/semconexao.bmp');
    btninternet.Hint:='Clique para tentar se reconectar';
    end
  else
    begin
      btnInternet.Glyph.LoadFromFile('../Debug//imagem/comconexao.bmp');
      btnInternet.Hint:='Você esta Conectado';
    end;
end;

procedure TfrmCadImovel.tsFotosShow(Sender: TObject);
begin
   dm.qryImoFotos.Open;
end;

end.
