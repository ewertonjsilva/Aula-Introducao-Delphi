unit UAtividade27;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade27: TfrmAtividade27;

implementation

{$R *.dfm}

end.
