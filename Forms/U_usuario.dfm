inherited Frm_usuarios: TFrm_usuarios
  Caption = 'CADASTRO DE USU'#193'RIOS'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 53
    Top = 93
    Width = 72
    Height = 13
    Caption = 'ID_USUARIO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 53
    Top = 152
    Width = 31
    Height = 13
    Caption = 'NOME'
    FocusControl = DB_nome
  end
  object Label3: TLabel [2]
    Left = 53
    Top = 208
    Width = 36
    Height = 13
    Caption = 'SENHA'
    FocusControl = DB_senha
  end
  object Label4: TLabel [3]
    Left = 234
    Top = 208
    Width = 27
    Height = 13
    Caption = 'TIPO'
  end
  object Label5: TLabel [4]
    Left = 155
    Top = 93
    Width = 61
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = DB_cadastro
  end
  inherited Panel1: TPanel
    TabOrder = 5
    inherited bt_Pesquisar: TBitBtn
      OnClick = bt_PesquisarClick
    end
  end
  inherited Panel2: TPanel
    TabOrder = 6
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit [7]
    Left = 53
    Top = 112
    Width = 72
    Height = 21
    DataField = 'ID_USUARIO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 0
  end
  object DB_nome: TDBEdit [8]
    Left = 53
    Top = 171
    Width = 492
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 1
  end
  object DB_senha: TDBEdit [9]
    Left = 53
    Top = 227
    Width = 150
    Height = 21
    DataField = 'SENHA'
    DataSource = ds_padrao
    PasswordChar = '*'
    TabOrder = 2
  end
  object DB_cadastro: TDBEdit [10]
    Left = 155
    Top = 112
    Width = 94
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 4
  end
  object DB_tipo: TDBComboBox [11]
    Left = 234
    Top = 227
    Width = 145
    Height = 21
    DataField = 'TIPO'
    DataSource = ds_padrao
    Items.Strings = (
      'ADMINISTRADOR'
      'APOIO'
      'OPERADOR CAIXA')
    TabOrder = 3
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_USUARIO'
    UpdateOptions.AutoIncFields = 'ID_USUARIO'
    SQL.Strings = (
      'select id_usuario, nome, senha, tipo, cadastro '
      'from usuario order by id_usuario')
    object Q_padraoID_USUARIO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object Q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_padraoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 30
    end
    object Q_padraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
