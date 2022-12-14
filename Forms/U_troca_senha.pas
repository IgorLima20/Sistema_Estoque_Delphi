unit U_troca_senha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrm_Troca_Senha = class(TForm)
    bvl1: TBevel;
    btn_Cancelar: TBitBtn;
    bt_Trocar_Senha: TBitBtn;
    edt_Nome: TEdit;
    edt_Senha: TEdit;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    edt_confirma_senha: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edt_nova_senha: TEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btn_CancelarClick(Sender: TObject);
    procedure bt_Trocar_SenhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Troca_Senha: TFrm_Troca_Senha;

implementation

{$R *.dfm}

uses U_DM, U_login;

procedure TFrm_Troca_Senha.btn_CancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Troca_Senha.bt_Trocar_SenhaClick(Sender: TObject);
begin
  if edt_Nome.Text = '' then
  begin
    Application.MessageBox('O campo nome n?o pode ser vazio.', 'Aten??o', MB_OK+MB_ICONINFORMATION);
    edt_Nome.SetFocus;
    Abort;
  end
  else
  if edt_nova_senha.Text = '' then
  begin
    Application.MessageBox('O campo de nova senha n?o pode ser vazio.', 'Aten??o', MB_OK+MB_ICONINFORMATION);
    edt_nova_senha.SetFocus;
    Abort;
  end
  else
  if edt_confirma_senha.Text = '' then
  begin
    Application.MessageBox('O campo de confirma??o senha n?o pode ser vazio.', 'Aten??o', MB_OK+MB_ICONINFORMATION);
    edt_confirma_senha.SetFocus;
    Abort;
  end
  else
  if edt_confirma_senha.Text <> edt_nova_senha.Text then
  begin
    Application.MessageBox('As senhas s?o diferentes!!', 'Aten??o', MB_OK+MB_ICONINFORMATION);
    edt_confirma_senha.SetFocus;
    Abort;
  end;

  DM.Q_Login.Close;
  DM.Q_Login.SQL.Add('');
  DM.Q_Login.SQL.Clear;
  DM.Q_Login.Params.Clear;
  DM.Q_Login.SQL.Add('SELECT * FROM USUARIO');
  DM.Q_Login.SQL.Add('WHERE NOME = :PNOME AND SENHA = :PSENHA');
  DM.Q_Login.ParamByName('PNOME').AsString := edt_Nome.Text;
  DM.Q_Login.ParamByName('PSENHA').AsString := edt_Senha.Text;
  DM.Q_Login.Open;

  if DM.Q_Login.RecordCount > 0 then
  begin
    DM.Q_Login.Edit;
    DM.Q_Login.FieldByName('senha').AsString := edt_confirma_senha.Text;
    DM.Q_Login.Refresh;
    Application.MessageBox('Senha atualizada com sucesso', 'Aten??o', MB_OK+MB_ICONINFORMATION);
    Frm_Troca_Senha.Close;
    Frm_Login.edt_Nome.SetFocus;
  end
  else
    Application.MessageBox('Nome ou senha incorretos, verifique', 'Aten??o', MB_OK+MB_ICONINFORMATION);
    edt_Nome.SetFocus;
end;

procedure TFrm_Troca_Senha.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //faz a fun??o da tecla tab
  if Key=#13 then
  begin
    Key:= #0;
    Perform(WM_NEXTDLGCTL, 0,0 );
  end;
end;

end.
