unit uCFuncoesComuns;

interface

uses
  System.Classes,
  System.SysUtils,
  Androidapi.Helpers,
  Androidapi.JNI.Os,
  Androidapi.JNI.app,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.GraphicsContentViewText,
  Posix.Unistd,
  FMX.Objects,
  FMX.Layouts,
  FMX.Ani,
  FMX.StdCtrls,
  Androidapi.Log,
  System.IOUtils,
  System.Net.HttpClient,
  Posix.Stdlib;

type
  TFuncoesComuns = class
  public
    class function FormatEditMask(aMask, aValue: String): String; static;
    class procedure StartButtonAnimation(rectButton: TRectangle; lbl: TLabel; arc: TArc; animation: TFloatAnimation);
    class procedure StopButtonAnimation(rectButton: TRectangle; lbl: TLabel; arc: TArc; animation: TFloatAnimation);

    class procedure SalvaLOG(ANomeArquivo, AConteudo: string);

    class function StrZero(ANumero, AComp: Integer; ACaracterPreencimento: char = '0'): String;
    class function SalvaArquivo(ANomeArquivo, AConteudo: string): Boolean;
    class function DeletaArquivo(ANomeArquivo: string): Boolean;
    class function CarregaArquivo(ANomeArquivo: string): string;
    class function FormataValor(AValor: string): string;
    class function NomeRede(ACodigoRede: Integer): string;
    class function versaoapp(): string;
    class function VersaoAndroid(var AModelName: string; var AArchitecture: string; var AOSVersion: string): Boolean;
    class function SerieDispositivo(): string;
    class function validarenderecoemail(AEnderecoEmail: string): Boolean;
    class function CheckConexaoComInternet(): Boolean;
    class function iif(condicao: Boolean; condicao_ok: string; condicao_nok: string): string;
  end;

implementation

{ TFuncoesComuns }
class function TFuncoesComuns.StrZero(ANumero, AComp: Integer; ACaracterPreencimento: char = '0'): String;
begin
  Result := StringOfChar(ACaracterPreencimento, AComp - Length(IntToStr(ANumero))) + IntToStr(ANumero);
end;

class function TFuncoesComuns.validarenderecoemail(AEnderecoEmail: string): Boolean;
begin
  AEnderecoEmail := Trim(UpperCase(AEnderecoEmail));
  if Pos('@', AEnderecoEmail) > 1 then
  begin
    Delete(AEnderecoEmail, 1, Pos('@', AEnderecoEmail));
    Result := (Length(AEnderecoEmail) > 0) and (Pos('.', AEnderecoEmail) > 2);
  end
  else
    Result := False;
end;

class function TFuncoesComuns.VersaoAndroid(var AModelName: string; var AArchitecture: string; var AOSVersion: string): Boolean;
begin
  try
    AModelName := JStringToString(TJBuild.JavaClass.MODEL);
    case TOSVersion.Architecture of
      arIntelX86:
        AArchitecture := 'IntelX86';
      arIntelX64:
        AArchitecture := 'IntelX64';
      arARM32:
        AArchitecture := 'ARM32';
      arARM64:
        AArchitecture := 'ARM64';
    end;
    AOSVersion := IntToStr(TOSVersion.Major) + '.' + IntToStr(TOSVersion.Minor);
    Result := true;
  except
    Result := False;
  end;
end;

class function TFuncoesComuns.versaoapp: string;
var
  lpkgInfo: JPackageInfo;
begin
  lpkgInfo := TAndroidHelper.Activity.GetPackageManager.GetpackageInfo(TAndroidHelper.Activity.getpackageName, 0);
  Result := JStringToString(lpkgInfo.versionName);
{$IFDEF DEBUG}
  Result := Result + ' debug';
{$ENDIF}
end;

class function TFuncoesComuns.SerieDispositivo(): string;
begin
  result := JStringToString(TJBuild.JavaClass.SERIAL)
end;

class function TFuncoesComuns.CarregaArquivo(ANomeArquivo: string): string;
begin
  if TFile.Exists(TPath.Combine(TPath.getdocumentspath, ANomeArquivo)) then
    Result := TFile.ReadAllText(TPath.Combine(TPath.getdocumentspath, ANomeArquivo))
  else
    Result := EmptyStr;
end;


class function TFuncoesComuns.CheckConexaoComInternet: Boolean;
var
  HttpClient: THTTPClient;
begin
  HttpClient := THTTPClient.Create;
  try
    Result := HttpClient.Head('https://google.com').StatusCode < 400;
  except
    Result := False;
  end;
  HttpClient.DisposeOF;
end;

class function TFuncoesComuns.DeletaArquivo(ANomeArquivo: string): Boolean;
begin
  try

    if not TFile.Exists(TPath.Combine(TPath.getdocumentspath, ANomeArquivo)) then
    begin
      TFile.Delete(TPath.Combine(TPath.getdocumentspath, ANomeArquivo));
      Result := true;
    end
    else
      Result := False;
  except
    Result := False;
  end;
end;

class function TFuncoesComuns.FormatEditMask(aMask, aValue: String): String;
var
  M, V: Integer;
  Texto: String;
begin
  Result := '';
  Texto := '';
  aMask := aMask.ToUpper;
  for V := 0 to aValue.Length - 1 do
    // if aValue.Chars[V] In ['0' .. '9'] Then
    if CharInSet(aValue.Chars[V], ['0' .. '9']) then
      Texto := Texto + aValue.Chars[V];
  M := 0;
  V := 0;
  while (V < Texto.Length) And (M < aMask.Length) do
  Begin
    While aMask.Chars[M] <> '#' Do
    Begin
      Result := Result + aMask.Chars[M];
      Inc(M);
    End;
    Result := Result + Texto.Chars[V];
    Inc(M);
    Inc(V);
  End;
end;

class function TFuncoesComuns.iif(condicao: Boolean; condicao_ok, condicao_nok: string): string;
begin
  if condicao then
    Result := condicao_ok
  else
    Result := condicao_nok;
end;

class function TFuncoesComuns.FormataValor(AValor: string): string;
var
  lValor: Extended;
begin

  AValor := StringReplace(AValor, '.', '', [rfReplaceAll]);
  AValor := StringReplace(AValor, ',', '', [rfReplaceAll]);
  lValor := StrToFloat(AValor);

  if lValor > 0 then
    lValor := lValor / 100;
  Result := 'R$ ' + FormatFloat('#0.,00', lValor);
end;

class function TFuncoesComuns.NomeRede(ACodigoRede: Integer): string;
begin
  case ACodigoRede of
    125:
      Result := 'Cielo';
    181:
      Result := 'GetNetLac';
    5:
      Result := '	REDE';
    207:
      Result := 'Elavon';
    21:
      Result := '	VERO';
    229:
      Result := 'FirstData/BIN';
    206:
      Result := 'Global Payments';
    186:
      Result := 'Neus';
    236:
      Result := 'Conductor';
  else
    Result := 'Indefinida';
  end;
end;

class function TFuncoesComuns.SalvaArquivo(ANomeArquivo, AConteudo: string): Boolean;
begin
  try
    TFile.WriteAllText(TPath.Combine(TPath.getdocumentspath, ANomeArquivo), AConteudo);
    Result := true;
  except
    Result := False;
  end;

end;

class procedure TFuncoesComuns.SalvaLOG(ANomeArquivo, AConteudo: string);
var
  lArq: TextFile;
begin
  Assign(lArq, TPath.Combine(TPath.getdocumentspath, ANomeArquivo));
  if TFile.Exists(TPath.Combine(TPath.getdocumentspath, ANomeArquivo)) then
    Append(lArq)
  else
    Rewrite(lArq);
  Writeln(lArq, AConteudo);
  CloseFile(lArq);
end;

class procedure TFuncoesComuns.StartButtonAnimation(rectButton: TRectangle; lbl: TLabel; arc: TArc; animation: TFloatAnimation);
begin
  arc.Visible := true;
  animation.Start;

  rectButton.Opacity := 0.99;
  rectButton.Enabled := False;
  if Assigned(lbl) then
    lbl.Visible := False;
end;

class procedure TFuncoesComuns.StopButtonAnimation(rectButton: TRectangle; lbl: TLabel; arc: TArc; animation: TFloatAnimation);
begin
  if Assigned(lbl) then
    lbl.Visible := true;

  rectButton.Opacity := 1;
  rectButton.Enabled := true;

  arc.Visible := False;
  animation.Stop;
end;

end.
