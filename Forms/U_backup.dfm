inherited Frm_backup: TFrm_backup
  Caption = 'BACKUP DO BANCO DE DADOS'
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited bt_backup: TBitBtn
      OnClick = bt_backupClick
    end
  end
  inherited backup: TFDIBBackup
    DriverLink = DM.FDPhysFBDriverLink1
  end
  inherited restore: TFDIBRestore
    DriverLink = DM.FDPhysFBDriverLink1
  end
end
