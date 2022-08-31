unit U_padrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrm_Padrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bt_Novo: TBitBtn;
    bt_Deletar: TBitBtn;
    bt_Editar: TBitBtn;
    bt_Gravar: TBitBtn;
    bt_Cancelar: TBitBtn;
    bt_Atualizar: TBitBtn;
    DBNavigator1: TDBNavigator;
    bt_Pesquisar: TBitBtn;
    Q_padrao: TFDQuery;
    ds_padrao: TDataSource;
    bt_Sair: TBitBtn;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bt_NovoClick(Sender: TObject);
    procedure bt_DeletarClick(Sender: TObject);
    procedure bt_EditarClick(Sender: TObject);
    procedure bt_GravarClick(Sender: TObject);
    procedure bt_CancelarClick(Sender: TObject);
    procedure bt_AtualizarClick(Sender: TObject);
    procedure TrataBotoes();
    procedure bt_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Padrao: TFrm_Padrao;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_Padrao.bt_AtualizarClick(Sender: TObject);
begin
  try
    Q_padrao.Post;
    MessageDlg('Registro atualizado com sucesso!', mtInformation, [mbOK], 0);
    TrataBotoes;
  finally
    Application.MessageBox('Erro na grava��o dos dados, verifique!', 'Aten��o', MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TFrm_Padrao.bt_CancelarClick(Sender: TObject);
begin
  TrataBotoes;
  Q_padrao.Cancel;
  MessageDlg('A��o cancelado pelo usu�rio!', mtInformation, [mbOK], 0);
end;

procedure TFrm_Padrao.bt_DeletarClick(Sender: TObject);
begin
  TrataBotoes;
  if MessageDlg('Deseja deletar este registro?', mtConfirmation, [mbOK, mbNo], 0) = mrOk then
  begin
    Q_padrao.Delete;
    MessageDlg('Registro deletado com sucesso!', mtInformation, [mbOK], 0);
    TrataBotoes;
  end
  else
    TrataBotoes;
    Abort;
end;

procedure TFrm_Padrao.bt_EditarClick(Sender: TObject);
begin
  TrataBotoes;
  if MessageDlg('Deseja editar este registro?', mtConfirmation, [mbOK, mbNo], 0) = mrOk then
  begin
    Q_padrao.Edit;
  end
  else
    TrataBotoes;
    Abort;
end;

procedure TFrm_Padrao.bt_GravarClick(Sender: TObject);
begin
try
  Q_padrao.Post;
  MessageDlg('Registro salvo com sucesso!', mtInformation, [mbOK], 0);
  TrataBotoes;
except
  Application.MessageBox('Erro na grava��o dos dados, verifique!', 'Aten��o', MB_OK+MB_ICONINFORMATION);
end;
end;

procedure TFrm_Padrao.bt_NovoClick(Sender: TObject);
begin
  Q_padrao.Open;
  TrataBotoes;
  Q_padrao.Append;
end;

procedure TFrm_Padrao.bt_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Padrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Q_padrao.Close;
end;

procedure TFrm_Padrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  //faz a fun��o da tecla tab
  if Key=#13 then
  begin
    Key:= #0;
    Perform(WM_NEXTDLGCTL, 0,0 );
  end;

end;

procedure TFrm_Padrao.TrataBotoes;
begin
  bt_Novo.Enabled := not bt_Novo.Enabled;
  bt_Deletar.Enabled := not bt_Deletar.Enabled;
  bt_Editar.Enabled := not bt_Editar.Enabled;
  bt_Gravar.Enabled := not bt_Gravar.Enabled;
  bt_Atualizar.Enabled := not bt_Atualizar.Enabled;
end;

end.
