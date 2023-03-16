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
    FMensagemCodigoResposta := 'Transação autorizada'
  else if Value = '-1' then
    FMensagemCodigoResposta := 'Módulo não inicializado.'
  else if Value = '-2' then
    FMensagemCodigoResposta := 'Operação cancelada pelo operador.'
  else if Value = '-3' then
    FMensagemCodigoResposta := 'O parâmetro função / modalidade é inexistente/inválido.'
  else if Value = '-4' then
    FMensagemCodigoResposta := 'Falta de memória no PDV.'
  else if Value = '-5' then
    FMensagemCodigoResposta := 'Sem comunicação com o SiTef.'
  else if Value = '-6' then
    FMensagemCodigoResposta := 'Operação cancelada pelo usuário no pinpad.'
  else if Value = '-7' then
    FMensagemCodigoResposta := 'Reservado'
  else if Value = '-8' then
    FMensagemCodigoResposta :=
      'A CliSiTef não possui a implementação da função necessária, provavelmente está desatualizada (a CliSiTefI é mais recente).'
  else if Value = '-9' then
    FMensagemCodigoResposta := 'A automação chamou a rotina ContinuaFuncaoSiTefInterativo sem antes iniciar uma função iterativa.'
  else if Value = '-10' then
    FMensagemCodigoResposta := 'Algum parâmetro obrigatório não foi passado pela automação comercial.'
  else if Value = '-12' then
    FMensagemCodigoResposta :=
      'Erro na execução da rotina iterativa. Provavelmente o processo iterativo anterior não foi executado até o final (enquanto o retorno for igual a 10000).'
  else if Value = '-13' then
    FMensagemCodigoResposta :=
      'Documento fiscal não encontrado nos registros da CliSiTef. Retornado em funções de consulta tais como ObtemQuantidadeTransaçõesPendentes.'
  else if Value = '-15' then
    FMensagemCodigoResposta := 'Operação cancelada pela automação comercial.'
  else if Value = '-20' then
    FMensagemCodigoResposta := 'Parâmetro inválido passado para a função.'
  else if Value = '-21' then
    FMensagemCodigoResposta :=
      'Utilizada uma palavra proibida, por exemplo SENHA, para coletar dados em aberto no pinpad. Por exemplo na função ObtemDadoPinpadDiretoEx.'
  else if Value = '-25' then
    FMensagemCodigoResposta := 'Erro no Correspondente Bancário: Deve realizar sangria.'
  else if Value = '-28' then
    FMensagemCodigoResposta := 'Excede o número de parcelas'
  else if Value = '-30' then
    FMensagemCodigoResposta := 'Erro de acesso ao arquivo. Certifique-se que o usuário que roda a aplicação tem direitos de leitura/escrita.'
  else if Value = '-40' then
    FMensagemCodigoResposta := 'Transação negada pelo servidor SiTef.'
  else if Value = '-41' then
    FMensagemCodigoResposta := 'Dados inválidos.'
  else if Value = '-42' then
    FMensagemCodigoResposta := 'Reservado'
  else if Value = '-43' then
    FMensagemCodigoResposta := 'Erro pinpad, verifique se o MP5 esta conectado.'
  else if Value = '-50' then
    FMensagemCodigoResposta := 'Transação não segura.'
  else if Value = '-100' then
    FMensagemCodigoResposta := 'Erro interno do módulo.'
  else
    FMensagemCodigoResposta := 'Transação não autorizada'
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
