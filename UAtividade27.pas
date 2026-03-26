unit UAtividade27;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmAtividade27 = class(TForm)
    pnlSecao1: TPanel;
    pnlSecao2: TPanel;
    lblNome: TLabel;
    edtNome: TEdit;
    btnCalculaMedia: TBitBtn;
    pnlSecao2Label: TPanel;
    pnlSecao2Edit: TPanel;
    lblN1: TLabel;
    lblN2: TLabel;
    lblN3: TLabel;
    lblN4: TLabel;
    lblMedia: TLabel;
    pnlSecao2Edtn1: TPanel;
    edtN1: TEdit;
    pnlSecao2Edtn2: TPanel;
    edtN2: TEdit;
    pnlSecao2Edtn3: TPanel;
    edtN3: TEdit;
    pnlSecao2Edtn4: TPanel;
    edtN4: TEdit;
    pnlSecao2EdtTotal: TPanel;
    edtMedia: TEdit;
    pnlSecao3: TPanel;
    lblResultadoMedia: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnCalculaMediaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade27: TfrmAtividade27;

implementation

{$R *.dfm}

procedure TfrmAtividade27.btnCalculaMediaClick(Sender: TObject);
var
  n1, n2, n3, n4, soma, media: Double;
  nome, mensagem : String;
begin

  nome := edtNome.Text;
  n1 := StrToFloat(edtN1.Text);
  n2 := StrToFloat(edtN2.Text);
  n3 := StrToFloat(edtN3.Text);
  n4 := StrToFloat(edtN4.Text);

  soma := n1 + n2 + n3 + n4;

  media := soma / 4;

  edtMedia.Text := FormatFloat('0.00', media);

  mensagem := 'Aluna(o): ' + nome + sLineBreak + 'Média: ' + FormatFloat('0.00', media);
  lblResultadoMedia.Caption := mensagem;

end;

procedure TfrmAtividade27.FormCreate(Sender: TObject);
begin
  // Define a largura mínima como 300 pixels
  Self.Constraints.MinWidth := 358;
  // Opcional: definir altura mínima
  Self.Constraints.MinHeight := 640;
end;

end.
