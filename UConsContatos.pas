unit UConsContatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Data.DB, Vcl.ExtCtrls;

type
  TfrmContatos = class(TForm)
    Contatos: TPageControl;
    Telefones: TTabSheet;
    Emails: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    dsConsTelefones2: TDataSource;
    dsConsEmails2: TDataSource;
    panEmail: TPanel;
    panTel: TPanel;
    Shape1: TShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContatos: TfrmContatos;

implementation

{$R *.dfm}

uses UDM, UConFuncionario;

end.
