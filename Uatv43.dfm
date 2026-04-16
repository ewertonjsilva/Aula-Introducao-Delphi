object frmAtv43: TfrmAtv43
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Atividade 43'
  ClientHeight = 195
  ClientWidth = 273
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 13
  object lblNome: TLabel
    Left = 16
    Top = 16
    Width = 49
    Height = 23
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblVlrHora: TLabel
    Left = 16
    Top = 56
    Width = 56
    Height = 23
    Caption = '$ Hora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblHoraTrab: TLabel
    Left = 16
    Top = 96
    Width = 87
    Height = 23
    Caption = 'Horas M'#234's'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtNome: TEdit
    Left = 71
    Top = 13
    Width = 186
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edtVlrHora: TEdit
    Left = 120
    Top = 53
    Width = 137
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtHoraTrab: TEdit
    Left = 120
    Top = 93
    Width = 137
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object btnCalcular: TButton
    Left = 16
    Top = 144
    Width = 241
    Height = 33
    Caption = 'Calcular Sal'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnCalcularClick
  end
end
