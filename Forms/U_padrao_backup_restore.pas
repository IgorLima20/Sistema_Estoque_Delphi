unit U_padrao_backup_restore;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  FireDAC.Stan.Def, FireDAC.VCLUI.Wait, FireDAC.Phys.IBWrapper,
  FireDAC.Phys.IBBase, FireDAC.Stan.Intf, FireDAC.Phys;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    ed_origem: TEdit;
    ed_destino: TEdit;
    bt_origem: TBitBtn;
    bt_destino: TBitBtn;
    bt_backup: TBitBtn;
    bt_sair: TBitBtn;
    status: TMemo;
    OpenDialog1: TOpenDialog;
    restore: TFDIBRestore;
    backup: TFDIBBackup;
    procedure bt_origemClick(Sender: TObject);
    procedure bt_destinoClick(Sender: TObject);
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
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.backupError(ASender, AInitiator: TObject;
  var AException: Exception);
begin
  status.Lines.Add('FALHA!!');
  status.Lines.Add(AException.Message);
end;

procedure TForm1.backupProgress(ASender: TFDPhysDriverService;
  const AMessage: string);
begin
  status.Lines.Add('TUDO CERTO');
  status.Lines.Add(AMessage);
end;

procedure TForm1.bt_destinoClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    ed_destino.Text := OpenDialog1.FileName;
  end
  else
    Abort;
end;

procedure TForm1.bt_origemClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    ed_origem.Text := OpenDialog1.FileName;
  end
  else
    Abort;
end;

procedure TForm1.bt_sairClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.restoreError(ASender, AInitiator: TObject;
  var AException: Exception);
begin
  status.Lines.Add('FALHA!!');
  status.Lines.Add(AException.Message);
end;

procedure TForm1.restoreProgress(ASender: TFDPhysDriverService;
  const AMessage: string);
begin
   status.Lines.Add('TUDO CERTO');
  status.Lines.Add(AMessage);
end;

end.
