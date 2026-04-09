object frmMensagem: TfrmMensagem
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Atividade Mensagem'
  ClientHeight = 187
  ClientWidth = 293
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 30
  object btnMessageBox: TBitBtn
    Left = 32
    Top = 24
    Width = 225
    Height = 57
    Caption = 'MessageBox'
    TabOrder = 0
    OnClick = btnMessageBoxClick
  end
  object btnInput: TBitBtn
    Left = 32
    Top = 104
    Width = 225
    Height = 57
    Caption = 'InputBox'
    TabOrder = 1
    OnClick = btnInputClick
  end
end
