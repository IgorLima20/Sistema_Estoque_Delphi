unit U_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TFrm_Login = class(TForm)
    edt_Nome: TEdit;
    edt_Senha: TEdit;
    btn_Ok: TBitBtn;
    btn_Cancelar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    img1: TImage;
    bvl1: TBevel;
    bvl3: TBevel;
    StatusBar1: TStatusBar;
    btn_trocar_senha: TBitBtn;
    bvl2: TBevel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btn_OkClick(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure btn_trocar_senhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Login: TFrm_Login;
  contagem: integer;

implementation

{$R *.dfm}

uses U_Principal, U_DM, U_troca_senha, U_venda;

procedure TFrm_Login.btn_CancelarClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrm_Login.btn_OkClick(Sender: TObject);
begin
  Inc(contagem);
  DM.Q_Login.Close;
  DM.Q_Login.SQL.Add('');
  DM.Q_Login.SQL.Clear;
  DM.Q_Login.Params.Clear;
  DM.Q_Login.SQL.Add('SELECT * FROM USUARIO');
  DM.Q_Login.SQL.Add('WHERE NOME = :PNOME AND SENHA = :PSENHA');
  DM.Q_Login.ParamByName('PNOME').AsString := edt_Nome.Text;
  DM.Q_Login.ParamByName('PSENHA').AsString := edt_Senha.Text;
  DM.Q_Login.Open;

  if (DM.Q_Login.RecordCount > 0) AND (DM.Q_LoginTIPO.AsString <> 'OPERADOR CAIXA') then
  begin
    ShowMessage('Seja Bem-vindo ' + edt_Nome.Text);
    DM.Usuario := edt_Nome.Text;
    DM.tipo_Usuario := DM.Q_LoginTIPO.AsString;
    Frm_Principal := TFrm_Principal.Create(Self);
    Frm_Principal.Show;
    contagem := 0;
  end
  else
  if (DM.Q_Login.RecordCount > 0) AND (DM.Q_LoginTIPO.AsString = 'OPERADOR CAIXA') then
  begin
    ShowMessage('Seja Bem-vindo ' + edt_Nome.Text);
    DM.Usuario := edt_Nome.Text;
    DM.tipo_Usuario := DM.Q_LoginTIPO.AsString;
    Frm_venda := TFrm_venda.Create(Self);
    Frm_venda.ShowModal;
    contagem := 0;
  end
  else
    Application.MessageBox('Nome ou senha incorretos, verifique', 'Aten??o', MB_OK+MB_ICONINFORMATION);
    edt_Nome.SetFocus;

    if contagem >= 3 then
    begin
      Application.MessageBox('Voc? ultrapassou o limite de tentativas, fechando a aplica??o!', 'Aten??o', MB_OK+MB_ICONINFORMATION);
      Application.Terminate;
    end;
    StatusBar1.Panels[0].Text := ' Tentativas: ' + IntToStr(contagem) + '/3';
end;

procedure TFrm_Login.btn_trocar_senhaClick(Sender: TObject);
begin
  Frm_Troca_Senha:=TFrm_Troca_Senha.Create(Self);
  Frm_Troca_Senha.ShowModal;
  try

  finally
    Frm_Troca_Senha.Free;
    Frm_Troca_Senha:=nil;
  end;
end;

procedure TFrm_Login.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //faz a fun??o da tecla tab
  if Key=#13 then
  begin
    Key:= #0;
    Perform(WM_NEXTDLGCTL, 0,0 );
  end;
end;

procedure TFrm_Login.FormShow(Sender: TObject);
begin
  edt_Nome.SetFocus;
end;

end.
