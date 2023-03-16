unit uCTransacaoSITEF;

interface

uses
  System.Classes,
  System.SysUtils,
  uCFuncoesComuns;

type
  TFormasPagamento = (fpCDB_DEBITO, fpCCR_CREDITO_A_VISTA, fpCancelamento, fpReimpressao);

  TTransacaoSitef = class
  strict private
    FCodigoResposta: string;
    FTransacaoNsuSitef: string;
    FTransacaoNsuHost: string;
    FTransacaoNumeroBinCartao: string;
    FTransacaoCodigoAutorizacao: string;
    FTransacaoCodigoRedeAutorizadora: string;
    FTransacaoDataFiscal: string;
    FTransacaoNumeroCupom: string;
    FNumeroSeriePinpad: string;
    FTransacaoNumeroEmbosoCartao: string;
    FDataHoraSITEF: string;
    FMensagemCodigoResposta: string;
    FTransacaoTipoCartao: string;
    FCodigoBandeira: string;
    FNomeDaInstituicao: string;
    FNumeroParcelas: string;
    FDOC: string;
    FCodigoAdquirente: string;
    FNome_Titular: string;
    FValorTransacao: string;
    FValorDebitos: string;
    FFormaPagamento: TFormasPagamento;

    FIDServico: integer;
    FIDRetorno: integer;

    procedure SetCodigoResposta(const Value: string);
    procedure SetTransacaoCodigoProcessadora(const Value: string);
    procedure SetTransacaoCodigoRedeAutorizadora(const Value: string);
  public
    constructor create();

    property CodigoResposta: string read FCodigoResposta write SetCodigoResposta;
    property MensagemResposta: string read FMensagemCodigoResposta;
    property NsuSitef: string read FTransacaoNsuSitef write FTransacaoNsuSitef;
    property NsuHost: string read FTransacaoNsuHost write FTransacaoNsuHost;
    property NumeroBinCartao: string read FTransacaoNumeroBinCartao write FTransacaoNumeroBinCartao;
    property CodigoAutorizacao: string read FTransacaoCodigoAutorizacao write FTransacaoCodigoAutorizacao;
    property CodigoRedeAutorizadora: string read FTransacaoCodigoRedeAutorizadora write SetTransacaoCodigoRedeAutorizadora;
    property DataFiscal: string read FTransacaoDataFiscal write FTransacaoDataFiscal;
    property NumeroCupom: string read FTransacaoNumeroCupom write FTransacaoNumeroCupom;
    property NumeroSeriePinpad: string read FNumeroSeriePinpad write FNumeroSeriePinpad;
    property NumeroEmbosoCartao: string read FTransacaoNumeroEmbosoCartao write FTransacaoNumeroEmbosoCartao;
    property TipoCartao: string read FTransacaoTipoCartao write FTransacaoTipoCartao;
    property DataHoraSITEF: string read FDataHoraSITEF write FDataHoraSITEF;
    property CodigoBandeira: string read FCodigoBandeira write SetTransacaoCodigoProcessadora;
    property NomeDaInstituicao: string read FNomeDaInstituicao write FNomeDaInstituicao;
    property DOC: string read FDOC write FDOC;
    property CodigoAdquirente: string read FCodigoAdquirente write FCodigoAdquirente;
    property Nome_Titular: string read FNome_Titular write FNome_Titular;
    property NumeroParcelas: string read FNumeroParcelas write FNumeroParcelas;
    property ValorTransacao: string read FValorTransacao write FValorTransacao;
    property ValorDebitos: string read FValorDebitos write FValorDebitos;
    property FormaPagamento: TFormasPagamento read FFormaPagamento write FFormaPagamento;
    function NomeFormaPagamento(AFormaPagamento: TFormasPagamento): string;
  end;

implementation

{ TTransacaoSitef }

constructor TTransacaoSitef.create;
begin
  ValorTransacao := '';
  NumeroParcelas := '0';
end;

function TTransacaoSitef.NomeFormaPagamento(AFormaPagamento: TFormasPagamento): string;
begin
  case AFormaPagamento of
    fpCDB_DEBITO:
      result := 'Debito';
    fpCCR_CREDITO_A_VISTA:
      result := 'Credito a vista';
  end;
end;

procedure TTransacaoSitef.SetCodigoResposta(const Value: string);
begin
  FCodigoResposta := Value;

  if Value = '00' then
    FMensagemCodigoResposta := 'Transa��o autorizada'
  else if Value = '-1' then
    FMensagemCodigoResposta := 'M�dulo n�o inicializado.'
  else if Value = '-2' then
    FMensagemCodigoResposta := 'Opera��o cancelada pelo operador.'
  else if Value = '-3' then
    FMensagemCodigoResposta := 'O par�metro fun��o / modalidade � inexistente/inv�lido.'
  else if Value = '-4' then
    FMensagemCodigoResposta := 'Falta de mem�ria no PDV.'
  else if Value = '-5' then
    FMensagemCodigoResposta := 'Sem comunica��o com o SiTef.'
  else if Value = '-6' then
    FMensagemCodigoResposta := 'Opera��o cancelada pelo usu�rio no pinpad.'
  else if Value = '-7' then
    FMensagemCodigoResposta := 'Reservado'
  else if Value = '-8' then
    FMensagemCodigoResposta :=
      'A CliSiTef n�o possui a implementa��o da fun��o necess�ria, provavelmente est� desatualizada (a CliSiTefI � mais recente).'
  else if Value = '-9' then
    FMensagemCodigoResposta := 'A automa��o chamou a rotina ContinuaFuncaoSiTefInterativo sem antes iniciar uma fun��o iterativa.'
  else if Value = '-10' then
    FMensagemCodigoResposta := 'Algum par�metro obrigat�rio n�o foi passado pela automa��o comercial.'
  else if Value = '-12' then
    FMensagemCodigoResposta :=
      'Erro na execu��o da rotina iterativa. Provavelmente o processo iterativo anterior n�o foi executado at� o final (enquanto o retorno for igual a 10000).'
  else if Value = '-13' then
    FMensagemCodigoResposta :=
      'Documento fiscal n�o encontrado nos registros da CliSiTef. Retornado em fun��es de consulta tais como ObtemQuantidadeTransa��esPendentes.'
  else if Value = '-15' then
    FMensagemCodigoResposta := 'Opera��o cancelada pela automa��o comercial.'
  else if Value = '-20' then
    FMensagemCodigoResposta := 'Par�metro inv�lido passado para a fun��o.'
  else if Value = '-21' then
    FMensagemCodigoResposta :=
      'Utilizada uma palavra proibida, por exemplo SENHA, para coletar dados em aberto no pinpad. Por exemplo na fun��o ObtemDadoPinpadDiretoEx.'
  else if Value = '-25' then
    FMensagemCodigoResposta := 'Erro no Correspondente Banc�rio: Deve realizar sangria.'
  else if Value = '-28' then
    FMensagemCodigoResposta := 'Excede o n�mero de parcelas'
  else if Value = '-30' then
    FMensagemCodigoResposta := 'Erro de acesso ao arquivo. Certifique-se que o usu�rio que roda a aplica��o tem direitos de leitura/escrita.'
  else if Value = '-40' then
    FMensagemCodigoResposta := 'Transa��o negada pelo servidor SiTef.'
  else if Value = '-41' then
    FMensagemCodigoResposta := 'Dados inv�lidos.'
  else if Value = '-42' then
    FMensagemCodigoResposta := 'Reservado'
  else if Value = '-43' then
    FMensagemCodigoResposta := 'Erro pinpad, verifique se o MP5 esta conectado.'
  else if Value = '-50' then
    FMensagemCodigoResposta := 'Transa��o n�o segura.'
  else if Value = '-100' then
    FMensagemCodigoResposta := 'Erro interno do m�dulo.'
  else
    FMensagemCodigoResposta := 'Transa��o n�o autorizada'
end;

procedure TTransacaoSitef.SetTransacaoCodigoProcessadora(const Value: string);
begin
  FCodigoBandeira := Value;
end;

procedure TTransacaoSitef.SetTransacaoCodigoRedeAutorizadora(const Value: string);
begin
  FTransacaoCodigoRedeAutorizadora := TFuncoesComuns.StrZero(StrToIntDef(Value, 0), 5);

end;

end.
