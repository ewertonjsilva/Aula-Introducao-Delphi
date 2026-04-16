unit Uatv43;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtv43 = class(TForm)
    lblNome: TLabel;
    edtNome: TEdit;
    lblVlrHora: TLabel;
    edtVlrHora: TEdit;
    lblHoraTrab: TLabel;
    edtHoraTrab: TEdit;
    btnCalcular: TButton;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtv43: TfrmAtv43;

implementation

{$R *.dfm}

procedure TfrmAtv43.btnCalcularClick(Sender: TObject);
var
  nome, mensagem : String;
  vhora, horat, salarioBruto, sindicato, inss, fgts, ir, descontos, liquido, porcDesc, porcLiq : Real;
begin
  nome := edtNome.Text;
  vhora := StrToFloat(edtVlrHora.Text);
  horat := StrToFloat(edtHoraTrab.Text);

  salarioBruto := vhora * horat;
  sindicato := salarioBruto * 0.03;
  inss := salarioBruto * 0.1;
  fgts := salarioBruto * 0.11;

  mensagem := ('Funcionário : ' + nome + #13);
  mensagem := mensagem + ('Salário Bruto: R$ ' + FormatFloat('0.00',salarioBruto) + #13);

  if salarioBruto <= 1900.00 then
  begin
    ir := 0.00;
    mensagem := mensagem + ('(-) IR(Isento): R$ ' + FormatFloat('0.00',ir) + #13);
  end;

  if ((salarioBruto > 1900.00) and (salarioBruto <= 3500.00)) then
  begin
    ir := salarioBruto * 0.05;
    mensagem := mensagem + ('(-) IR(5%): R$ ' + FormatFloat('0.00',ir) + #13);
  end;

  if ((salarioBruto > 3500.00) and (salarioBruto <= 7500.00)) then
  begin
    ir := salarioBruto * 0.1;
    mensagem := mensagem + ('(-) IR(10%): R$ ' + FormatFloat('0.00',ir) + #13);
  end;

  if (salarioBruto > 7500.00) then
  begin
    ir := salarioBruto * 0.2;
    mensagem := mensagem + ('(-) IR(20%): R$ ' + FormatFloat('0.00',ir) + #13);
  end;

  mensagem := mensagem + ('(-) INSS(10%): R$ ' + FormatFloat('0.00',inss) + #13);
  mensagem := mensagem + ('(-) Sindicato(3%): R$ ' + FormatFloat('0.00',sindicato) + #13);
  mensagem := mensagem + ('FGTS(11%): R$ ' + FormatFloat('0.00',fgts) + #13);

  descontos := ir + inss + sindicato;
  porcDesc := ((descontos * 100) / salarioBruto);
  mensagem := mensagem + ('Total de descontos (' + FormatFloat('0',porcDesc) + '%) : R$ ' + FormatFloat('0.00',descontos) + #13);

  liquido := salarioBruto - descontos;
  porcLiq := 100 - porcDesc;
  mensagem := mensagem + ('Salário liquido (' + FormatFloat('0',porcLiq) + '%) : R$ ' + FormatFloat('0.00',liquido) + #13);

  ShowMessage(mensagem);

  // formatfloat(\'R$#.##0,00\',suavariavelquepossuionúmero);

end;

end.
