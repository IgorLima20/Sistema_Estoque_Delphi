inherited Frm_Restore: TFrm_Restore
  Caption = 'Frm_Restore'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Width = 178
    Caption = 'LOCAL PARA SALVA RESTAURA'#199#195'O:'
    ExplicitWidth = 178
  end
  inherited Label2: TLabel
    Width = 123
    Caption = 'LOCAL ONDE FOI SALVO:'
    ExplicitWidth = 123
  end
  inherited Panel1: TPanel
    inherited bt_backup: TBitBtn
      Caption = '&Restore'
      OnClick = bt_backupClick
    end
  end
end
