object frmExemplo01: TfrmExemplo01
  Left = 0
  Top = 0
  Caption = 'Exemplo 01'
  ClientHeight = 202
  ClientWidth = 232
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 30
  object lblMensagem: TLabel
    Left = 21
    Top = 16
    Width = 194
    Height = 30
    Caption = 'Sua mensagem aqui!'
  end
  object edtMensagem: TEdit
    Left = 8
    Top = 68
    Width = 216
    Height = 38
    TabOrder = 0
  end
  object btnMensagem: TButton
    Left = 8
    Top = 136
    Width = 216
    Height = 49
    Caption = 'Exibir Mensagem'
    TabOrder = 1
    OnClick = btnMensagemClick
  end
end
