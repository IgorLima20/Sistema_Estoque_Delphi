unit U_restore;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_padrao_backup, FireDAC.Stan.Def,
  FireDAC.VCLUI.Wait, FireDAC.Phys.IBWrapper, FireDAC.Phys.IBBase,
  FireDAC.Stan.Intf, FireDAC.Phys, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrm_Restore = class(TFrm_padrao_backup)
    procedure bt_backupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Restore: TFrm_Restore;

implementation

{$R *.dfm}

uses U_DM;

procedure TFrm_Restore.bt_backupClick(Sender: TObject);
begin
  try
    restore.DriverLink := DM.FDPhysFBDriverLink1;
    restore.UserName := 'SYSDBA';
    restore.Password := '123456';
    restore.Host := 'servidor';
    restore.Protocol := ipLocal;
    restore.Database := ed_origem.Text;
    restore.BackupFiles.Clear;
    restore.BackupFiles.Add(ed_origem.Text);
    restore.Restore;
    Application.MessageBox('Restaura��o realizada com sucesso!', 'Aten��o', MB_OK+MB_ICONINFORMATION);
  except
    Application.MessageBox('Erro ao Restaurar!', 'Aten��o', MB_OK+MB_ICONINFORMATION);
  end;
end;

end.
