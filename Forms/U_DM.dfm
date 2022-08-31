object DM: TDM
  OldCreateOrder = False
  Height = 295
  Width = 476
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=D:\Curso\Projetos\Estoque\EXE\BANCO\ESTOQUE.FDB'
      'User_Name=SYSDBA'
      'Password=123456'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 80
    Top = 112
  end
  object Transacao: TFDTransaction
    Connection = Conexao
    Left = 160
    Top = 112
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Windows\System32\FBCLIENT.DLL'
    Left = 256
    Top = 112
  end
  object Q_Login: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      
        'SELECT ID_USUARIO, NOME, SENHA, TIPO FROM USUARIO ORDER BY ID_US' +
        'UARIO')
    Left = 72
    Top = 200
    object Q_LoginID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_LoginNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_LoginSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object Q_LoginTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
  end
  object Ds_Login: TDataSource
    Left = 160
    Top = 200
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 256
    Top = 192
  end
  object FDMoniRemoteClientLink1: TFDMoniRemoteClientLink
    Port = 3050
    Left = 384
    Top = 144
  end
end
