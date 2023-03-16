unit ufrmSplash;

interface

uses
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
  FMX.Objects,
  FMX.Ani,
  ufrmLogin,
  Androidapi.JNI.PowerManager,
  Androidapi.JNI.Os,
  Androidapi.Helpers;

type
  TfrmSplash = class(TForm)
    tmrSplash: TTimer;
    imgSplashScreen: TImage;
    procedure FormShow(Sender: TObject);
    procedure tmrSplashTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.fmx}

procedure TfrmSplash.FormShow(Sender: TObject);
begin
  Androidapi.JNI.PowerManager.AcquireWakeLock;


  tmrSplash.Interval := 3000;
  tmrSplash.Enabled := true;

  imgSplashScreen.Opacity := 0;
  imgSplashScreen.Align := TAlignLayout.None;
  imgSplashScreen.AnimateFloat('Opacity', 20, 0.8);
  imgSplashScreen.AnimateFloatDelay('Position.Y', 20, 0.3, 0.9, TAnimationType.&In, TinterpolationType.Back);
end;

procedure TfrmSplash.tmrSplashTimer(Sender: TObject);
begin
  tmrSplash.Enabled := false;

  if not Assigned(frmLogin) then
    Application.CreateForm(TfrmLogin, frmLogin);

  frmLogin.Show;
end;

end.
