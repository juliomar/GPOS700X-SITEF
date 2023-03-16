unit ufrmVenda;

interface

uses
  uCLog,
  constants,
  uCTransacaoSITEF,
  clisitef,
  wbt.CliSiTefI,
  FMX.Platform.Android,
  FMX.Memo.Types,
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Controls.Presentation,
  FMX.ScrollBox,
  FMX.Memo,
  FMX.StdCtrls,
  FMX.TabControl,
  FMX.Objects,
  FMX.Ani,
  FMX.Edit,
  FMX.Layouts,
  FMX.Effects,
  System.ImageList,
  FMX.ImgList,
  uCFuncoesComuns,
  FMX.MultiView,
  FMX.DateTimeCtrls,
  System.Rtti,
  FMX.ListBox,
  Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  System.Bindings.Outputs,
  FMX.Bind.Editors,
  Data.Bind.EngExt,
  FMX.Bind.DBEngExt,
  Data.Bind.Components,
  Data.Bind.DBScope,
  FireDAC.Stan.StorageJSON,
  FMX.ListView.Types,
  FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base,
  FMX.ListView,
  Web.HTTPApp,
  System.NetEncoding,
  FMX.Grid.Style,
  FMX.Grid,
  System.Actions,
  FMX.ActnList,
  Androidapi.Log;

type
  TfrmVenda = class(TForm)
    tbcTransacao: TTabControl;
    tbiValor: TTabItem;
    tbiFormaPagamento: TTabItem;
    rctValorTotalTransacao: TRectangle;
    lblValorTotal: TLabel;
    lblValorTotalTransacao: TLabel;
    lytFormasDepagamentos: TLayout;
    lblTituloPagamento: TLabel;
    rctFormaPagamentoCreditoAVista: TRectangle;
    ShadowEffect14: TShadowEffect;
    lblFormaPagamentoCreditoAVista: TLabel;
    rctFormaPagamentoDebito: TRectangle;
    ShadowEffect12: TShadowEffect;
    lblFormaPagamentoDebito: TLabel;
    tbiChamadaSitef: TTabItem;
    lytConectandoSITEF: TLayout;
    lytImagemConectandoSITEF: TLayout;
    imgConectandoSitef: TImage;
    lblMensagemSITEF: TLabel;
    tbiResultadoSitef: TTabItem;
    tbiCupom: TTabItem;
    lytHeaderLogin: TLayout;
    imgHeader: TImage;
    imgSitefConectado: TImage;
    lytResultadoTransação: TLayout;
    lytStatusTransacao: TLayout;
    imgTransacaoSucesso: TImage;
    imgTransacaoNegada: TImage;
    lblMensagemTransacao: TLabel;
    lytResultadoTransacaoOpcoes: TLayout;
    rctResultadoTransacaoComprovante: TRectangle;
    FloatAnimation3: TFloatAnimation;
    Arc1: TArc;
    FloatAnimation4: TFloatAnimation;
    lblResultadoTransacaoComprovante: TLabel;
    rctVoltarAOInicio: TRectangle;
    FloatAnimation5: TFloatAnimation;
    Arc3: TArc;
    FloatAnimation6: TFloatAnimation;
    lblResultadoTransacaoVoltarAoInicio: TLabel;
    lytResultadoTransacaoValorTotal: TLayout;
    lblResultadoTransacaoValorTotalTitulo: TLabel;
    lblResultadoTransacaoValorTotalValor: TLabel;
    lytCupomFormaPagamento: TLayout;
    lblResultadoTransacaoFormaPagamentoTitulo: TLabel;
    lblResultadoTransacaoFormaPagamentoValor: TLabel;
    lytCupomDataHora: TLayout;
    lblResultadoTransacaoDataTitulo: TLabel;
    lblResultadoTransacaoDataValor: TLabel;
    rctResultadoTransacaoLinhaInferior: TRectangle;
    rctResultadoTransacaoLinhaSuperior: TRectangle;
    rctTituloCupom: TRectangle;
    lblTituloCupom: TLabel;
    rctComprovanteLinhaDeCima: TRectangle;
    rctComprovanteLinhaDeBaixo: TRectangle;
    lytBotoesCupom: TLayout;
    gpnComprovanteOpcoes: TGridPanelLayout;
    aniSMSComprovante: TFloatAnimation;
    lytMenu: TLayout;
    btnMenuOpcoes: TSpeedButton;
    mtvMenuOpcoes: TMultiView;
    rctBtnSair: TRectangle;
    lblBtnSair: TLabel;
    rctDadosUsuario: TRectangle;
    rctbtnSuporte: TRectangle;
    lblBtnSuporte: TLabel;
    RctBtnCancalamento: TRectangle;
    lblBtnCancalamento: TLabel;
    lblDadosUsuario: TLabel;
    tbiCancelamento: TTabItem;
    lblTituloCancelamento: TLabel;
    rctCancelamentoLinhaSuperior: TRectangle;
    StyleBook1: TStyleBook;
    Image1: TImage;
    Rectangle1: TRectangle;
    layout_campos: TLayout;
    lytSenha: TLayout;
    rctSenha: TRectangle;
    imgSenha: TImage;
    lytSerialEquipamento: TLayout;
    rctSerialEquipamento: TRectangle;
    Image2: TImage;
    lytUsuário: TLayout;
    rctUsuario: TRectangle;
    Image3: TImage;
    edtDataCancelamento: TDateEdit;
    edtCancelamentoDOCECBergs: TEdit;
    edtCancelamentoValorTransacao: TEdit;
    lytbtnsOpcoesCancelamento: TLayout;
    rctBtnCancelamento: TRectangle;
    fanBtnCancelamento: TFloatAnimation;
    arcBtnCancelamento: TArc;
    FloatAnimation11: TFloatAnimation;
    lblBtnCancelamento: TLabel;
    rctBtnVoltarAOInicioCancelamento: TRectangle;
    FloatAnimation12: TFloatAnimation;
    Arc7: TArc;
    FloatAnimation13: TFloatAnimation;
    lblBtnVoltarAOInicioCancelamento: TLabel;
    lytVoltar: TLayout;
    btnVoltar: TSpeedButton;
    tbiRerlatorioDiario: TTabItem;
    lytRelatorioFechamento: TLayout;
    lblRelatorioFechamento: TLabel;
    Rectangle2: TRectangle;
    mtblRelatorioFechamento: TFDMemTable;
    mtblRelatorioFechamentohora: TStringField;
    mtblRelatorioFechamentoid_operacao: TIntegerField;
    mtblRelatorioFechamentocodigo_resposta: TIntegerField;
    mtblRelatorioFechamentonsu_autorizacao: TStringField;
    mtblRelatorioFechamentovalor: TFloatField;
    mtblRelatorioFechamentobin: TStringField;
    mtblRelatorioFechamentotipo: TStringField;
    mtblRelatorioFechamentomeio_pagamento: TStringField;
    mtblRelatorioFechamentonumero_parcelas: TIntegerField;
    mtblRelatorioFechamentodescricao_resposta: TStringField;
    rctRelatorioFechamento: TRectangle;
    lblrctRelatorioFechamento: TLabel;
    lytVenda: TLayout;
    dtsRelatorioFechamento: TDataSource;
    lytbtnVoltaraoInicioComprovante: TLayout;
    rctbtnVoltaraoInicioComprovante: TRectangle;
    FloatAnimation21: TFloatAnimation;
    Arc11: TArc;
    FloatAnimation22: TFloatAnimation;
    lblbtnVoltaraoInicioComprovante: TLabel;
    lytbtnVoltarAoInicioRelatorio: TLayout;
    rctbtnVoltarAoInicioRelatorio: TRectangle;
    FloatAnimation25: TFloatAnimation;
    Arc13: TArc;
    FloatAnimation26: TFloatAnimation;
    lblbtnVoltarAoInicioRelatorio: TLabel;
    arcFormaPagamentoDebito: TArc;
    aniFormaPagamentoDebito: TFloatAnimation;
    arcFormaPagamentoCreditoAVista: TArc;
    aniFormaPagamentoCreditoAVista: TFloatAnimation;
    lytComprovante: TLayout;
    lblCupomNomeLoja: TLabel;
    lblCupomCNPJ: TLabel;
    lblCupomCodigoRede: TLabel;
    lblCupomDados: TLabel;
    lblCupomDadosCartao: TLabel;
    lblCupomFormaPagamento: TLabel;
    lblCupomValor: TLabel;
    lblCupomNumeroOperacao: TLabel;
    rctEmailComprovante: TRectangle;
    arcEmailComprovante: TArc;
    aniEmailComprovante: TFloatAnimation;
    lblEmailComprovante: TLabel;
    lytDadosDispositivo: TLayout;
    lblVersaoAPP: TLabel;
    lblAndroidVersion: TLabel;
    lblManufatura: TLabel;
    lblSerialMPOS: TLabel;
    RectAnimation1: TRectAnimation;
    lytTransacao: TLayout;
    lytTransacaoBotaoConfirmar: TLayout;
    rctConfirmaValor: TRectangle;
    fanTransacaoConfirmar: TFloatAnimation;
    arcConfirmaValor: TArc;
    aniConfirmaValor: TFloatAnimation;
    lblConfirmaValor: TLabel;
    VertScrollBox2: TVertScrollBox;
    lblTituloFormaPagamento: TLabel;
    lblDigiteoValor: TLabel;
    lblValorDaTransacao: TLabel;
    lytTeclado: TLayout;
    gpnTeclado: TGridPanelLayout;
    rctNumero1: TRectangle;
    sdeNumero1: TShadowEffect;
    lblNumero1: TLabel;
    rctNumero2: TRectangle;
    ShadowEffect1: TShadowEffect;
    lblNumero2: TLabel;
    rctNumero3: TRectangle;
    ShadowEffect2: TShadowEffect;
    lblNumero3: TLabel;
    rctNumero4: TRectangle;
    ShadowEffect3: TShadowEffect;
    lblNumero4: TLabel;
    rctNumero5: TRectangle;
    ShadowEffect4: TShadowEffect;
    lblNumero5: TLabel;
    rctNumero6: TRectangle;
    ShadowEffect5: TShadowEffect;
    lblNumero6: TLabel;
    rctNumero7: TRectangle;
    ShadowEffect6: TShadowEffect;
    lblNumero7: TLabel;
    rctNumero8: TRectangle;
    ShadowEffect7: TShadowEffect;
    lblNumero8: TLabel;
    rctNumero9: TRectangle;
    ShadowEffect8: TShadowEffect;
    lblNumero9: TLabel;
    rctNumero0: TRectangle;
    ShadowEffect10: TShadowEffect;
    lblNumero0: TLabel;
    rctLimpa: TRectangle;
    ShadowEffect9: TShadowEffect;
    lblLimpa: TLabel;
    rctBackSpace: TRectangle;
    ShadowEffect11: TShadowEffect;
    lblBackSpace: TLabel;
    sgrRelatorioFechamento: TStringGrid;
    sgcHora: TStringColumn;
    sgcOperacao: TStringColumn;
    sgcForma: TStringColumn;
    sgcValor: TStringColumn;
    sgcResposta: TStringColumn;
    sgcStatus: TStringColumn;
    sgcParcelas: TStringColumn;
    sgcNSUAutorizacao: TStringColumn;
    procedure btnSelecionarTipoFormaPagamentoTAP(Sender: TObject; const Point: TPointF);
    procedure btnFormaPagamentoDebitoTAP(Sender: TObject; const Point: TPointF);
    procedure btnFormaPagamentoCreditoAvistaTAP(Sender: TObject; const Point: TPointF);
    procedure btnTecladoNumericoTAP(Sender: TObject; const Point: TPointF);
    procedure btnTecladoNumericoLimpaTAP(Sender: TObject; const Point: TPointF);
    procedure btnTecladoNumericoBackSpaceTAP(Sender: TObject; const Point: TPointF);
    procedure VoltarAoInicioTap(Sender: TObject; const Point: TPointF);
    procedure tbcTransacaoChange(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure lblResultadoTransacaoComprovanteTap(Sender: TObject; const Point: TPointF);
    procedure RctBtnCancalamentoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnVoltarTap(Sender: TObject; const Point: TPointF);
    procedure lblBtnSairTap(Sender: TObject; const Point: TPointF);
    procedure lblrctRelatorioFechamentoClick(Sender: TObject);
    procedure rctBtnCancelamentoTap(Sender: TObject; const Point: TPointF);
  private
    FTransacaoSitef: TTransacaoSitef;
    FSitefConectado: boolean;

    FValorTransacao: string;

    FInstanciarObjetos: boolean;

    FSelecionaFormaPagamento: boolean;
    FExcedeParcelas: boolean;

    { Private declarations }
    procedure FormataValor();
    procedure ConfiguraBotoes();
    procedure DadosDispositvo();
    procedure StatusSitef(AConectado: boolean; AMensagem: string = ''; AEsperaTecla: boolean = false);
    procedure criaobjetos();
    procedure CalculaParcelas;

  public
    { Public declarations }
    str_res: string;
    espera: boolean;
    rodando: boolean;
    proximoComando: Integer;
    procedure addStrRes(texto: string);
    procedure handleMessage(Value: Integer);
    procedure RotinaColeta(comando: Integer);
    procedure RotinaResultado(campo: Integer);
    procedure ExecutaTransacao(terminal, operador, restricoes, DOC: string);
    procedure ResultadoSitef();
    procedure Comprovante();
    procedure ConfiguraCorLabelColetaDeValores();
    procedure SelecionaTbiValor();
    procedure HabilitaDesabilitaLytVoltar(AHabilitar: boolean = true);
  end;

var
  frmVenda: TfrmVenda;

implementation

{$R *.fmx}

procedure TfrmVenda.FormataValor;
begin
  lblValorDaTransacao.Text := TFuncoesComuns.FormataValor(FValorTransacao);
end;

procedure TfrmVenda.FormCreate(Sender: TObject);
begin
  FInstanciarObjetos := true;
end;

procedure TfrmVenda.criaobjetos;
var
  sts: Integer;
  lEnderecoSITEF: string;
  lDadosSubAdquirencia: string;
begin
  TLog.I('Criando objetos');

  FTransacaoSitef := TTransacaoSitef.create();

  ConfiguraBotoes();
  DadosDispositvo();

  FSitefConectado := false;

  setDebug(true);
  setActivity(MainActivity);
  tthread.CreateAnonymousThread(
    procedure
    begin
      lEnderecoSITEF := '45.237.81.1:4092';
      TLog.I('Configurando sitef para ' + lEnderecoSITEF);

      lDadosSubAdquirencia := EmptyStr;
      // lDadosSubAdquirencia := '[DadosSubAdquirencia='
      TLog.I('Dados da sub-adquirencia ' + lDadosSubAdquirencia);

      sts := configuraIntSiTefInterativoEx(lEnderecoSITEF, '000000', 'NMO12345', lDadosSubAdquirencia);

      TLog.I('Configurando sitef interativo: ' + sts.ToString());

    end).Start;
end;

procedure TfrmVenda.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
var
  lPoint: TPointF;
begin
  if Key = vkHardwareBack then
  begin
    if tbcTransacao.ActiveTab = tbiValor then
      tbcTransacao.ActiveTab := tbiFormaPagamento;

    if tbcTransacao.ActiveTab = tbiResultadoSitef then
      VoltarAoInicioTap(Sender, lPoint);
    Key := 0;
  end;
end;

procedure TfrmVenda.FormShow(Sender: TObject);
begin
  if FInstanciarObjetos then
  begin
    FInstanciarObjetos := false;
    criaobjetos;
  end;
end;

procedure TfrmVenda.HabilitaDesabilitaLytVoltar(AHabilitar: boolean);
begin
  AHabilitar := false;
  lytVoltar.Visible := AHabilitar;
end;

procedure TfrmVenda.addStrRes(texto: string);
begin
  TLog.I(texto);
end;

procedure TfrmVenda.handleMessage(Value: Integer);
begin
  if (Value = CMD_RETORNO_VALOR) then
    RotinaResultado(getTipoCampo)
  else
    RotinaColeta(Value);
end;

procedure TfrmVenda.lblBtnSairTap(Sender: TObject; const Point: TPointF);
begin
  TLog.I('Saindo do aplicativo');
  mtvMenuOpcoes.HideMaster;
  Application.Terminate();
end;

procedure TfrmVenda.lblrctRelatorioFechamentoClick(Sender: TObject);
begin
  tthread.Synchronize(nil,
    procedure
    begin
      TLog.I('Relatorio de fechamento');
    end);
end;

procedure TfrmVenda.lblResultadoTransacaoComprovanteTap(Sender: TObject; const Point: TPointF);
begin
  Comprovante();
end;

procedure TfrmVenda.VoltarAoInicioTap(Sender: TObject; const Point: TPointF);
begin
  TLog.I('Voltar para o inicio');

  tthread.CreateAnonymousThread(
    procedure
    begin
      TFuncoesComuns.StopButtonAnimation(rctFormaPagamentoCreditoAVista, lblFormaPagamentoCreditoAVista, arcFormaPagamentoCreditoAVista,
        aniFormaPagamentoCreditoAVista);
      TFuncoesComuns.StopButtonAnimation(rctFormaPagamentoDebito, lblFormaPagamentoDebito, arcFormaPagamentoDebito, aniFormaPagamentoDebito);
      tthread.Synchronize(nil,
        procedure
        begin
          tbcTransacao.ActiveTab := tbiFormaPagamento;
        end);
    end).Start;
end;

procedure TfrmVenda.RctBtnCancalamentoClick(Sender: TObject);
begin
  TLog.I('Função de cancelamento');

  mtvMenuOpcoes.HideMaster;

  edtDataCancelamento.Date := now;
  edtDataCancelamento.Enabled := false;

  edtCancelamentoDOCECBergs.Text := EmptyStr;
  edtCancelamentoValorTransacao.Text := EmptyStr;
  tbcTransacao.ActiveTab := tbiCancelamento;
  edtCancelamentoDOCECBergs.SetFocus;
end;

procedure TfrmVenda.rctBtnCancelamentoTap(Sender: TObject; const Point: TPointF);
begin
  tthread.CreateAnonymousThread(
    procedure
    begin
      TFuncoesComuns.StartButtonAnimation(rctBtnCancelamento, lblBtnCancelamento, arcBtnCancelamento, fanBtnCancelamento);
      tthread.Synchronize(nil,
        procedure
        begin
          tthread.Synchronize(nil,
            procedure
            begin
              if ((edtCancelamentoValorTransacao.Text.Trim() = '') or (edtCancelamentoDOCECBergs.Text.Trim() = '')) then
                ShowMessage('Dados digitados inválidos!')
              else
              begin
                FTransacaoSitef.FormaPagamento := fpCancelamento;
                FTransacaoSitef.ValorTransacao := StringReplace(edtCancelamentoValorTransacao.Text, '.', '', [rfReplaceAll]);
                FTransacaoSitef.ValorDebitos := StringReplace(edtCancelamentoValorTransacao.Text, '.', '', [rfReplaceAll]);
                ExecutaTransacao('NMO12345', '', '', '1234567');
              end;
            end);
        end);
      TFuncoesComuns.StopButtonAnimation(rctBtnCancelamento, lblBtnCancelamento, arcBtnCancelamento, fanBtnCancelamento);
    end).Start;
end;

procedure TfrmVenda.ResultadoSitef;
var
  lValor: string;
begin
  tthread.CreateAnonymousThread(
    procedure
    begin
      if FTransacaoSitef.CodigoResposta <> '00' then // não autorizada
      begin
        if FTransacaoSitef.FormaPagamento <> fpCancelamento then
        begin
          TLog.I('Transação não autorizada');
          // FTransacaoSitef.CodigoResposta;
          // FTransacaoSitef.MensagemResposta;
          // FTransacaoSitef.NumeroSeriePinpad;
        end;
        imgTransacaoSucesso.Visible := false;
        imgTransacaoNegada.Visible := true;
        rctResultadoTransacaoComprovante.Visible := false;
      end
      else
      begin
        if FTransacaoSitef.FormaPagamento = fpCancelamento then
        begin
          TLog.I('Cancelamento autorizado');
          // FTransacaoSitef.CodigoResposta;
          // FTransacaoSitef.NumeroBinCartao;
          // FTransacaoSitef.NumeroEmbosoCartao;
          // FTransacaoSitef.CodigoAdquirente;
          // FTransacaoSitef.CodigoBandeira;
          // FTransacaoSitef.CodigoAutorizacao;
          // FTransacaoSitef.NsuHost;
          // FTransacaoSitef.NsuSitef;
          // FTransacaoSitef.TipoCartao;
          // FTransacaoSitef.DataHoraSITEF;
          // FTransacaoSitef.NumeroSeriePinpad;
        end
        else
        begin // transação autorizada
          TLog.I('Transação autorizada');
          // FTransacaoSitef.CodigoResposta;
          // FTransacaoSitef.NumeroBinCartao;
          // FTransacaoSitef.NumeroEmbosoCartao;
          // FTransacaoSitef.CodigoAdquirente;
          // FTransacaoSitef.CodigoBandeira;
          // FTransacaoSitef.CodigoAutorizacao;
          // FTransacaoSitef.NsuHost;
          // FTransacaoSitef.NsuSitef;
          // FTransacaoSitef.TipoCartao;
          // FTransacaoSitef.DataHoraSITEF;
          // FTransacaoSitef.NumeroSeriePinpad;
        end;
        imgTransacaoSucesso.Visible := true;
        imgTransacaoNegada.Visible := false;
        rctResultadoTransacaoComprovante.Visible := true;
      end;

      TLog.I('Montando o cupom');

      tthread.Synchronize(nil,
        procedure
        begin
          HabilitaDesabilitaLytVoltar(false);
          tbcTransacao.ActiveTab := tbiResultadoSitef;

          case FTransacaoSitef.FormaPagamento of
            fpCDB_DEBITO:
              lblResultadoTransacaoFormaPagamentoValor.Text := 'Débito';
            fpCCR_CREDITO_A_VISTA:
              lblResultadoTransacaoFormaPagamentoValor.Text := 'Crédito a vista';
            fpCancelamento:
              lblResultadoTransacaoFormaPagamentoValor.Text := 'Cancelamento';
          end;
          lblMensagemTransacao.Text := FTransacaoSitef.MensagemResposta;
          lblResultadoTransacaoValorTotalValor.Text := TFuncoesComuns.FormataValor(FTransacaoSitef.ValorTransacao);
          lblResultadoTransacaoDataValor.Text := FormatDateTime('dd/MM/yyyy HH:mm:ss', now);
        end);

    end).Start;
end;

procedure TfrmVenda.RotinaColeta(comando: Integer);
var
  lBuffer: string;
  lValor: string;
begin
  lBuffer := getBuffer;

  TLog.I('Rotina de coleta: comando=' + comando.ToString() + ', buffer=' + lBuffer);

  case comando of
    CMD_NUMERIO_PARCELAS:
      begin
        setBuffer(FTransacaoSitef.NumeroParcelas);
      end;
    CMD_GET_MENU_OPTION:
      begin
        if FSelecionaFormaPagamento then
        begin
          if StrToIntDef(FTransacaoSitef.NumeroParcelas, 0) > 1 then
            setBuffer('2')
          else
            setBuffer('1');
        end;
      end;

    CMD_OBTEM_VALOR:
      begin
        lValor := edtCancelamentoValorTransacao.Text;
        lValor := StringReplace(lValor, '.', '', [rfReplaceAll]);
        lValor := StringReplace(lValor, ',', '', [rfReplaceAll]);
        setBuffer(lValor);
      end;
    CMD_MENSAGEM_OPERADOR, CMD_MENSAGEM_CLIENTE, CMD_MENSAGEM:
      begin
        if (getBuffer = TXT_SITEF_CONECTADO) then
          FSitefConectado := true;

        StatusSitef(FSitefConectado, lBuffer);
      end;

    CMD_TITULO_MENU, CMD_EXIBE_CABECALHO:
      begin
        FSelecionaFormaPagamento := (lBuffer = 'Selecione a forma de pagamento');
      end;

    CMD_REMOVE_MENSAGEM_OPERADOR, CMD_REMOVE_MENSAGEM_CLIENTE, CMD_REMOVE_MENSAGEM, CMD_REMOVE_TITULO_MENU, CMD_REMOVE_CABECALHO:
      begin
        StatusSitef(FSitefConectado, EmptyStr);
      end;

    19, CMD_CONFIRMA_CANCELA:
      setBuffer('0');
    CMD_OBTEM_CAMPO:
      begin
        if (FTransacaoSitef.FormaPagamento = fpCancelamento) then
        begin
          if lBuffer = 'Data da transação (DDMMAAAA)' then
          begin
            lValor := edtDataCancelamento.Text;
            lValor := StringReplace(lValor, '/', '', [rfReplaceAll]);
            lValor := StringReplace(lValor, '-', '', [rfReplaceAll]);
            setBuffer(lValor);
          end
          else if lBuffer = 'Forneça o número do documento a ser cancelado' then
          begin
            lValor := FTransacaoSitef.NsuSitef;
            lValor := StringReplace(lValor, '.', '', [rfReplaceAll]);
            lValor := StringReplace(lValor, ',', '', [rfReplaceAll]);
            setBuffer(lValor);
          end;
        end;

        if lBuffer = 'Forneça o número de parcelas' then
          setBuffer(FTransacaoSitef.NumeroParcelas);

      end;
    CMD_PERGUNTA_SE_INTERROMPE:
      begin
        rodando := false;
      end;
    CMD_OBTEM_QUALQUER_TECLA:
      begin
        StatusSitef(FSitefConectado, lBuffer, true);

        if (lBuffer = 'Excede Parcelas') then
        begin
          FExcedeParcelas := true;
          setContinuaNavegacao(-1);
        end;

        if (lBuffer = 'Valor Invalido') then
        begin
          FExcedeParcelas := true;
          setContinuaNavegacao(-1);
        end;
      end;
  end;
  espera := false;
end;

procedure TfrmVenda.RotinaResultado(campo: Integer);
var
  lBuffer: string;
begin
  lBuffer := getBuffer;

  TLog.I('Rotina de resultado: campo=' + campo.ToString + ', buffer=' + lBuffer);

  case campo of
    CAMPO_COMPROVANTE_CLIENTE, CAMPO_COMPROVANTE_ESTAB:
      begin
        addStrRes(lBuffer);
      end;
    CAMPO_SERIE_PINPAD:
      begin
        FTransacaoSitef.NumeroSeriePinpad := lBuffer;
      end;
    CAMPO_NSU_SITEF:
      FTransacaoSitef.NsuSitef := lBuffer;
    CAMPO_NSU_HOST:
      FTransacaoSitef.NsuHost := lBuffer;
    CAMPO_CODIGO_AUTORIZACAO:
      FTransacaoSitef.CodigoAutorizacao := lBuffer;
    CAMPO_BIN:
      FTransacaoSitef.NumeroBinCartao := lBuffer;
    CAMPO_EMBOSO:
      FTransacaoSitef.NumeroEmbosoCartao := lBuffer;
    CAMPO_CODIGO_REDE:
      FTransacaoSitef.CodigoAdquirente := lBuffer;
    CAMPO_CODIGO_BANDEIRA:
      FTransacaoSitef.CodigoBandeira := lBuffer;
    CAMPO_TIPO_CARTAO_LIDO:
      FTransacaoSitef.TipoCartao := lBuffer;
    CAMPO_DATA_FISCAL:
      FTransacaoSitef.DataFiscal := lBuffer;
    CAMPO_NUMERO_CUPOM:
      FTransacaoSitef.NumeroCupom := lBuffer;
    CAMPO_DATA_HORA_SITEF:
      FTransacaoSitef.DataHoraSITEF := lBuffer;
    CAMPO_CODIGO_RESPOSTA_AUTORIZADOR:
      FTransacaoSitef.CodigoResposta := lBuffer;
    CAMPO_NOME_DA_INSTITUICAO:
      FTransacaoSitef.NomeDaInstituicao := lBuffer;
    CAMPO_NOME_TITULAR:
      FTransacaoSitef.Nome_Titular := lBuffer;
  end;
  espera := false;
end;

procedure TfrmVenda.SelecionaTbiValor;
begin
  tthread.Synchronize(nil,
    procedure
    begin
      HabilitaDesabilitaLytVoltar;
      TFuncoesComuns.StopButtonAnimation(rctConfirmaValor, lblConfirmaValor, arcConfirmaValor, aniConfirmaValor);
      ConfiguraCorLabelColetaDeValores();
      tbcTransacao.ActiveTab := tbiValor;
    end);
end;

procedure TfrmVenda.StatusSitef(AConectado: boolean; AMensagem: string = ''; AEsperaTecla: boolean = false);
begin
  tthread.Synchronize(nil,
    procedure
    begin
      if (tbcTransacao.ActiveTab <> tbiChamadaSitef) then
      begin
        imgSitefConectado.Visible := false;
        imgConectandoSitef.Visible := true;

{$IFDEF DEBUG}
        lblMensagemSITEF.Text := '45.237.81.1:4092'; {$ENDIF}
{$IFDEF RELEASE}
        lblMensagemSITEF.Text := 'Aguardando SITEF';
{$ENDIF}
        HabilitaDesabilitaLytVoltar(false);
        tbcTransacao.ActiveTab := tbiChamadaSitef;
      end;

      if ((AMensagem = TXT_SITEF_CONECTADO) or (AMensagem = TXT_SITEF_INSIRAOUPASSEOCARTAO)) then
      begin
        imgSitefConectado.Visible := true;
        imgConectandoSitef.Visible := false;
      end;

      if (lblMensagemSITEF.Text = TXT_SITEF_CONECTANDO) then
      begin
        imgSitefConectado.Visible := false;
        imgConectandoSitef.Visible := true;
      end;

      if lblMensagemSITEF.Text <> AMensagem then
      begin
        if Trim(AMensagem) <> EmptyStr then
          if lblMensagemSITEF.Text <> AMensagem then
          begin
            lblMensagemSITEF.Text := AMensagem;
          end
      end;
    end);
end;

procedure TfrmVenda.tbcTransacaoChange(Sender: TObject);
begin
  if tbcTransacao.ActiveTab = tbiFormaPagamento then
    FValorTransacao := '0';
  FormataValor();
end;

procedure TfrmVenda.btnFormaPagamentoCreditoAvistaTAP(Sender: TObject; const Point: TPointF);
begin
  TFuncoesComuns.StartButtonAnimation(rctFormaPagamentoCreditoAVista, lblFormaPagamentoCreditoAVista, arcFormaPagamentoCreditoAVista,
    aniFormaPagamentoCreditoAVista);
  tthread.CreateAnonymousThread(
    procedure
    begin
      tthread.Synchronize(nil,
        procedure
        begin
          TLog.I('Selecionado credito à vista');
          TFuncoesComuns.StopButtonAnimation(rctFormaPagamentoCreditoAVista, lblFormaPagamentoCreditoAVista, arcFormaPagamentoCreditoAVista,
            aniFormaPagamentoCreditoAVista);
          FTransacaoSitef.FormaPagamento := fpCCR_CREDITO_A_VISTA;
          SelecionaTbiValor();
        end);
    end).Start;
end;

procedure TfrmVenda.btnFormaPagamentoDebitoTAP(Sender: TObject; const Point: TPointF);
begin
  TFuncoesComuns.StartButtonAnimation(rctFormaPagamentoDebito, lblFormaPagamentoDebito, arcFormaPagamentoDebito, aniFormaPagamentoDebito);

  tthread.CreateAnonymousThread(
    procedure
    begin
      tthread.Synchronize(nil,
        procedure
        begin
          TLog.I('Selecionado debito');
          TFuncoesComuns.StopButtonAnimation(rctFormaPagamentoDebito, lblFormaPagamentoDebito, arcFormaPagamentoDebito, aniFormaPagamentoDebito);
          FTransacaoSitef.FormaPagamento := fpCDB_DEBITO;
          SelecionaTbiValor();
        end);
    end).Start;
end;

procedure TfrmVenda.btnSelecionarTipoFormaPagamentoTAP(Sender: TObject; const Point: TPointF);
var
  lFazTrans: boolean;
  lValorMinimo, lValorMaximo, lValorTransacao: Extended;
  lMensagem: string;
begin
  TFuncoesComuns.StartButtonAnimation(rctConfirmaValor, lblConfirmaValor, arcConfirmaValor, aniConfirmaValor);

  tthread.CreateAnonymousThread(
    procedure
    begin
      tthread.Synchronize(nil,
        procedure
        begin
          lValorTransacao := StrToFloat(FValorTransacao);

          if lValorTransacao > 0 then
          begin
            lValorTransacao := lValorTransacao / 100;
            lFazTrans := true;
            HabilitaDesabilitaLytVoltar;

            FTransacaoSitef.ValorTransacao := FormatFloat('###########,##0.00', StrToFloat(FValorTransacao) / 100);
            FTransacaoSitef.ValorDebitos := FTransacaoSitef.ValorTransacao;
            FTransacaoSitef.NumeroParcelas := '1';

            StatusSitef(false);

            case FTransacaoSitef.FormaPagamento of
              fpCDB_DEBITO:
                begin
                  TFuncoesComuns.StopButtonAnimation(rctConfirmaValor, lblConfirmaValor, arcConfirmaValor, aniConfirmaValor);
                  ExecutaTransacao('NMO12345', '', '', '000000');
                end;
              fpCCR_CREDITO_A_VISTA:
                begin
                  TFuncoesComuns.StopButtonAnimation(rctConfirmaValor, lblConfirmaValor, arcConfirmaValor, aniConfirmaValor);
                  ExecutaTransacao('NMO12345', '', '', '00000');
                end;
            end;
          end
          else
          begin
            TFuncoesComuns.StopButtonAnimation(rctConfirmaValor, lblConfirmaValor, arcConfirmaValor, aniConfirmaValor);
            ShowMessage('Valor Invalido!!!');
          end;
        end);
    end).Start;
end;

procedure TfrmVenda.btnTecladoNumericoBackSpaceTAP(Sender: TObject; const Point: TPointF);
begin
  if FValorTransacao.Length > 1 then
  begin
    FValorTransacao := FValorTransacao.Substring(0, FValorTransacao.Length - 1);
    FormataValor();
  end;
end;

procedure TfrmVenda.btnTecladoNumericoLimpaTAP(Sender: TObject; const Point: TPointF);
begin
  FValorTransacao := '0';
  FormataValor();
end;

procedure TfrmVenda.btnTecladoNumericoTAP(Sender: TObject; const Point: TPointF);
begin
  if (FValorTransacao.Length < 9) then
    lblValorDaTransacao.Font.Size := 50
  else
    lblValorDaTransacao.Font.Size := 48;

  FValorTransacao := FValorTransacao + TRectangle(Sender).Tag.ToString();
  FormataValor();
end;

procedure TfrmVenda.btnVoltarTap(Sender: TObject; const Point: TPointF);
begin
  if (tbcTransacao.ActiveTab = tbiValor) or (tbcTransacao.ActiveTab = tbiCancelamento) then
  begin
    tbcTransacao.ActiveTab := tbiFormaPagamento;
    HabilitaDesabilitaLytVoltar(false);
  end;
end;

procedure TfrmVenda.CalculaParcelas();
begin
end;

procedure TfrmVenda.ConfiguraCorLabelColetaDeValores;
begin

  HabilitaDesabilitaLytVoltar;

  case FTransacaoSitef.FormaPagamento of
    fpCDB_DEBITO:
      begin
        lblTituloFormaPagamento.Text := lblFormaPagamentoDebito.Text;
        lblTituloFormaPagamento.FontColor := rctFormaPagamentoDebito.Fill.Color;
      end;
    fpCCR_CREDITO_A_VISTA:
      begin
        lblTituloFormaPagamento.Text := lblFormaPagamentoCreditoAVista.Text;
        lblTituloFormaPagamento.FontColor := rctFormaPagamentoCreditoAVista.Fill.Color;
      end;
  end;
end;

procedure TfrmVenda.Comprovante;
begin
  tthread.Synchronize(nil,
    procedure
    begin
      lblCupomNomeLoja.Text := 'Minha loja';
      lblCupomCNPJ.Text := '00000000000000';
      lblCupomCodigoRede.Text := TFuncoesComuns.NomeRede(StrToIntDef(FTransacaoSitef.CodigoRedeAutorizadora, 0));
      lblCupomDados.Text := FormatDateTime('DD/mm/YYYY HH:MM', now) + ' DOC:' + FTransacaoSitef.NsuHost; // FTransacaoSitef.CodigoAutorizacao;
      lblCupomDadosCartao.Text := FTransacaoSitef.NomeDaInstituicao.PadRight(20) + FTransacaoSitef.NumeroEmbosoCartao.PadLeft(16, '*');
      lblCupomFormaPagamento.Text := lblResultadoTransacaoFormaPagamentoValor.Text;
      lblCupomValor.Text := TFuncoesComuns.FormataValor(FTransacaoSitef.ValorTransacao);
      tbcTransacao.ActiveTab := tbiCupom;

    end);
end;

procedure TfrmVenda.ConfiguraBotoes;
begin
  rctFormaPagamentoDebito.Visible := true;
  rctFormaPagamentoCreditoAVista.Visible := true;
end;

procedure TfrmVenda.DadosDispositvo;
begin
  lblSerialMPOS.Text := 'SERIE: ';
  lblManufatura.Text := '';
  lblAndroidVersion.Text := 'Android: ';
  lblVersaoAPP.Text := 'App: ' + TFuncoesComuns.versaoapp;
end;

procedure TfrmVenda.ExecutaTransacao(terminal, operador, restricoes, DOC: string);
var
  hora: string;
  Data: string;
  sts: Integer;
  dtm: tdatetime;
  lFuncao: Integer;
  lGerarOperacao: boolean;
  lExecutaTransacao: boolean;
  lDescricaoTransacao: string;
  lCupomFiscal: Integer;
begin
  lGerarOperacao := false;
  FExcedeParcelas := false;
  FSelecionaFormaPagamento := false;
  lExecutaTransacao := false;
  lFuncao := 0;

  case FTransacaoSitef.FormaPagamento of
    fpCDB_DEBITO:
      begin
        lFuncao := FORMAPAGAMENTO_DEBITO;
        lDescricaoTransacao := 'DEBITO';
      end;
    fpCCR_CREDITO_A_VISTA:
      begin
        lFuncao := FORMAPAGAMENTO_CREDITO;
        lDescricaoTransacao := 'CREDITO A VISTA';
      end;
    fpCancelamento:
      begin
      end;

    fpReimpressao:
      lFuncao := FORMAPAGAMENTO_REIMPRESSAO;
  end;

  TLog.I('Transacionando ' + lDescricaoTransacao);

  FValorTransacao := FTransacaoSitef.ValorTransacao;

  dtm := now;
  hora := FormatDateTime('hhmmss', dtm);
  Data := FormatDateTime('yyyyMMdd', dtm);
  FTransacaoSitef.ValorTransacao := StringReplace(FTransacaoSitef.ValorTransacao, '.', '', [rfReplaceAll]);
  FTransacaoSitef.ValorTransacao := StringReplace(FTransacaoSitef.ValorTransacao, ',', '', [rfReplaceAll]);

  FTransacaoSitef.DOC := DOC;
  restricoes := '';

  TLog.I('iniciaFuncaoSiTefInterativo( funcao=' + lFuncao.ToString + ', valor=' + FTransacaoSitef.ValorTransacao + ',cumpom=' + lCupomFiscal.ToString
    + ',data=' + Data + ',hora=' + hora + ',terminal=' + terminal + ',restrições=' + restricoes + ')');

  sts := iniciaFuncaoSiTefInterativo(lFuncao, FTransacaoSitef.ValorTransacao, lCupomFiscal.ToString, Data, hora, terminal, restricoes);
  TLog.I('iniciaFuncaoSiTefInterativo sts=' + sts.ToString);

  if sts = 10000 then
  begin
    tthread.CreateAnonymousThread(
      procedure
      begin
        tthread.Current.FreeOnTerminate := true;

        rodando := true;
        repeat
          sts := continuaFuncaoSiTefInterativo;
          TLog.I('continuaFuncaoSiTefInterativo sts=' + sts.ToString);

          if (sts = 10000) then
          begin
            proximoComando := getProximoComando;
            espera := true;
            handleMessage(proximoComando);
          end
          else if sts < 1 then
            rodando := false;
        until not(rodando or (sts = 10000));

        if sts = 0 then
        begin
          rodando := true;
          // confirma, documento, data, hora, ''

          sts := finalizaTransacaoSiTefInterativoEx(1, lCupomFiscal.ToString, Data, hora, '');
          TLog.I('finalizaTransacaoSiTefInterativoEx sts=' + sts.ToString + ', cupom=' + lCupomFiscal.ToString + ', data=' + Data + ', hora=' + hora);

          if sts = 10000 then
            repeat
              sts := continuaFuncaoSiTefInterativo;
              TLog.I('continuaFuncaoSiTefInterativo sts=' + sts.ToString);

              if sts = 10000 then
              begin
                proximoComando := getProximoComando;
                espera := true;
                handleMessage(proximoComando);
              end
              else
                rodando := false;
            until not(rodando or (sts = 10000));

        end;

        FSitefConectado := false;

        if (sts <> 0) then
        begin
          if FExcedeParcelas then
            FTransacaoSitef.CodigoResposta := '-28'
          else
            FTransacaoSitef.CodigoResposta := sts.ToString();
        end;

        ResultadoSitef();
        tthread.Current.Terminate;

      end).Start;
  end;
  tbcTransacao.ActiveTab := tbiFormaPagamento;
end;

end.
