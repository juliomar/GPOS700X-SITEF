unit ufrmLogin;

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
  FMX.Ani,
  FMX.Objects,
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.Layouts,
  FMX.Edit,
  uCFuncoesComuns,
  FMX.TabControl;

type
  TfrmLogin = class(TForm)
    lytHeaderLogin: TLayout;
    imgHeader: TImage;
    StyleBook1: TStyleBook;
    tmrSenha: TTimer;
    tmrPareamentoSlides: TTimer;
    layout_campos: TLayout;
    lytSenha: TLayout;
    rctSenha: TRectangle;
    imgSenha: TImage;
    edtSenha: TEdit;
    imgVisualizarSenha: TImage;
    lblTituloLogin: TLabel;
    lytUsuário: TLayout;
    rctUsuario: TRectangle;
    Image2: TImage;
    edtUsuario: TEdit;
    lytBtnLogin: TLayout;
    rctBotaoEntrar: TRectangle;
    arcBotaoEntrar: TArc;
    aniBotaoEntrar: TFloatAnimation;
    lblBotaoEntrar: TLabel;
    lblMensagemErroLogin: TLabel;
    procedure RoundRect3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure configuralogin();
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure imgVisualizarSenhaTap(Sender: TObject; const Point: TPointF);
    procedure tmrSenhaTimer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses
  ufrmVenda;

{$R *.fmx}

procedure TfrmLogin.configuralogin();
begin
  TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize(nil,
        procedure
        begin
          lblMensagemErroLogin.Visible := false;
            edtSenha.Enabled := true;
            edtUsuario.Enabled := true;
            edtUsuario.Text := EmptyStr;
            edtSenha.Text := EmptyStr;
            edtUsuario.SetFocus;
        end);
    end).Start;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  if (TFuncoesComuns.CheckConexaoComInternet) then
    configuralogin()
  else
  begin
    ShowMessage('Verifique sua conexão com a internet!');
    Application.Terminate;
  end;
end;

procedure TfrmLogin.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  if Key = vkHardwareBack then
  begin
    Key := 0;
  end;
end;

procedure TfrmLogin.imgVisualizarSenhaTap(Sender: TObject; const Point: TPointF);
begin
  if edtSenha.Password then
  begin
    edtSenha.Password := false;
    tmrSenha.Enabled := true;
  end
  else
  begin
    edtSenha.Password := true;
    tmrSenha.Enabled := false;
  end
end;

procedure TfrmLogin.RoundRect3Click(Sender: TObject);
var
  lFrmVenda: TfrmVenda;
  lAutenticado: boolean;
begin

  TFuncoesComuns.StartButtonAnimation(rctBotaoEntrar, lblBotaoEntrar, arcBotaoEntrar, aniBotaoEntrar);

  TThread.CreateAnonymousThread(
    procedure
    begin
      TThread.Synchronize(nil,
        procedure
        begin
          lAutenticado := ( (edtUsuario.Text = 'nmo') and (edtSenha.Text = '12345678'));

          TFuncoesComuns.StopbuttonAnimation(rctBotaoEntrar, lblBotaoEntrar, arcBotaoEntrar, aniBotaoEntrar);

          if not lAutenticado then
          begin
            lblMensagemErroLogin.Text := 'Usuário ou senha invalido!';
            lblMensagemErroLogin.Visible := true;
          end
          else
          begin
            lFrmVenda := TfrmVenda.create(nil);
            lFrmVenda.lytVoltar.Visible := false;
            lFrmVenda.tbcTransacao.ActiveTab := lFrmVenda.tbiFormaPagamento;
            lFrmVenda.Show;
          end;
        end);

    end).Start;
end;

procedure TfrmLogin.tmrSenhaTimer(Sender: TObject);
begin
  tmrSenha.Enabled := false;
  edtSenha.Password := true;
end;

end.
