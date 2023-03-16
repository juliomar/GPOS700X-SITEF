program GPOS700X;

uses
  System.StartUpCopy,
  FMX.Forms,
  apoio.clisitef in 'apoio.clisitef.pas',
  clisitef in 'clisitef.pas',
  constants in 'constants.pas',
  uCException in 'uCException.pas',
  uCFuncoesComuns in 'uCFuncoesComuns.pas',
  uClasseBase in 'uClasseBase.pas',
  uCTransacaoSITEF in 'uCTransacaoSITEF.pas',
  ufrmLogin in 'ufrmLogin.pas' {frmLogin},
  ufrmSplash in 'ufrmSplash.pas' {frmSplash},
  ufrmVenda in 'ufrmVenda.pas' {frmVenda},
  wbt.CliSiTefI in 'wbt.CliSiTefI.pas' {$R *.res},
  uCLog in 'uCLog.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait];
  Application.CreateForm(TfrmSplash, frmSplash);
  Application.Run;

end.
