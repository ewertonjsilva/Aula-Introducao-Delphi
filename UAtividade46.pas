unit UAtividade46;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade46 = class(TForm)
    lblMensagem: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade46: TfrmAtividade46;

implementation

{$R *.dfm}

procedure TfrmAtividade46.FormShow(Sender: TObject);
var
  contarErro : Integer;
  vDigitado, senha : String;
begin
  senha := '1475369';
  contarErro := -1;

  repeat
    inc(contarErro);

    vDigitado := InputBox('Acesso ao sistema',
    'Digite a senha correta' + #13 + 'para acessar o sistema','');

  until (senha = vDigitado);

  lblMensagem.Caption := 'Você errou a senha ' + IntToStr(contarErro) + ' vezes';

end;

end.
