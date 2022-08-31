inherited Frm_venda: TFrm_venda
  Caption = 'Cadastro de Venda'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited bt_Pesquisar: TBitBtn
      OnClick = bt_PesquisarClick
    end
  end
  inherited Panel2: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
    inherited bt_item: TBitBtn
      OnClick = bt_itemClick
    end
    inherited bt_ok: TBitBtn
      Top = 1
      Enabled = False
      OnClick = bt_okClick
      ExplicitTop = 1
    end
    inherited bt_excluir: TBitBtn
      Top = 1
      Enabled = False
      OnClick = bt_excluirClick
      ExplicitTop = 1
    end
    inherited bt_imprimir: TBitBtn
      OnClick = bt_imprimirClick
    end
  end
  inherited Panel3: TPanel
    Height = 112
    ExplicitHeight = 112
    object Label1: TLabel
      Left = 32
      Top = 13
      Width = 56
      Height = 13
      Caption = 'ID_VENDA'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 32
      Top = 59
      Width = 64
      Height = 13
      Caption = 'ID_CLIENTE'
      FocusControl = DB_Id_cliente
    end
    object Label3: TLabel
      Left = 152
      Top = 13
      Width = 61
      Height = 13
      Caption = 'CADASTRO'
      FocusControl = DB_Cadastro
    end
    object Label4: TLabel
      Left = 309
      Top = 13
      Width = 52
      Height = 13
      Caption = 'USUARIO'
      FocusControl = DB_Usuario
    end
    object Label5: TLabel
      Left = 512
      Top = 13
      Width = 37
      Height = 13
      Caption = 'VALOR'
    end
    object Label7: TLabel
      Left = 152
      Top = 59
      Width = 44
      Height = 13
      Caption = 'CLIENTE'
    end
    object DBEdit1: TDBEdit
      Left = 32
      Top = 32
      Width = 97
      Height = 21
      DataField = 'ID_VENDA'
      DataSource = ds_padrao
      TabOrder = 0
    end
    object DB_Id_cliente: TDBEdit
      Left = 32
      Top = 78
      Width = 97
      Height = 21
      DataField = 'ID_CLIENTE'
      DataSource = ds_padrao
      TabOrder = 3
    end
    object DB_Cadastro: TDBEdit
      Left = 152
      Top = 32
      Width = 134
      Height = 21
      DataField = 'CADASTRO'
      DataSource = ds_padrao
      Enabled = False
      TabOrder = 1
    end
    object DB_Usuario: TDBEdit
      Left = 309
      Top = 32
      Width = 180
      Height = 21
      DataField = 'USUARIO'
      DataSource = ds_padrao
      Enabled = False
      TabOrder = 2
    end
    object DB_Sub: TDBEdit
      Left = 512
      Top = 32
      Width = 80
      Height = 21
      DataField = 'SUBTOTAL'
      DataSource = ds_padrao_item
      TabOrder = 4
    end
    object bt_busca_cliente: TBitBtn
      Left = 655
      Top = 76
      Width = 35
      Height = 25
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        20000000000000100000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000216530B2E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000A3F0018245C16B5316822F51F5F12380000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000001348074326601AE537702CFF376D2AFF316821E31C5E
        091B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000144B0A662B6922F83A7732FF39742FFF38712DFF376E2AFF2E68
        20C61C5500090000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000318500D8930732BFD3B7F37FF3B7C35FF3A7833FF397530FF38722EFF376F
        2BFE2B661C9F0000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000002E000B1B55
        12AA367E35FE3D863DFF3C833BFF3C8038FF3B7C36FF3A7933FF397631FF3973
        2EFF376F2BFE28661A7200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000A3F00181E5D17C73B89
        3EFF3F8D43FF3E8A40FF3D873EFF3D843BFF3C8139FF3B7D37FF3A7A34FF3A77
        32FF39742FFF356F29FA23641547000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000001145052C23671FDE3F9347FF4194
        48FF409146FF3F8E43FF3E8B41FF3E873FFF3D843CFF3C813AFF3B7E37FF3B7B
        35FF3A7832FF397530FF336F27EC215D14260000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000012480746297329EE429C4EFF429A4DFF4297
        4BFF419549FF409247FF3F8F44FF3F8C42FF388138FF27671FFF3C823AFF3C7F
        38FF3B7C36FF3A7933FF397631FF316D25D40F5F001000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000144B0A66308135F844A455FF44A153FF439E51FF429B
        4EFF42984CFF41954AFF409347FF378439FF18500EFF134508FF296A22FF3C83
        3BFF3C8039FF3B7D36FF3A7A34FF397731FF2E6C22B100550003000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000003124507881D5B17FE45A858FF46A858FF45A556FF44A254FF439F
        51FF439C4FFF42994DFF37883BEF164C0BFC134508FF134508FF134708FF3074
        2CFF3D843CFF3C813AFF3B7E37FF3A7B35FF397732FF2A6B1E85000000000000
        0000000000000000000000000000000000000000000000000000000000000033
        000A124507AA124408FE134508FF287229FF46AB5BFF46A959FF45A657FF44A3
        54FF44A052FF388C3EDD1F63122911430784134508FF134508FF134508FF154A
        0AFF367D34FF3D853DFF3C823AFF3B7F38FF3B7C35FF387730FC28671C590000
        0000000000000000000000000000000000000000000000000000000000000F3F
        0010124407D7134508FF134508FF134508FF308337FF47AC5CFF46AA5AFF45A7
        57FF368D3DCF1C5E091B0000000000000003114307AD134508FF134508FF1345
        08FF19510FFF3A843BFF3D863DFF3C833BFF3C8039FF3B7D36FF36762FF32364
        1433000000000000000000000000000000000000000000000000000000000000
        00000D410627124407EB134508FF134508FF144809FF389345FF46AD5CFF358C
        3CBE0F5A00110000000000000000000000001236000E124407CF134508FF1345
        08FF134508FF1E5B16FF3D893FFF3D873EFF3D843CFF3C8139FF3B7E37FF3375
        2CDF155F0A180000000000000000000000000000000000000000000000000000
        00000000000012430744124407F8134508FF134508FF164D0DFE2E8231AA0055
        000900000000000000000000000000000000000000000F450721124407E81345
        08FF134508FF134508FF25661FFF3E8B41FF3E883FFF3D853DFF3C823AFF3B7F
        38FF307228C10048000700000000000000000000000000000000000000000000
        0000000000000000000011450767124407FD114407E31042055C000000020000
        00000000000000000000000000000000000000000000000000001041043E1245
        07F7134508FF134508FF134608FF2D732AFF3F8C42FF3E8940FF3D863DFF3C83
        3BFF3B7F38FF2D6F249900000001000000000000000000000000000000000000
        0000000000000000000000000000124506551248000E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000001144
        0764124407FD134508FF134508FF144809FF347E34FF3F8D43FF3E8A40FF3D87
        3EFF3D843CFF3A7F37FE286D216B000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001143078F134408FE134508FF134508FF174D0CFF3A883DFF3F8E44FF3E8B
        41FF3E883FFF3D853CFF397E35F826681B420000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000003F0004124406B7134508FF134508FF134508FF1B5612FF3E8E43FF3F8F
        44FF3F8C42FF3E8940FF3D863DFF33782DE40055000900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000F3C0011134507D6134508FF134508FF134508FF21611BFF4092
        47FF409045FF3F8D43FF3A863BFB276D1C5B0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000C3F0628124507EC134508FF134508FF134508FF296F
        26FF419448FF3C8C41FC28702066000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000011430748124407F9134508FF134508FF1346
        08FF2F792EFD2874247000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000001244066F124407FE124407F51144
        07AC1148064A0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000011045064D0C3F00140000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 5
      OnClick = bt_busca_clienteClick
    end
    object DBEdit2: TDBEdit
      Left = 152
      Top = 78
      Width = 489
      Height = 21
      DataField = 'CLIENTE'
      DataSource = ds_padrao
      TabOrder = 6
    end
  end
  inherited Panel4: TPanel
    object Label13: TLabel
      Left = 360
      Top = 21
      Width = 71
      Height = 13
      Caption = 'TOTAL_ITEM'
      FocusControl = DB_total_item
    end
    object Label12: TLabel
      Left = 277
      Top = 21
      Width = 58
      Height = 13
      Caption = 'DESCONTO'
      FocusControl = DB_desconto
    end
    object Label11: TLabel
      Left = 190
      Top = 21
      Width = 56
      Height = 13
      Caption = 'VL_VENDA'
      FocusControl = DB_vl_custo
    end
    object Label10: TLabel
      Left = 112
      Top = 21
      Width = 29
      Height = 13
      Caption = 'QTDE'
      FocusControl = DB_qtde
    end
    object Label14: TLabel
      Left = 16
      Top = 21
      Width = 74
      Height = 13
      Caption = 'ID_PRODUTO'
      FocusControl = DB_id_produto
    end
    object DB_total_item: TDBEdit
      Left = 360
      Top = 40
      Width = 71
      Height = 21
      DataField = 'TOTAL_ITEM'
      DataSource = ds_padrao_item
      TabOrder = 0
    end
    object DB_desconto: TDBEdit
      Left = 277
      Top = 40
      Width = 58
      Height = 21
      DataField = 'DESCONTO'
      DataSource = ds_padrao_item
      TabOrder = 1
      OnClick = DB_descontoClick
      OnExit = DB_descontoExit
    end
    object DB_vl_custo: TDBEdit
      Left = 190
      Top = 40
      Width = 57
      Height = 21
      DataField = 'VL_VENDA'
      DataSource = ds_padrao_item
      TabOrder = 2
    end
    object DB_qtde: TDBEdit
      Left = 112
      Top = 40
      Width = 57
      Height = 21
      DataField = 'QTDE'
      DataSource = ds_padrao_item
      TabOrder = 3
      OnClick = DB_qtdeClick
      OnExit = DB_qtdeExit
    end
    object DB_id_produto: TDBEdit
      Left = 16
      Top = 40
      Width = 74
      Height = 21
      DataField = 'ID_PRODUTO'
      DataSource = ds_padrao_item
      TabOrder = 4
      OnExit = DB_id_produtoExit
    end
  end
  inherited PageControl1: TPageControl
    Top = 177
    Height = 207
    ActivePage = Item_Compra
    ExplicitTop = 177
    ExplicitHeight = 207
    inherited Item_Compra: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 740
      ExplicitHeight = 179
      inherited DBGrid1: TDBGrid
        Height = 179
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_SEQUENCIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_VENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_VENDA'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_ITEM'
            Width = 100
            Visible = True
          end>
      end
    end
    inherited Conta_Pagar: TTabSheet
      Caption = 'Contas a Recber'
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 740
      ExplicitHeight = 179
      inherited DBGrid2: TDBGrid
        Height = 179
        DataSource = ds_conta_receber
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_SEQUENCIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_VENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_PARCELA'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_VENCIMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_PAGAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JUROS'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_JUROS'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_PAGAR'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ATRASO'
            Width = 50
            Visible = True
          end>
      end
    end
  end
  inherited Q_padrao: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_VENDA'
    UpdateOptions.AutoIncFields = 'ID_VENDA'
    SQL.Strings = (
      'SELECT ID_VENDA,ID_CLIENTE,ID_FORMA_PGTO,USUARIO,VALOR,'
      'CADASTRO, PARCELA, DINHEIRO, TROCO FROM VENDA ORDER BY ID_VENDA')
    Left = 528
    Top = 416
    object Q_padraoID_VENDA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Q_padraoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      Required = True
    end
    object Q_padraoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 100
    end
    object Q_padraoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_padraoCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = Q_cliente
      LookupKeyFields = 'ID_CLIENTE'
      LookupResultField = 'NOME'
      KeyFields = 'ID_CLIENTE'
      Size = 100
      Lookup = True
    end
    object Q_padraoDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = Q_forma_pgto
      LookupKeyFields = 'ID_FORMA_PGTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_FORMA_PGTO'
      Size = 100
      Lookup = True
    end
    object Q_padraoPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
    end
    object Q_padraoDINHEIRO: TFMTBCDField
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoTROCO: TFMTBCDField
      FieldName = 'TROCO'
      Origin = 'TROCO'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
    end
  end
  inherited ds_padrao: TDataSource
    Left = 472
    Top = 416
  end
  inherited Q_padrao_item: TFDQuery
    Active = True
    IndexFieldNames = 'ID_VENDA'
    AggregatesActive = True
    MasterFields = 'ID_VENDA'
    DetailFields = 'ID_VENDA'
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT ID_SEQUENCIA, ID_VENDA, ID_PRODUTO, QTDE, VL_VENDA, '
      'DESCONTO, TOTAL_ITEM FROM ITEM_VENDA WHERE ID_VENDA = :ID_VENDA'
      'ORDER BY ID_SEQUENCIA')
    Left = 616
    Top = 416
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 8
      end>
    object Q_padrao_itemID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padrao_itemID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padrao_itemID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      Required = True
    end
    object Q_padrao_itemQTDE: TFMTBCDField
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Required = True
      OnValidate = Q_padrao_itemQTDEValidate
      Precision = 18
      Size = 2
    end
    object Q_padrao_itemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padrao_itemTOTAL_ITEM: TFMTBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = 'TOTAL_ITEM'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padrao_itemVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padrao_itemSUBTOTAL: TAggregateField
      FieldName = 'SUBTOTAL'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(TOTAL_ITEM)'
    end
  end
  inherited ds_padrao_item: TDataSource
    Left = 696
    Top = 416
  end
  object Q_cliente: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT ID_CLIENTE, NOME FROM CLIENTE ORDER BY ID_CLIENTE')
    Left = 588
    Top = 177
    object Q_clienteID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_clienteNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object Q_forma_pgto: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT ID_FORMA_PGTO, DESCRICAO FROM FORMA_PGTO'
      'ORDER BY ID_FORMA_PGTO')
    Left = 588
    Top = 241
  end
  object ds_cliente: TDataSource
    DataSet = Q_cliente
    Left = 692
    Top = 177
  end
  object ds_forma_pgto: TDataSource
    DataSet = Q_forma_pgto
    Left = 676
    Top = 233
  end
  object Q_produto: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT ID_PRODUTO, PRODUTO_DESCRICAO, ESTOQUE, ESTOQUE_MIN,'
      'VL_VENDA FROM PRODUTO ORDER BY ID_PRODUTO')
    Left = 468
    Top = 313
    object Q_produtoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_produtoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_produtoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_produtoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_produtoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object ds_produto: TDataSource
    DataSet = Q_produto
    Left = 564
    Top = 313
  end
  object Q_conta_receber: TFDQuery
    Active = True
    IndexFieldNames = 'ID_VENDA'
    MasterSource = ds_padrao
    MasterFields = 'ID_VENDA'
    DetailFields = 'ID_VENDA'
    Connection = DM.Conexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT ID_SEQUENCIA, ID_VENDA, VALOR_PARCELA, DT_VENCIMENTO,'
      'DT_PAGAMENTO, ATRASO, JUROS, VL_JUROS, TOTAL_PAGAR, STATUS '
      'FROM CONTAS_RECEBER WHERE ID_VENDA = :ID_VENDA'
      'ORDER BY ID_SEQUENCIA ')
    Left = 32
    Top = 312
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 8
      end>
    object Q_conta_receberID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_conta_receberID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_conta_receberVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_conta_receberDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      Required = True
    end
    object Q_conta_receberDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
    end
    object Q_conta_receberJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 18
      Size = 2
    end
    object Q_conta_receberVL_JUROS: TFMTBCDField
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      Precision = 18
      Size = 2
    end
    object Q_conta_receberTOTAL_PAGAR: TFMTBCDField
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      Precision = 18
      Size = 2
    end
    object Q_conta_receberSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 30
    end
    object Q_conta_receberATRASO: TIntegerField
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
    end
  end
  object ds_conta_receber: TDataSource
    DataSet = Q_conta_receber
    Left = 32
    Top = 256
  end
  object Q_empresa: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'select ID_EMPRESA,'
      '       RAZAO_SOCIAL,'
      '       N_FANTASIA,'
      '       ENDERECO,'
      '       NUMERO,'
      '       BAIRRO,'
      '       CIDADE,'
      '       UF,'
      '       CEP,'
      '       TELEFONE,'
      '       CNPJ,'
      '       EMAIL,'
      '       LOGO,'
      '       CADASTRO'
      'from empresa')
    Left = 112
    Top = 312
    object Q_empresaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_empresaRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 100
    end
    object Q_empresaN_FANTASIA: TStringField
      FieldName = 'N_FANTASIA'
      Origin = 'N_FANTASIA'
      Required = True
      Size = 100
    end
    object Q_empresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object Q_empresaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object Q_empresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object Q_empresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object Q_empresaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object Q_empresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 14
    end
    object Q_empresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 15
    end
    object Q_empresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object Q_empresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object Q_empresaLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object Q_empresaCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  object ds_empresa: TDataSource
    DataSet = Q_empresa
    Left = 136
    Top = 264
  end
  object Rel_recibo_venda: TfrxReport
    Version = '2022.2.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44767.919182094900000000
    ReportOptions.LastChange = 44781.488323715300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 200
    Top = 312
    Datasets = <
      item
        DataSet = frx_padrao
        DataSetName = 'frx_padrao'
      end
      item
        DataSet = frx_padrao_item
        DataSetName = 'frx_padrao_item'
      end
      item
        DataSet = frx_empresa
        DataSetName = 'frx_empresa'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 20.000000000000000000
      RightMargin = 20.000000000000000000
      TopMargin = 20.000000000000000000
      BottomMargin = 20.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 245.669450000000000000
        Top = 18.897650000000000000
        Width = 642.520100000000000000
        object frxDB_EmpresaN_FANTASIA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 11.338590000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'N_FANTASIA'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."N_FANTASIA"]')
        end
        object frxDB_EmpresaENDERECO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 41.574830000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."ENDERECO"]')
        end
        object frxDB_EmpresaBAIRRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 75.590600000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'BAIRRO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."BAIRRO"]')
        end
        object frxDB_EmpresaCIDADE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 105.826840000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."CIDADE"]')
        end
        object frxDB_EmpresaUF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 377.953000000000000000
          Top = 105.826840000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'UF'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."UF"]')
        end
        object frxDB_EmpresaCEP: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 139.842610000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."CEP"]')
        end
        object frxDB_EmpresaTELEFONE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 170.078850000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONE'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."TELEFONE"]')
        end
        object frxDB_EmpresaEMAIL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 200.315090000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = 'EMAIL'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."EMAIL"]')
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 109.606370000000000000
          DataField = 'LOGO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = []
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'EMPRESA:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 41.574830000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ENDERE'#199'O')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 75.590600000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'BAIRRO:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 105.826840000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CIDADE:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 139.842610000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 170.078850000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'TELEFONE:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 200.315090000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'E-MAIL:')
          ParentFont = False
        end
      end
      object Mestre: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 370.393940000000000000
        Width = 642.520100000000000000
        DataSet = frx_padrao
        DataSetName = 'frx_padrao'
        RowCount = 0
        object frxDB_Q_PadraoID_COMPRA: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_VENDA'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."ID_VENDA"]')
          ParentFont = False
        end
        object frxDB_Q_PadraoNOME: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataField = 'CLIENTE'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frx_padrao."CLIENTE"]')
          ParentFont = False
        end
        object frxDB_Q_PadraoCADASTRO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 374.173470000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'CADASTRO'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."CADASTRO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 287.244280000000000000
        Width = 642.520100000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#211'DIGO:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CLIENTE:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 487.559370000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 468.661720000000000000
        Width = 642.520100000000000000
        DataSet = frx_padrao_item
        DataSetName = 'frx_padrao_item'
        RowCount = 0
        object frxDB_ItemID_SEQUENCIA: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'ID_SEQUENCIA'
          DataSet = frx_padrao_item
          DataSetName = 'frx_padrao_item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao_item."ID_SEQUENCIA"]')
          ParentFont = False
        end
        object frxDB_ItemID_PRODUTO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 71.811070000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'ID_PRODUTO'
          DataSet = frx_padrao_item
          DataSetName = 'frx_padrao_item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao_item."ID_PRODUTO"]')
          ParentFont = False
        end
        object frxDB_ItemDESCRICAO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 143.622140000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataField = 'DESCONTO'
          DataSet = frx_padrao_item
          DataSetName = 'frx_padrao_item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_padrao_item."DESCONTO"]')
          ParentFont = False
        end
        object frxDB_ItemQTDE: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 370.393940000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'QTDE'
          DataSet = frx_padrao_item
          DataSetName = 'frx_padrao_item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao_item."QTDE"]')
          ParentFont = False
        end
        object frxDB_ItemVL_CUSTO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 461.102660000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'VL_VENDA'
          DataSet = frx_padrao_item
          DataSetName = 'frx_padrao_item'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao_item."VL_VENDA"]')
          ParentFont = False
        end
        object frxDB_ItemTOTAL_ITEM: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 551.811380000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_ITEM'
          DataSet = frx_padrao_item
          DataSetName = 'frx_padrao_item'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao_item."TOTAL_ITEM"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 415.748300000000000000
        Width = 642.520100000000000000
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SEQ:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PROD:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DESCONTO:')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 393.071120000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QTDE:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VL VENDA:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 3.779530000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL:')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 555.590910000000000000
        Width = 642.520100000000000000
        object frxDB_Q_PadraoVALOR: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 37.795300000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."VALOR"]')
          ParentFont = False
        end
        object frx_padraoTROCO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 491.338900000000000000
          Top = 37.795300000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'TROCO'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_padrao."TROCO"]')
        end
        object frx_padraoDINHEIRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 260.787570000000000000
          Top = 41.574830000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataField = 'DINHEIRO'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_padrao."DINHEIRO"]')
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL COMPRA:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 260.787570000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR PAGO:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TROCO:')
          ParentFont = False
        end
      end
    end
  end
  object frx_padrao: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frx_padrao'
    CloseDataSource = False
    DataSet = Q_padrao
    BCDToCurrency = False
    DataSetOptions = []
    Left = 264
    Top = 328
  end
  object frx_padrao_item: TfrxDBDataset
    UserName = 'frx_padrao_item'
    CloseDataSource = False
    DataSet = Q_padrao_item
    BCDToCurrency = False
    DataSetOptions = []
    Left = 264
    Top = 280
  end
  object frx_empresa: TfrxDBDataset
    UserName = 'frx_empresa'
    CloseDataSource = False
    DataSet = Q_empresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 264
    Top = 224
  end
end
