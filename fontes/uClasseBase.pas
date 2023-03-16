unit uClasseBase;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  REST.Types,
  REST.Client,
  Data.Bind.Components,
  Data.Bind.ObjectScope,
  constants,
  FMX.Types;
{$M+}

type
{$DEFINE HMLLOCAL}
{$DEFINE PRD8077}
  TResponseHttp = class
  private
    FStatusCode: integer;
    FMessage: string;
  published
    property StatusCode: integer read FStatusCode write FStatusCode;
    property Message: string read FMessage write FMessage;
  end;

  TNotifyErrorEvent = procedure(Request: TCustomRESTRequest) of object;

  TResponseError = class
  strict private
    FMessage: string;
    FStatusCode: integer;
  public
    property StatusCode: integer read FStatusCode write FStatusCode;
    property Message: string read FMessage write FMessage;
  end;

  TClasseBase = class
  strict private
    FMensagemErro: string;
    FTemErro: boolean;
    FSerieTerminal: string;
    FModeloTerminal: string;
    FStrJson: string;
    FID_equipamento: integer;
    FNotifyErrorEvent: TNotifyErrorEvent;
  published
    property MensagemErro: string read FMensagemErro;
    property TemErro: boolean read FTemErro;
    property ModeloTerminal: string read FModeloTerminal;
    property SerieTerminal: string read FSerieTerminal;

    property GetJson: string read FStrJson;
    property IdEquipamento: integer read FID_equipamento write FID_equipamento;
    property NotifyErrorEvent: TNotifyErrorEvent read FNotifyErrorEvent write FNotifyErrorEvent;

    constructor create(); virtual;

  end;

implementation

uses
  uCFuncoesComuns;

{ TClasseBase }

constructor TClasseBase.create();
var
  lModelName, lArchitecture, lOSVersion: string;
begin
  FTemErro := false;
  FMensagemErro := EmptyStr;

  TFuncoesComuns.versaoandroid(lModelName, lArchitecture, lOSVersion);
  FModeloTerminal := lModelName;
  FSerieTerminal := TFuncoesComuns.SerieDispositivo();

end;
end.
