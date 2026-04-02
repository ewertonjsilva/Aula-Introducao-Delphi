unit UAtividadeSenha;

interface

uses
  Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.UITypes, Winapi.Windows;

type
  TfrmAtividadeSenha = class(TForm)
    edtUsuario: TEdit;
    edtSenha: TEdit;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    btnAcesso: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnAcessoClick(Sender: TObject);
    procedure edtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
  private
    usuario, senha: String;
  public
    { Public declarations }
  end;

var
  frmAtividadeSenha: TfrmAtividadeSenha;

implementation

{$R *.dfm}

procedure TfrmAtividadeSenha.btnAcessoClick(Sender: TObject);
var
  user, passwd: String;
begin
  user := edtUsuario.Text;
  passwd := edtSenha.Text;

  if (user = usuario) and (passwd = senha) then
  begin
    ShowMessage('Acesso permitido');
    Close;
  end
  else
  begin
    ShowMessage('Acesso Negado');
    edtUsuario.SetFocus;
  end;

  edtUsuario.Clear;
  edtSenha.Clear;

end;

procedure TfrmAtividadeSenha.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    btnAcesso.SetFocus;
  end;
end;

procedure TfrmAtividadeSenha.edtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
  begin
    edtSenha.SetFocus;
  end;
end;

procedure TfrmAtividadeSenha.FormShow(Sender: TObject);
begin
  usuario := 'user';
  senha := '123';
end;

end.
