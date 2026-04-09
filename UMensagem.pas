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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMensagem: TfrmMensagem;

implementation

{$R *.dfm}

procedure TfrmMensagem.btnMessageBoxClick(Sender: TObject);
var btnClicado : Integer;
begin
  btnClicado := MessageBox(Application.Handle, 'Escolha uma opção', 'Atividade ShowMessage', MB_ICONQUESTION + MB_YESNOCANCEL);

  if btnClicado = IDYES then
  begin
    MessageBox(Application.Handle, 'xx', 'titulo', MB_ICONINFORMATION);
  end;


end;

end.
