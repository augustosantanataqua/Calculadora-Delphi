unit fcalculadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    ed_valor1: TEdit;
    btnfechar: TButton;
    ed_valor2: TEdit;
    Label1: TLabel;
    ed_resultado: TEdit;
    btnsub: TButton;
    btnmult: TButton;
    btnreais: TButton;
    btnresto: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ed_real: TEdit;
    labeldolar: TLabel;
    ed_convertido: TEdit;
    Label5: TLabel;
    btnconverter: TButton;
    ed_cotacaodolar: TEdit;
    Label6: TLabel;
    btnsomar: TButton;
    Memo1: TMemo;
    Label7: TLabel;
    lblresto: TLabel;
    Memo2: TMemo;
    Label8: TLabel;
    btnlimpar: TButton;
    RadioGroup1: TRadioGroup;
    bntcalcular: TButton;
    Label9: TLabel;
    btntodos: TButton;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    procedure btnsomarClick(Sender: TObject);
    procedure btnsubClick(Sender: TObject);
    procedure btnmultClick(Sender: TObject);
    procedure btnreaisClick(Sender: TObject);
    procedure btnrestoClick(Sender: TObject);
    procedure btnfecharClick(Sender: TObject);
    procedure btnconverterClick(Sender: TObject);
    procedure btnlimparClick(Sender: TObject);
    procedure bntcalcularClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure btntodosClick(Sender: TObject);
   // procedure btndividirClick(Sender: TObject);
  private
    { Private declarations }
    function somar (Value1, Value2 : Currency) : Currency;
    function subtrair (Value1, Value2 : Currency) : Currency;
    function multiplicar (Value1, Value2 : Currency) : Currency;
    function dividirReais (Value1, Value2 : Currency) : Currency;
    function resto (Value1, Value2 : Integer) : Integer;
    function realparaDolar( value,cotacao : Real) : Real;
    function realparaEuro(value,cotacao : Real) : Real;
    function realparaLibra(value,cotacao : Real) : Real;
    function realparaIene(value,cotacao : Real) : Real;

  public
    { Public declarations }
  end;

var
// criação das variaves
  Form1: TForm1;
  valorReais : Real;
  valorConvertido : Real;
  cotacaoDolar : Real;
  cotacaoEuro : Real;
  cotacaoLibra : Real;
  cotacaoIene : Real;
implementation

{$R *.dfm}
procedure TForm1.bntcalcularClick(Sender: TObject);
var
Resultado : Currency;
begin
//1 validação
  if(ed_valor1.Text = '') or (ed_valor2.Text = '') or (RadioGroup1.ItemIndex < 0) then
  begin
    ShowMessage('Por favor, digite os valores ou selecione uma para serem calculados');
    Exit;
  end;

  //execução do botão calcular
  if(RadioGroup1.ItemIndex = 1) or (RadioGroup1.ItemIndex = 0)  then
  begin
  resultado := somar(StrToCurr(ed_valor1.Text), StrToCurr(ed_valor2.Text));
  memo1.Lines.Add(format('soma: %n ',[Resultado]));
  end;
  //////
  if (RadioGroup1.ItemIndex = 2) or (RadioGroup1.ItemIndex = 0) then
  begin
    resultado:= subtrair(StrToCurr(ed_valor1.Text), StrToCurr(ed_valor2.Text));
    memo1.Lines.Add(format('subtração: %n', [Resultado]));
  end;
  /////
  if(RadioGroup1.ItemIndex = 3) or (RadioGroup1.ItemIndex = 0) then
  begin
    resultado:= multiplicar(StrToCurr(ed_valor1.Text), StrToCurr(ed_valor2.Text));
    memo1.Lines.Add(format('multiplicação: %n', [Resultado]));
  end;
 //////////////////////////
  if(RadioGroup1.ItemIndex = 4) or (RadioGroup1.ItemIndex = 0) then
  begin
    resultado:= dividirReais(StrToCurr(ed_valor1.Text), StrToCurr(ed_valor2.Text));
    memo1.Lines.Add(format('divisão: %n', [Resultado]));
  end;
  ///////////////////////
  if(RadioGroup1.ItemIndex = 5) or (RadioGroup1.ItemIndex = 0)  then
  begin
    resultado := resto(StrToInt(ed_valor1.Text), StrToInt(ed_valor2.Text));
    memo1.Lines.Add(format('restodiv: %n', [Resultado]));
  end;

end;


//execução do botão converter
procedure TForm1.btnconverterClick(Sender: TObject);
begin
  if(ed_real.Text = '') or (ed_cotacaodolar.Text = '') then
  begin
    ShowMessage('Por Favor, digite um valor para ser convertido ou cotação de moeda');
    Exit;
  end;
  //CONVERTER PARA EURO
  if(ed_cotacaodolar.Text = '6,36') then
  begin
    cotacaoEuro:= StrToFloat(ed_cotacaodolar.Text);
    valorReais :=StrToFloat(ed_real.Text);
    valorConvertido := realparaEuro(valorReais,cotacaoEuro);
    ed_convertido.Text :=(FormatFloat('#,0.00',valorConvertido));
    memo2.Lines.Add(format('Euro: %n', [valorConvertido]));
    Exit;

//CONVERTER PARA DOLAR
  if(ed_cotacaodolar.Text = '5,39') then
  begin
    cotacaoDolar := StrToFloat(ed_cotacaodolar.Text);
    valorReais := StrToFloat(ed_real.Text);
    valorConvertido := realparaDolar(valorReais,cotacaoDolar);
    ed_convertido.Text :=(FormatFloat('#,0.00',valorConvertido));
    memo2.Lines.Add(format('Dolar: %n',[valorConvertido]));
    Exit;
  end;
  //CONVERTER PARA LIBRA
  if (ed_cotacaodolar.Text = '7,14') then
  begin
    cotacaoLibra:=StrToFloat(ed_cotacaodolar.Text);
    valorReais:= StrToFloat (ed_real.Text);
    valorConvertido :=realparaLibra (valorReais,cotacaoLibra);
    ed_convertido.Text :=(FormatFloat('#,0.00', valorConvertido));
    memo2.Lines.Add(format('Libra: %n',[valorConvertido]));
    Exit;
  end;
  //CONVERTER PARA IENE
  if (ed_cotacaodolar.Text = '0,051') then
  begin
    cotacaoIene:=StrToFloat(ed_cotacaodolar.Text);
    valorReais:= StrToFloat (ed_real.Text);
    valorConvertido:= realparaIene (valorReais,cotacaoIene);
    ed_convertido.Text:= (FormatFloat('#,0.00', valorConvertido));
    memo2.Lines.Add(format('Iene: %n',[valorConvertido]));
    Exit;
  end;



end;


procedure TForm1.btnmultClick(Sender: TObject);
var
  resultado : Currency;
begin
// validando os valores para multiplicação
if(ed_valor1.Text = '') or (ed_valor2.Text = '') then
  begin
    ShowMessage('Por Favor,digite os valores para poder multiplica-los');
    Exit;
  end;
  //execução do botão multiplicar
  resultado := multiplicar (StrToCurr(ed_valor1.Text), StrToCurr(ed_valor2.Text));
  ed_resultado.Text := CurrToStr(resultado);
  memo1.Lines.Add(format('multiplicação: %n',[Resultado]));
end;

//execução do botão somar
procedure TForm1.btnsomarClick(Sender: TObject);
  var
    resultado : Currency;
begin
//validando os valores para somar
if(ed_valor1.Text = '') or (ed_valor2.Text = '') then
  begin
    ShowMessage('Por Favor,digite os valores para poder soma-los');
    Exit;
  end;
//execução do botão somar
 resultado := somar(StrToCurr(ed_valor1.Text), StrToCurr(ed_valor2.Text));
 ed_resultado.Text := CurrToStr(resultado);
 memo1.Lines.Add(format('soma: %n ',[Resultado]));

end;

procedure TForm1.btnsubClick(Sender: TObject);
var
  resultado : Currency;
begin
//validando os valores para subtrai-los
if(ed_valor1.Text = '') or (ed_valor2.Text = '') then
  begin
    ShowMessage('Por Favor,digite os valores para poder subrai-los');
    Exit;
  end;
  //execução do botão subtrair
  resultado := subtrair(StrToCurr(ed_valor1.Text), StrToCurr(ed_valor2.Text));
  ed_resultado.Text := CurrToStr(resultado);
  memo1.Lines.Add(format('subtração: %n ',[Resultado]));

end;

procedure TForm1.btntodosClick(Sender: TObject);
var
  resultado : Currency;
begin
  //validando os valores para poder mostrar todos os resultados de uma vez
  if(ed_valor1.Text = '') or (ed_valor2.Text = '') then
  begin
    ShowMessage('Por Favor, digite os valores para poder mostrar todos os resultados');
    Exit;
  end;
  //execução do botão todos // subtração
   resultado := subtrair(StrToCurr(ed_valor1.Text), StrToCurr(ed_valor2.Text));
   memo1.Lines.Add(format('subtração: %n ', [Resultado]));
   //////
   //soma
   resultado := somar(StrToCurr(ed_valor1.Text), StrToCurr(ed_valor2.Text));
   memo1.Lines.Add(format('soma: %n ', [Resultado]));
   /////
   //Multplicação
   resultado := multiplicar(StrToCurr(ed_valor1.Text), StrToCurr(ed_valor2.Text));
   memo1.Lines.Add(format('multiplicação: %n ', [Resultado]));
   /////
   //Divisão
   resultado := dividirReais(StrToCurr(ed_valor1.Text), StrToCurr(ed_valor2.Text));
   memo1.Lines.Add(format('divisão: %n ', [Resultado]));
   /////
   //Resto da divisão
   resultado := resto(StrToInt(ed_valor1.Text), StrToInt(ed_valor2.Text));
   memo1.Lines.Add(format('restoDiv: %n' , [Resultado]));
end;

//execução do botão fechar
procedure TForm1.btnfecharClick(Sender: TObject);
begin
  if application.MessageBox('Tem certeza que deseja sair?', 'SAIR DO SISTEMA', 4) = mryes then
begin
form1.close
end;
end;
 //BOTÃO LIMPAR
procedure TForm1.btnlimparClick(Sender: TObject);
begin
  memo1.Lines.Clear;
  memo2.Lines.Clear;
  ed_valor1.Clear;
  ed_valor2.Clear;
  ed_resultado.Clear;
  ed_real.Clear;
  ed_cotacaodolar.Clear;
  ed_convertido.Clear;
end;

//execução do botão dividir
procedure TForm1.btnreaisClick(Sender: TObject);
var
  resultado : Currency;
begin
//validação dos valores para dividi-los
if(ed_valor1.Text = '') or (ed_valor2.Text = '') then
  begin
    ShowMessage('Por Favor,digite os valores para poder dividi-los');
    Exit;
  end;
  resultado := dividirReais(StrToCurr(ed_valor1.Text), StrToCurr(ed_valor2.Text));
  ed_resultado.Text := CurrToStr(resultado);
  memo1.Lines.Add(format('Divisão: %n', [Resultado]));

end;

//execução do botão que mostra o resto da divisão entre os dois valores
procedure TForm1.btnrestoClick(Sender: TObject);
var
  resultado :  Integer;
begin
//validação dos valores para poder mostrar o resto da divisão
if(ed_valor1.Text = '') or (ed_valor2.Text = '') then
  begin
    ShowMessage('Por Favor,digite os valores para poder mostrar o resto da divisão');
    Exit;
  end;
  //execução do botão resto da divisão
  resultado := resto(StrToInt(ed_valor1.Text), StrToInt(ed_valor2.Text));
  ed_resultado.Text := IntToStr(resultado);
  memo1.Lines.Add(format('restodiv: %d', [Resultado]));
end;

function Tform1.somar(Value1: Currency; Value2: Currency) : Currency;
begin
   Result := Value1 + Value2;
end;

//funções da variavel subtrair
function Tform1.subtrair(Value1: Currency; Value2: Currency) : Currency;
begin
    Result := Value1 - Value2;
end;

//funções da variavel multiplicar
function Tform1.multiplicar(Value1: Currency; Value2: Currency) : Currency;
begin
    Result := Value1 * Value2;
end;

 procedure TForm1.RadioGroup1Click(Sender: TObject);
begin

end;

//funções da variavel que converte Real para Dolár
function TForm1.realparaDolar(value, cotacao: Real): Real;
begin
    Result := value * 5.39;
end;

 //funções da variavel que mostra o resto da divisão dos valores(resto)
function TForm1.resto(Value1, Value2: Integer): Integer;
begin
  result := Value1 mod Value2;
end;
 //funções da variavel que divide números fracionados
function Tform1.dividirReais(Value1: Currency; Value2: Currency) : Currency;
begin
    Result := (Value1 / Value2);
end;
//funções da variavel que converte de real para EURO
function Tform1.realparaEuro(value: Real; cotacao: Real) : Real;
begin
   result := value * 6.36;
end;
//funções da variavel que converte de real pra LIBRA
function Tform1.realparaLibra(value: Real; cotacao: Real) : Real;
begin
    result := value * 7.14;
end;
function Tform1.realparaIene(value: Real; cotacao: Real)  : Real;
begin
      result := value * 0.051;
end;

end;
