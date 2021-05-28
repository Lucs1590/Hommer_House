unit UConMen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmContMens = class(TForm)
    lblContTitulo: TLabel;
    lblRemetente: TLabel;
    lblDestinatario: TLabel;
    lblContRemetente: TLabel;
    lblContDestinatario: TLabel;
    lblTitulo: TLabel;
    lblConteudo: TLabel;
    mmoConteudo: TMemo;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContMens: TfrmContMens;

implementation

{$R *.dfm}

end.
