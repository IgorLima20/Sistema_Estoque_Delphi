unit U_padrao_backup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Def, FireDAC.VCLUI.Wait,
  FireDAC.Phys.IBWrapper, Vcl.StdCtrls, FireDAC.Phys.IBBase, Vcl.Buttons,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Phys;

type
  TFrm_padrao_backup = class(TForm)
    backup: TFDIBBackup;
    ed_destino: TEdit;
    ed_origem: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    bt_origem: TBitBtn;
    bt_destino: TBitBtn;
    bt_backup: TBitBtn;
    bt_sair: TBitBtn;
    restore: TFDIBRestore;
    status: TMemo;
    procedure bt_destinoClick(Sender: TObject);
    procedure bt_origemClick(Sender: TObject);
    procedure bt_sairClick(Sender: TObject);
    procedure backupProgress(ASender: TFDPhysDriverService;
      const AMessage: string);
    procedure backupError(ASender, AInitiator: TObject;
      var AException: Exception);
    procedure restoreProgress(ASender: TFDPhysDriverService;
      const AMessage: string);
    procedure restoreError(ASender, AInitiator: TObject;
      var AException: Exception);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_padrao_backup: TFrm_padrao_backup;

implementation

{$R *.dfm}

procedure TFrm_padrao_backup.backupError(ASender, AInitiator: TObject;
  var AException: Exception);
begin
  status.Lines.Add('FALHA!!');
  status.Lines.Add(AException.Message);
end;

procedure TFrm_padrao_backup.backupProgress(ASender: TFDPhysDriverService;
  const AMessage: string);
begin
  status.Lines.Add('TUDO CERTO');
  status.Lines.Add(AMessage);
end;

procedure TFrm_padrao_backup.bt_destinoClick(Sender: TObject);
begin
   if OpenDialog1.Execute then
  begin
    ed_destino.Text := OpenDialog1.FileName;
  end
  else
    Abort;
end;

procedure TFrm_padrao_backup.bt_origemClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    ed_origem.Text := OpenDialog1.FileName;
  end
  else
    Abort;
end;

procedure TFrm_padrao_backup.bt_sairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_padrao_backup.restoreError(ASender, AInitiator: TObject;
  var AException: Exception);
begin
  status.Lines.Add('FALHA!!');
  status.Lines.Add(AException.Message);
end;

procedure TFrm_padrao_backup.restoreProgress(ASender: TFDPhysDriverService;
  const AMessage: string);
begin
  status.Lines.Add('TUDO CERTO');
  status.Lines.Add(AMessage);
end;

end.
