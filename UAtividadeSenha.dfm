object frmAtividadeSenha: TfrmAtividadeSenha
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 234
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 30
  object lblUsuario: TLabel
    Left = 24
    Top = 9
    Width = 69
    Height = 25
    Caption = 'Usu'#225'rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblSenha: TLabel
    Left = 24
    Top = 89
    Width = 56
    Height = 25
    Caption = 'Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object edtUsuario: TEdit
    Left = 24
    Top = 40
    Width = 249
    Height = 38
    TabOrder = 0
    OnKeyPress = edtUsuarioKeyPress
  end
  object edtSenha: TEdit
    Left = 24
    Top = 120
    Width = 249
    Height = 38
    TabOrder = 1
    OnKeyPress = edtSenhaKeyPress
  end
  object btnAcesso: TButton
    Left = 24
    Top = 175
    Width = 249
    Height = 45
    Caption = 'Acessar sistema'
    TabOrder = 2
    OnClick = btnAcessoClick
  end
end
