unit UAtividade01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade01 = class(TForm)
    btnTexto: TButton;
    edtTexto: TEdit;
    lblTexto: TLabel;
    procedure btnTextoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade01: TfrmAtividade01;

implementation

{$R *.dfm}

procedure TfrmAtividade01.btnTextoClick(Sender: TObject);
begin
  lblTexto.Caption := lblTexto.Caption + sLineBreak + edtTexto.Text;
  edtTexto.Text := '';
  edtTexto.SetFocus;
end;

end.
