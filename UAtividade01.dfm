object frmAtividade01: TfrmAtividade01
  Left = 0
  Top = 0
  Caption = 'Atividade 1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 30
  object lblTexto: TLabel
    Left = 8
    Top = 8
    Width = 142
    Height = 30
    Caption = 'Texto digitado: '
  end
  object btnTexto: TButton
    Left = 423
    Top = 395
    Width = 193
    Height = 38
    Caption = 'Adicionar Texto'
    TabOrder = 0
    OnClick = btnTextoClick
  end
  object edtTexto: TEdit
    Left = 8
    Top = 395
    Width = 409
    Height = 38
    TabOrder = 1
  end
end
