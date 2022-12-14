unit U_backup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao_backup, FireDAC.Stan.Def,
  FireDAC.VCLUI.Wait, FireDAC.Phys.IBWrapper, FireDAC.Phys.IBBase,
  FireDAC.Stan.Intf, FireDAC.Phys, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrm_backup = class(TFrm_padrao_backup)
    procedure bt_backupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_backup: TFrm_backup;

implementation

{$R *.dfm}

uses U_DM;


procedure TFrm_backup.bt_backupClick(Sender: TObject);
begin
  try
    backup.DriverLink := DM.FDPhysFBDriverLink1;
    backup.UserName := 'SYSDBA';
    backup.Password := '123456';
    backup.Host := 'servidor';
    backup.Protocol := ipLocal;
    backup.Database := ed_origem.Text;
    backup.BackupFiles.Clear;
    backup.BackupFiles.Add(ed_origem.Text);
    backup.Backup;
    Application.MessageBox('Backup realizado com sucesso!', 'Aten??o', MB_OK+MB_ICONINFORMATION);
  except
    Application.MessageBox('Erro ao gerar backup!', 'Aten??o', MB_OK+MB_ICONINFORMATION);
  end;
 
end;

end.
