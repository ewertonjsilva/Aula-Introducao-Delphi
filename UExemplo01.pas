unit UExemplo01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExemplo01 = class(TForm)
    lblMensagem: TLabel;
    edtMensagem: TEdit;
    btnMensagem: TButton;
    procedure btnMensagemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExemplo01: TfrmExemplo01;

implementation

{$R *.dfm}

procedure TfrmExemplo01.btnMensagemClick(Sender: TObject);
begin
  lblMensagem.Caption := edtMensagem.Text;
  edtMensagem.Text := '';
  edtMensagem.SetFocus;
end;

end.
