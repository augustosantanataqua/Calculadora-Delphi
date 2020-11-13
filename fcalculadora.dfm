object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 405
  ClientWidth = 755
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 168
    Top = 51
    Width = 8
    Height = 13
    Caption = '='
  end
  object Label2: TLabel
    Left = 40
    Top = 29
    Width = 74
    Height = 13
    Caption = 'Digite 2 valores'
  end
  object Label3: TLabel
    Left = 219
    Top = 29
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object Label4: TLabel
    Left = 612
    Top = 29
    Width = 127
    Height = 13
    Caption = 'Conversor de Real P/D'#243'lar'
  end
  object labeldolar: TLabel
    Left = 492
    Top = 48
    Width = 114
    Height = 13
    Caption = 'Digite um valor em reais'
  end
  object Label5: TLabel
    Left = 528
    Top = 102
    Width = 78
    Height = 13
    Caption = 'Valor convertido'
  end
  object Label6: TLabel
    Left = 493
    Top = 75
    Width = 119
    Height = 13
    Caption = 'Digite a Cota'#231#227'o(Moeda)'
  end
  object Label7: TLabel
    Left = 187
    Top = 236
    Width = 93
    Height = 13
    Caption = 'Lista de Resultados'
  end
  object lblresto: TLabel
    Left = 128
    Top = 171
    Width = 126
    Height = 13
    Caption = '(Somente valores inteiros)'
  end
  object Label8: TLabel
    Left = 528
    Top = 236
    Width = 97
    Height = 13
    Caption = 'Lista de Convers'#245'es'
  end
  object Label9: TLabel
    Left = 311
    Top = 360
    Width = 194
    Height = 13
    Caption = '(Limpara todos os campos do formulario)'
  end
  object Label10: TLabel
    Left = 480
    Top = 138
    Width = 45
    Height = 13
    Caption = 'Cota'#231#245'es'
  end
  object Label11: TLabel
    Left = 480
    Top = 157
    Width = 54
    Height = 13
    Caption = 'Dolar: 5,39'
  end
  object Label12: TLabel
    Left = 480
    Top = 176
    Width = 51
    Height = 13
    Caption = 'Euro: 6,36'
  end
  object Label13: TLabel
    Left = 480
    Top = 195
    Width = 52
    Height = 13
    Caption = 'Libra: 7,14'
  end
  object Label14: TLabel
    Left = 480
    Top = 214
    Width = 57
    Height = 13
    Caption = 'Iene: 0,051'
  end
  object ed_valor1: TEdit
    Left = 8
    Top = 48
    Width = 57
    Height = 21
    TabOrder = 1
  end
  object btnfechar: TButton
    Left = 664
    Top = 150
    Width = 75
    Height = 25
    Caption = 'FECHAR'
    TabOrder = 14
    OnClick = btnfecharClick
  end
  object ed_valor2: TEdit
    Left = 105
    Top = 48
    Width = 57
    Height = 21
    TabOrder = 2
  end
  object ed_resultado: TEdit
    Left = 198
    Top = 48
    Width = 91
    Height = 21
    TabStop = False
    Enabled = False
    TabOrder = 0
  end
  object btnsomar: TButton
    Left = 8
    Top = 102
    Width = 75
    Height = 25
    Caption = 'SOMAR'
    TabOrder = 3
    OnClick = btnsomarClick
  end
  object btnsub: TButton
    Left = 8
    Top = 150
    Width = 75
    Height = 25
    Caption = 'SUBTRAIR'
    TabOrder = 4
    OnClick = btnsubClick
  end
  object btnmult: TButton
    Left = 8
    Top = 190
    Width = 75
    Height = 25
    Caption = 'MULTIPLICAR'
    TabOrder = 5
    OnClick = btnmultClick
  end
  object btnreais: TButton
    Left = 152
    Top = 100
    Width = 75
    Height = 25
    Caption = 'DIVIDIR'
    TabOrder = 6
    OnClick = btnreaisClick
  end
  object btnresto: TButton
    Left = 152
    Top = 140
    Width = 75
    Height = 25
    Caption = 'RESTODIV'
    TabOrder = 7
    OnClick = btnrestoClick
  end
  object ed_real: TEdit
    Left = 618
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object ed_convertido: TEdit
    Left = 618
    Top = 102
    Width = 121
    Height = 21
    TabStop = False
    Enabled = False
    TabOrder = 15
  end
  object btnconverter: TButton
    Left = 566
    Top = 150
    Width = 75
    Height = 25
    Caption = 'CONVERTER'
    TabOrder = 12
    OnClick = btnconverterClick
  end
  object ed_cotacaodolar: TEdit
    Left = 618
    Top = 75
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object Memo1: TMemo
    Left = 168
    Top = 255
    Width = 137
    Height = 137
    TabStop = False
    Lines.Strings = (
      '')
    TabOrder = 16
  end
  object Memo2: TMemo
    Left = 512
    Top = 255
    Width = 137
    Height = 137
    TabStop = False
    Lines.Strings = (
      '')
    TabOrder = 17
  end
  object btnlimpar: TButton
    Left = 368
    Top = 320
    Width = 75
    Height = 25
    Caption = 'LIMPAR'
    TabOrder = 13
    OnClick = btnlimparClick
  end
  object RadioGroup1: TRadioGroup
    Left = 334
    Top = 22
    Width = 97
    Height = 105
    Caption = 'Opera'#231#245'es'
    Items.Strings = (
      'Todos'
      'Somar'
      'Subtrair'
      'Multiplicar'
      'Dividir'
      'Resto')
    TabOrder = 18
    OnClick = RadioGroup1Click
  end
  object bntcalcular: TButton
    Left = 342
    Top = 133
    Width = 75
    Height = 25
    Caption = 'CALCULAR'
    TabOrder = 9
    OnClick = bntcalcularClick
  end
  object btntodos: TButton
    Left = 152
    Top = 190
    Width = 75
    Height = 25
    Caption = 'TODOS'
    TabOrder = 8
    OnClick = btntodosClick
  end
end
