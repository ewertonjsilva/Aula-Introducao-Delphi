unit UMensagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmMensagem = class(TForm)
    btnMessageBox: TBitBtn;
    btnInput: TBitBtn;
    procedure btnMessageBoxClick(Sender: TObject);
    procedure btnInputClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMensagem: TfrmMensagem;

implementation

{$R *.dfm}

procedure TfrmMensagem.btnInputClick(Sender: TObject);
var texto : String;
begin
  texto := InputBox('Atividade InputBox', 'Digite um texto', '');

  MessageBox(Application.Handle, pChar(texto), 'Resultado', MB_ICONINFORMATION);
end;

procedure TfrmMensagem.btnMessageBoxClick(Sender: TObject);
var btnClicado : Integer;
begin
  btnClicado := MessageBox(Application.Handle, 'Escolha uma opção', 'Atividade ShowMessage', MB_ICONQUESTION + MB_YESNOCANCEL);

  if btnClicado = IDYES then
  begin
    MessageBox(Application.Handle, 'Clicou em SIM', 'Resultado', MB_ICONINFORMATION);
  end;

  if btnClicado = IDNO then
  begin
    MessageBox(Application.Handle, 'Clicou em NÃO', 'Resultado', MB_ICONINFORMATION);
  end;

  if btnClicado = IDCANCEL then
  begin
    MessageBox(Application.Handle, 'Clicou em CANCELAR', 'Resultado', MB_ICONINFORMATION);
  end;


end;

end.
