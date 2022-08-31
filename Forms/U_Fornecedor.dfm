inherited Frm_Fornecedor: TFrm_Fornecedor
  Caption = 'CADASTRO DE FORNECEDOR'
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 64
    Top = 93
    Width = 92
    Height = 13
    Caption = 'ID_FORNECEDOR'
    FocusControl = DB_ID_Fornecedor
  end
  object Label2: TLabel [1]
    Left = 176
    Top = 93
    Width = 61
    Height = 13
    Caption = 'CADASTRO'
    FocusControl = DB_Cadastro
  end
  object Label3: TLabel [2]
    Left = 64
    Top = 149
    Width = 31
    Height = 13
    Caption = 'NOME'
    FocusControl = DB_Nome
  end
  object Label4: TLabel [3]
    Left = 328
    Top = 149
    Width = 56
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 544
    Top = 149
    Width = 47
    Height = 13
    Caption = 'NUMERO'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 64
    Top = 200
    Width = 44
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 328
    Top = 195
    Width = 42
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 544
    Top = 195
    Width = 14
    Height = 13
    Caption = 'UF'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 64
    Top = 245
    Width = 20
    Height = 13
    Caption = 'CEP'
    FocusControl = DBEdit9
  end
  object Label10: TLabel [9]
    Left = 207
    Top = 245
    Width = 52
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [10]
    Left = 328
    Top = 245
    Width = 27
    Height = 13
    Caption = 'CNPJ'
    FocusControl = DBEdit11
  end
  object Label12: TLabel [11]
    Left = 64
    Top = 293
    Width = 35
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit12
  end
  inherited Panel1: TPanel
    TabOrder = 12
    inherited bt_Pesquisar: TBitBtn
      OnClick = bt_PesquisarClick
    end
  end
  inherited Panel2: TPanel
    TabOrder = 13
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DB_ID_Fornecedor: TDBEdit [14]
    Left = 64
    Top = 112
    Width = 86
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = ds_padrao
    TabOrder = 0
  end
  object DB_Cadastro: TDBEdit [15]
    Left = 176
    Top = 112
    Width = 134
    Height = 21
    DataField = 'CADASTRO'
    DataSource = ds_padrao
    Enabled = False
    TabOrder = 1
  end
  object DB_Nome: TDBEdit [16]
    Left = 64
    Top = 168
    Width = 246
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 2
  end
  object DBEdit4: TDBEdit [17]
    Left = 328
    Top = 168
    Width = 200
    Height = 21
    CharCase = ecUpperCase
    DataField = 'ENDERECO'
    DataSource = ds_padrao
    TabOrder = 3
  end
  object DBEdit5: TDBEdit [18]
    Left = 544
    Top = 168
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NUMERO'
    DataSource = ds_padrao
    TabOrder = 4
  end
  object DBEdit6: TDBEdit [19]
    Left = 64
    Top = 216
    Width = 246
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = ds_padrao
    TabOrder = 5
  end
  object DBEdit7: TDBEdit [20]
    Left = 328
    Top = 212
    Width = 200
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CIDADE'
    DataSource = ds_padrao
    TabOrder = 6
  end
  object DBEdit8: TDBEdit [21]
    Left = 544
    Top = 212
    Width = 30
    Height = 21
    CharCase = ecUpperCase
    DataField = 'UF'
    DataSource = ds_padrao
    TabOrder = 7
  end
  object DBEdit9: TDBEdit [22]
    Left = 64
    Top = 264
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CEP'
    DataSource = ds_padrao
    TabOrder = 8
  end
  object DBEdit10: TDBEdit [23]
    Left = 207
    Top = 264
    Width = 103
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TELEFONE'
    DataSource = ds_padrao
    TabOrder = 9
  end
  object DBEdit11: TDBEdit [24]
    Left = 328
    Top = 264
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CNPJ'
    DataSource = ds_padrao
    TabOrder = 10
  end
  object DBEdit12: TDBEdit [25]
    Left = 64
    Top = 312
    Width = 246
    Height = 21
    CharCase = ecUpperCase
    DataField = 'EMAIL'
    DataSource = ds_padrao
    TabOrder = 11
  end
  inherited Q_padrao: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_FORNECEDOR'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR'
    SQL.Strings = (
      'select * from fornecedor order by ID_FORNECEDOR')
    object Q_padraoID_FORNECEDOR: TFDAutoIncField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_padraoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object Q_padraoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object Q_padraoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object Q_padraoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object Q_padraoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object Q_padraoCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      EditMask = '00000\-999;0;_'
      Size = 16
    end
    object Q_padraoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      EditMask = '!\(99\)0000-00000;0;_'
      Size = 16
    end
    object Q_padraoCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '000\.000\.000\-00;0;_'
    end
    object Q_padraoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end