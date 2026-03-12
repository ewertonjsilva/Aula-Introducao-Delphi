unit UAtividade02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls;

type
  TfrmAtividade02 = class(TForm)
    lbl_sinal: TLabel;
    btn_soma: TButton;
    edt_n1: TEdit;
    edt_n2: TEdit;
    lbl_igual: TLabel;
    edt_resultado: TEdit;
    btn_subtrai: TBitBtn;
    btn_multiplica: TBitBtn;
    btn_divide: TBitBtn;
    pnl_atv_alt: TPanel;
    lbl_sinal_alt: TLabel;
    btn_divide_alt: TButton;
    edt_n1_alt: TEdit;
    edt_n2_alt: TEdit;
    lbl_igual_alt: TLabel;
    edt_resultado_alt: TEdit;
    btn_soma_alt: TBitBtn;
    btn_subtrai_alt: TBitBtn;
    btn_multiplica_alt: TBitBtn;
    procedure btn_somaClick(Sender: TObject);
    procedure btn_soma_altClick(Sender: TObject);
    procedure btn_subtrai_altClick(Sender: TObject);
    procedure btn_multiplica_altClick(Sender: TObject);
    procedure btn_divide_altClick(Sender: TObject);
    procedure lbl_igual_altClick(Sender: TObject);
  private
    n1, n2, resultado : Double;
  public
    { Public declarations }
  end;

var
  frmAtividade02: TfrmAtividade02;

  // alt + 0247
implementation

{$R *.dfm}

procedure TfrmAtividade02.btn_divide_altClick(Sender: TObject);
begin
  lbl_sinal_alt.Caption := '÷';
end;

procedure TfrmAtividade02.btn_multiplica_altClick(Sender: TObject);
begin
  lbl_sinal_alt.Caption := 'x';
end;

procedure TfrmAtividade02.btn_somaClick(Sender: TObject);
begin
  n1 := StrToFloat(edt_n1.Text);
  n2 := StrToFloat(edt_n2.Text);

  resultado:= n1 + n2;
  lbl_sinal.Caption := '+';

//  edt_resultado.Text := FloatToStr(resultado);
  edt_resultado.Text := FormatFloat('0.00', resultado);
end;

procedure TfrmAtividade02.btn_soma_altClick(Sender: TObject);
begin
  lbl_sinal_alt.Caption := '+';
end;

procedure TfrmAtividade02.btn_subtrai_altClick(Sender: TObject);
begin
   lbl_sinal_alt.Caption := '-';
end;

procedure TfrmAtividade02.lbl_igual_altClick(Sender: TObject);
var sinal : String;
begin
  sinal := lbl_sinal_alt.Caption;

  n1 := StrToFloat(edt_n1_alt.Text);
  n2 := StrToFloat(edt_n2_alt.Text);

  if (sinal = '+') then
  begin
    resultado:= n1 + n2;
  end;

  if (sinal = '-') then
  begin
    resultado:= n1 - n2;
  end;

  if (sinal = '÷') then
  begin
    resultado:= n1 / n2;
  end;

  if (sinal = 'x') then
  begin
    resultado:= n1 * n2;
  end;

  edt_resultado_alt.text := FormatFloat('0.00', resultado);


end;

end.
