unit UConImovel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, frxClass, frxDBSet,
  Vcl.DBCtrls;

type
  TfrmConImovel = class(TForm)
    pnlPrimeiro: TPanel;
    pnlSegundo: TPanel;
    pnlTerceiro: TPanel;
    pnlQuarto: TPanel;
    dbgConImovel: TDBGrid;
    rbtCidade: TRadioButton;
    rbtBairro: TRadioButton;
    rbtEndereco: TRadioButton;
    rbtAmbos: TRadioButton;
    rbtNaoOcupado: TRadioButton;
    rbtOcupado: TRadioButton;
    rbtAZ: TRadioButton;
    rbtZA: TRadioButton;
    edtConImovel: TEdit;
    DateTimePickerConImovel: TDateTimePicker;
    rbtAreaTotal: TRadioButton;
    rbtData: TRadioButton;
    DSconImovel: TDataSource;
    rbtNome: TRadioButton;
    Panel1: TPanel;
    frxDBDatasetConImo: TfrxDBDataset;
    frxReport: TfrxReport;
    Shape1: TShape;
    Shape2: TShape;
    spSelecionar: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    lblLimpar: TLabel;
    lblPesquisar: TLabel;
    lblRelatorio: TLabel;
    lblSelecionar: TLabel;
    btnLimpar: TImage;
    btnPesquisar: TImage;
    btnRelatorio: TImage;
    btnSelecionar: TImage;
    Label1: TLabel;
    Shape3: TShape;
    rbtnDesc: TRadioButton;
    rbtnCres: TRadioButton;
    procedure rbtEnderecoClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbtAmbosClick(Sender: TObject);
    procedure rbtNaoOcupadoClick(Sender: TObject);
    procedure rbtOcupadoClick(Sender: TObject);
    procedure rbtAZClick(Sender: TObject);
    procedure rbtZAClick(Sender: TObject);
    procedure rbtDataClick(Sender: TObject);
    procedure rbtNomeClick(Sender: TObject);
    procedure rbtBairroClick(Sender: TObject);
    procedure rbtCidadeClick(Sender: TObject);
    procedure rbtAreaTotalClick(Sender: TObject);
    procedure btnSelecionarClick(Sender: TObject);
    procedure dbgConImovelDblClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgConImovelCellClick(Column: TColumn);
    procedure rbtnCresClick(Sender: TObject);
    procedure rbtnDescClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
        primeiro, segundo, terceiro:string;

        const
        selectSQL = 'select  imoNome, imoCEP, imoCodigo, imoEndereco, imoBairro, imoNumero, '
        +'imoComplemento,imoCidade, imoEstado, imoAreaTotal, imoAreaPrivativa, '
        +'imoQuadra, imoLote, imoOcupacao, imoEstadoDoImovel, imoValorIPTU, '
        +'imoObservacao, imoDataRegistro, imoNegociacao, imoOrientacao, tpImoCodigo '
        +'from IMOVEIS Where ';
  end;

var
  frmConImovel: TfrmConImovel;

implementation

{$R *.dfm}

uses UDM, UCadAgendamento, UCadImovel, UPrincipal, UVenApartamento, ULocCasa;

procedure TfrmConImovel.btnLimparClick(Sender: TObject);
begin
edtConImovel.Clear;
end;

procedure TfrmConImovel.btnPesquisarClick(Sender: TObject);
begin
DM.qryConsImoveis.Close;
DM.qryConsImoveis.SQL.Clear;
DM.qryConsImoveis.SQL.Add(selectSql + primeiro + segundo + terceiro);

if (rbtNome.Checked = True) then
begin
  DM.qryConsImoveis.Parameters.ParamByName('pPesquisar').Value := '%'+edtConImovel.Text+'%';
end;

if (rbtEndereco.Checked=True) then
begin
  DM.qryConsImoveis.Parameters.ParamByName('pPesquisar').Value := '%'+edtConImovel.Text+'%';
end;

if (rbtBairro.Checked = True) then
begin
  DM.qryConsImoveis.Parameters.ParamByName('pPesquisar').Value := '%'+edtConImovel.Text+'%';
end;

if (rbtCidade.Checked = True) then
begin
  DM.qryConsImoveis.Parameters.ParamByName('pPesquisar').Value := '%'+edtConImovel.Text+'%';
end;

if rbtAreaTotal.Checked=true then
begin
  if edtConImovel.Text<>'' then
  begin
    DM.qryConsImoveis.Parameters.ParamByName('pPesquisar').Value := StrToFloat(edtConImovel.Text);
  end
  else
  begin
    ShowMessage('Insira um valor da área!');
  end;

end;

if (rbtData.Checked = True) then
begin
  DM.qryConsImoveis.Parameters.ParamByName('pPesquisar').Value := DateToStr(DateTimePickerConImovel.Date);
end;

DM.qryConsImoveis.open;
end;

procedure TfrmConImovel.btnRelatorioClick(Sender: TObject);
begin
frxReport.ShowReport();
end;

procedure TfrmConImovel.btnSelecionarClick(Sender: TObject);
begin
   if btnSelecionar.Tag=2 then  // tag 2 é CadAgendamento
   begin
      if MessageBox(Application.Handle,'Deseja selecionar essa casa?',
      'Selecionar', 36)= idYes  then
      begin
        DM.qryAgendamentosimoCodigo.Value:=Dm.qryConsImoveisimoCodigo.Value;
        Close;
      end;
   end;
   if btnSelecionar.Tag=1 then    // tag 1 é do vendas
   begin
     if MessageBox(Application.Handle,'Deseja selecionar essa casa?',
      'Selecionar', 36)= idYes  then
      begin
        dm.qryVendasimoCodigo.Value:= dm.qryConsImoveisimoCodigo.Value;
        frmCadImovel:= TfrmCadImovel.Create(Self);
       frmCadImovel.dsCadImovel.DataSet:=DM.qryConsImoveis;
       dm.qryPrecos.Open;
       while not dm.qryPrecos.Eof do
       begin
        if dm.qryPrecospreTpContrato.Value='Venda' then
        begin
          dm.qryVendasvenPreco.Value:=dm.qryPrecospreValor.Value;
        end;
        dm.qryPrecos.Next;
       end;
       dm.qryPrecos.Close;
        Close;
      end;
   end;
   if btnSelecionar.Tag=3 then  // tag 3 é do locação
   begin
     if MessageBox(Application.Handle,'Deseja selecionar esse imóvel?',
     'Selecionar',36) = idYes then
     begin
       dm.qryLocacaoimoCodigo.Value:=dm.qryConsImoveisimoCodigo.Value;
       frmCadImovel:= TfrmCadImovel.Create(Self);
       frmCadImovel.dsCadImovel.DataSet:=DM.qryConsImoveis;
       dm.qryPrecos.Open;
       while not dm.qryPrecos.Eof do
       begin
        if dm.qryPrecospreTpContrato.Value='Locação' then
        begin
          dm.qryLocacaolocPreco.Value:=dm.qryPrecospreValor.Value;
        end;
        dm.qryPrecos.Next;
       end;
       dm.qryPrecos.Close;
       close;
     end;

   end;



{
if frmPrincipal.CadAgenImo=True then
begin
   dm.qryAgendamentosimoCodigo.Value:=dm.qryConsImoveisimoCodigo.AsInteger;;
   frmCadAgendamento.lblrecebeCodImovel.Caption:=dm.qryConsImoveisimoEndereco.AsString+', '+(dm.qryConsImoveisimoNumero.AsString);
   frmConImovel.Close;
end;

if frmPrincipal.cadVenImo=True then
begin
   dm.qryVendasimoCodigo.Value:=dm.qryConsImoveisimoCodigo.AsInteger;
   frmVenApartamento.lblrecebeCodImovel.Caption:=dm.qryConsImoveisimoEndereco.AsString+', '+(dm.qryConsImoveisimoNumero.AsString);
   frmConImovel.Close;
end;

if frmPrincipal.CadLocImo=True then
begin
   dm.qryLocacaoimoCodigo.Value:=dm.qryConsImoveisimoCodigo.AsInteger;
   frmLocCasa.lblrecebeCodImo.Caption:=dm.qryConsImoveisimoEndereco.AsString+', '+(dm.qryConsImoveisimoNumero.AsString);
   frmConImovel.Close;
end;
                             }

end;

procedure TfrmConImovel.dbgConImovelCellClick(Column: TColumn);
begin
   if btnSelecionar.Tag<>0 then
   begin
       if(dbgConImovel.SelectedRows.Count -1 = -1 ) then
       begin
         btnSelecionar.Enabled:=false;
         spSelecionar.Brush.Color:=clGray;
       end
       else
       begin
         btnSelecionar.Enabled:=true;
         spSelecionar.Brush.Color:=$00A424C9;
       end ;
   end;
end;

procedure TfrmConImovel.dbgConImovelDblClick(Sender: TObject);
begin

    frmCadImovel:= TfrmCadImovel.Create(Self);
    frmCadImovel.dsCadImovel.DataSet:=DM.qryConsImoveis;
    frmPrincipal.btnMensagem.Tag:=1;
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

procedure TfrmConImovel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM.qryConsImoveis.Close;
end;

procedure TfrmConImovel.FormShow(Sender: TObject);
begin
primeiro := ' imoNome like :pPesquisar';
segundo := ' ';
terceiro := ' ORDER BY imoNome ASC ';
end;

procedure TfrmConImovel.rbtAmbosClick(Sender: TObject);
begin
segundo:=' ';
end;


procedure TfrmConImovel.rbtAreaTotalClick(Sender: TObject);
begin
primeiro := ' imoAreaTotal like :pPesquisar ';
edtConImovel.Visible := true;
DateTimePickerConImovel.Visible := false;
end;

procedure TfrmConImovel.rbtNaoOcupadoClick(Sender: TObject);
begin
segundo := ' AND imoOcupacao = 0 ';
end;

procedure TfrmConImovel.rbtnCresClick(Sender: TObject);
begin
   terceiro:=' order by imoCodigo ASC ';
end;

procedure TfrmConImovel.rbtnDescClick(Sender: TObject);
begin

   terceiro:=' order by imoCodigo Desc ';
end;

procedure TfrmConImovel.rbtNomeClick(Sender: TObject);
begin
primeiro := 'ImoNome like :pPesquisar';
edtConImovel.Visible := true;
DateTimePickerConImovel.Visible := false;
end;

procedure TfrmConImovel.rbtAZClick(Sender: TObject);
begin
terceiro := 'ORDER BY imoNome ASC';
end;

procedure TfrmConImovel.rbtBairroClick(Sender: TObject);
begin
primeiro := ' imoBairro like :pPesquisar';
edtConImovel.Visible := true;
DateTimePickerConImovel.Visible := false;
end;

procedure TfrmConImovel.rbtCidadeClick(Sender: TObject);
begin
primeiro := ' imoCidade like :pPesquisar';
edtConImovel.Visible := true;
DateTimePickerConImovel.Visible := false;
end;

procedure TfrmConImovel.rbtDataClick(Sender: TObject);
begin
primeiro := ' imoDataRegistro like :pPesquisar ';
edtConImovel.Visible := false;
DateTimePickerConImovel.Visible := true;
DateTimePickerConImovel.Date := Date;
end;

procedure TfrmConImovel.rbtEnderecoClick(Sender: TObject);
begin
 primeiro := ' imoEndereco like :pPesquisar';
edtConImovel.Visible := true;
DateTimePickerConImovel.Visible := false;
end;

procedure TfrmConImovel.rbtOcupadoClick(Sender: TObject);
begin
segundo := ' AND imoOcupacao = 1 ';
end;

procedure TfrmConImovel.rbtZAClick(Sender: TObject);
begin
terceiro := ' ORDER BY imoNome DESC ';
end;

end.



