inherited Frm_Compras01: TFrm_Compras01
  Caption = 'Cadastro de Compras'
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton [0]
    Left = 152
    Top = 192
    Width = 23
    Height = 22
  end
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
      OnClick = bt_okClick
    end
    inherited bt_excluir: TBitBtn
      OnClick = bt_excluirClick
    end
    inherited bt_imprimir: TBitBtn
      OnClick = bt_imprimirClick
    end
  end
  inherited Panel3: TPanel
    Height = 120
    ExplicitHeight = 120
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 61
      Height = 13
      Caption = 'N'#176'COMPRA'
      FocusControl = DB_id_compra
    end
    object Label2: TLabel
      Left = 112
      Top = 8
      Width = 85
      Height = 13
      Caption = 'N'#176'FORNECEDOR'
      FocusControl = DB_id_fornecedor
    end
    object Label3: TLabel
      Left = 453
      Top = 8
      Width = 79
      Height = 13
      Caption = 'N'#176'FORMA PAG'
      FocusControl = DB_id_forma_pgto
    end
    object Label4: TLabel
      Left = 16
      Top = 70
      Width = 52
      Height = 13
      Caption = 'USU'#193'RIO'
      FocusControl = DB_usuario
    end
    object Label5: TLabel
      Left = 249
      Top = 70
      Width = 37
      Height = 13
      Caption = 'VALOR'
      FocusControl = DB_valor
    end
    object Label6: TLabel
      Left = 360
      Top = 70
      Width = 61
      Height = 13
      Caption = 'CADASTRO'
      FocusControl = DB_cadastro
    end
    object Label7: TLabel
      Left = 216
      Top = 8
      Width = 31
      Height = 13
      Caption = 'NOME'
    end
    object Label8: TLabel
      Left = 552
      Top = 8
      Width = 64
      Height = 13
      Caption = 'DESCRI'#199#195'O'
    end
    object Label14: TLabel
      Left = 534
      Top = 70
      Width = 67
      Height = 13
      Caption = 'COND_PGTO'
      FocusControl = DB_cond_pgto
    end
    object DB_id_compra: TDBEdit
      Left = 16
      Top = 27
      Width = 68
      Height = 21
      DataField = 'ID_COMPRA'
      DataSource = ds_padrao
      TabOrder = 0
    end
    object DB_id_fornecedor: TDBEdit
      Left = 112
      Top = 27
      Width = 68
      Height = 21
      DataField = 'ID_FORNECEDOR'
      DataSource = ds_padrao
      TabOrder = 1
    end
    object DB_id_forma_pgto: TDBEdit
      Left = 453
      Top = 27
      Width = 68
      Height = 21
      DataField = 'ID_FORMA_PGTO'
      DataSource = ds_padrao
      TabOrder = 2
      OnExit = DB_id_forma_pgtoExit
    end
    object DB_usuario: TDBEdit
      Left = 16
      Top = 89
      Width = 200
      Height = 21
      DataField = 'USUARIO'
      DataSource = ds_padrao
      Enabled = False
      TabOrder = 3
    end
    object DB_valor: TDBEdit
      Left = 249
      Top = 89
      Width = 81
      Height = 21
      DataField = 'VALOR'
      DataSource = ds_padrao
      TabOrder = 4
    end
    object DB_cadastro: TDBEdit
      Left = 360
      Top = 89
      Width = 134
      Height = 21
      DataField = 'CADASTRO'
      DataSource = ds_padrao
      TabOrder = 5
    end
    object DB_descricao: TDBLookupComboBox
      Left = 552
      Top = 27
      Width = 151
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = ds_padrao
      TabOrder = 6
    end
    object DB_cond_pgto: TDBEdit
      Left = 534
      Top = 89
      Width = 134
      Height = 21
      DataField = 'COND_PGTO'
      DataSource = ds_padrao
      TabOrder = 7
    end
    object bt_check: TBitBtn
      Left = 405
      Top = 25
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
      TabOrder = 8
      OnClick = bt_checkClick
    end
    object DB_nome: TDBEdit
      Left = 216
      Top = 27
      Width = 183
      Height = 21
      DataField = 'NOME'
      DataSource = ds_padrao
      TabOrder = 9
    end
  end
  inherited Panel4: TPanel
    object Label9: TLabel
      Left = 16
      Top = 21
      Width = 74
      Height = 13
      Caption = 'ID_PRODUTO'
      FocusControl = DB_id_produto
    end
    object Label10: TLabel
      Left = 112
      Top = 21
      Width = 29
      Height = 13
      Caption = 'QTDE'
      FocusControl = DB_qtde
    end
    object Label11: TLabel
      Left = 190
      Top = 21
      Width = 57
      Height = 13
      Caption = 'VL_CUSTO'
      FocusControl = DB_vl_custo
    end
    object Label12: TLabel
      Left = 277
      Top = 21
      Width = 58
      Height = 13
      Caption = 'DESCONTO'
      FocusControl = DB_desconto
    end
    object Label13: TLabel
      Left = 360
      Top = 21
      Width = 71
      Height = 13
      Caption = 'TOTAL_ITEM'
      FocusControl = DB_total_item
    end
    object DB_id_produto: TDBEdit
      Left = 16
      Top = 40
      Width = 74
      Height = 21
      DataField = 'ID_PRODUTO'
      DataSource = ds_padrao_item
      TabOrder = 0
      OnExit = DB_id_produtoExit
    end
    object DB_qtde: TDBEdit
      Left = 112
      Top = 40
      Width = 57
      Height = 21
      DataField = 'QTDE'
      DataSource = ds_padrao_item
      TabOrder = 1
      OnClick = DB_qtdeClick
      OnExit = DB_qtdeExit
    end
    object DB_vl_custo: TDBEdit
      Left = 190
      Top = 40
      Width = 57
      Height = 21
      DataField = 'VL_CUSTO'
      DataSource = ds_padrao_item
      TabOrder = 2
    end
    object DB_desconto: TDBEdit
      Left = 277
      Top = 40
      Width = 58
      Height = 21
      DataField = 'DESCONTO'
      DataSource = ds_padrao_item
      TabOrder = 3
      OnClick = DB_descontoClick
      OnExit = DB_descontoExit
    end
    object DB_total_item: TDBEdit
      Left = 360
      Top = 40
      Width = 71
      Height = 21
      DataField = 'TOTAL_ITEM'
      DataSource = ds_padrao_item
      TabOrder = 4
      OnExit = DB_total_itemExit
    end
  end
  inherited PageControl1: TPageControl
    Top = 185
    Height = 199
    ActivePage = Item_Compra
    ExplicitTop = 185
    ExplicitHeight = 199
    inherited Item_Compra: TTabSheet
      ExplicitHeight = 171
      inherited DBGrid1: TDBGrid
        Height = 171
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_SEQUENCIA'
            Title.Caption = 'ID SEQUENCIA'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_COMPRA'
            Title.Caption = 'ID COMPRA'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Title.Caption = 'ID PRODUTO'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'DESCRI'#199#195'O'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE'
            Title.Caption = 'QUANTIDADE'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_CUSTO'
            Title.Caption = 'VALOR DE  CUSTO'
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
            Title.Caption = 'TOTAL'
            Width = 100
            Visible = True
          end>
      end
    end
    inherited Conta_Pagar: TTabSheet
      ExplicitHeight = 171
      inherited DBGrid2: TDBGrid
        Height = 171
        DataSource = ds_conta_pagar
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_SEQUENCIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_COMPRA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_PARCELA'
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
            FieldName = 'ATRASO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'JUROS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_JUROS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_PAGAR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Visible = True
          end>
      end
    end
  end
  inherited Q_padrao: TFDQuery
    Active = True
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ID_COMPRA'
    UpdateOptions.AutoIncFields = 'ID_COMPRA'
    SQL.Strings = (
      'SELECT A.ID_COMPRA, A.ID_FORNECEDOR, B.NOME, A.ID_FORMA_PGTO,'
      'A.COND_PGTO, C.DESCRICAO, A.USUARIO, A.VALOR, A.CADASTRO '
      'FROM COMPRA A, FORNECEDOR B, FORMA_PGTO C WHERE '
      'A.ID_FORNECEDOR = B.ID_FORNECEDOR AND '
      'C.ID_FORMA_PGTO = A.ID_FORMA_PGTO ORDER BY ID_COMPRA')
    Left = 24
    Top = 344
    object Q_padraoID_COMPRA: TFDAutoIncField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Q_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object Q_padraoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
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
    object Q_padraoNOME: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME'
      LookupDataSet = qry_fornecedor
      LookupKeyFields = 'ID_FORNECEDOR'
      LookupResultField = 'NOME'
      KeyFields = 'ID_FORNECEDOR'
      Size = 100
      Lookup = True
    end
    object Q_padraoDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = qry_forma_pgto
      LookupKeyFields = 'ID_FORMA_PGTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ID_FORMA_PGTO'
      Size = 60
      Lookup = True
    end
    object Q_padraoCOND_PGTO: TIntegerField
      FieldName = 'COND_PGTO'
      Origin = 'COND_PGTO'
    end
  end
  inherited ds_padrao: TDataSource
    Left = 112
    Top = 344
  end
  inherited Q_padrao_item: TFDQuery
    Active = True
    IndexFieldNames = 'ID_COMPRA'
    AggregatesActive = True
    MasterFields = 'ID_COMPRA'
    DetailFields = 'ID_COMPRA'
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT ID_SEQUENCIA, ID_COMPRA, ID_PRODUTO, QTDE, VL_CUSTO,'
      'TOTAL_ITEM, DESCONTO '
      'FROM ITEM_COMPRA WHERE ID_COMPRA = :ID_COMPRA')
    Left = 24
    Top = 288
    ParamData = <
      item
        Name = 'ID_COMPRA'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 26
      end>
    object Q_padrao_itemID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padrao_itemID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
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
      Precision = 18
      Size = 2
    end
    object Q_padrao_itemVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
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
    object Q_padrao_itemDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_padrao_itemDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = Q_produto
      LookupKeyFields = 'ID_PRODUTO'
      LookupResultField = 'PRODUTO_DESCRICAO'
      KeyFields = 'ID_PRODUTO'
      Size = 100
      Lookup = True
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
    Left = 112
    Top = 288
  end
  object qry_fornecedor: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      
        'SELECT ID_FORNECEDOR, NOME FROM FORNECEDOR ORDER BY ID_FORNECEDO' +
        'R')
    Left = 576
    Top = 193
    object qry_fornecedorID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_fornecedorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
  end
  object qry_forma_pgto: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT ID_FORMA_PGTO, DESCRICAO FROM FORMA_PGTO '
      'ORDER BY ID_FORMA_PGTO')
    Left = 672
    Top = 193
    object qry_forma_pgtoID_FORMA_PGTO: TIntegerField
      FieldName = 'ID_FORMA_PGTO'
      Origin = 'ID_FORMA_PGTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry_forma_pgtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object ds_fornecedor: TDataSource
    DataSet = qry_fornecedor
    Left = 576
    Top = 248
  end
  object ds_forma_pgto: TDataSource
    DataSet = qry_forma_pgto
    Left = 680
    Top = 240
  end
  object Q_produto: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT ID_PRODUTO, PRODUTO_DESCRICAO, ESTOQUE, ESTOQUE_MIN,'
      'VL_CUSTO FROM PRODUTO ORDER BY ID_PRODUTO')
    Left = 184
    Top = 288
  end
  object Rel_Recibo_Compra: TfrxReport
    Version = '2022.2.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44767.919182094900000000
    ReportOptions.LastChange = 44768.648292430600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 680
    Top = 400
    Datasets = <
      item
        DataSet = frxDB_Q_Padrao
        DataSetName = 'frxDB_Q_Padrao'
      end
      item
        DataSet = frxDB_Empresa
        DataSetName = 'frxDB_Empresa'
      end
      item
        DataSet = frxDB_Item
        DataSetName = 'frxDB_Item'
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
          DataSet = frxDB_Empresa
          DataSetName = 'frxDB_Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Empresa."N_FANTASIA"]')
        end
        object frxDB_EmpresaENDERECO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 41.574830000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = frxDB_Empresa
          DataSetName = 'frxDB_Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Empresa."ENDERECO"]')
        end
        object frxDB_EmpresaBAIRRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 75.590600000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'BAIRRO'
          DataSet = frxDB_Empresa
          DataSetName = 'frxDB_Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Empresa."BAIRRO"]')
        end
        object frxDB_EmpresaCIDADE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 105.826840000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = frxDB_Empresa
          DataSetName = 'frxDB_Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Empresa."CIDADE"]')
        end
        object frxDB_EmpresaUF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 105.826840000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'UF'
          DataSet = frxDB_Empresa
          DataSetName = 'frxDB_Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Empresa."UF"]')
        end
        object frxDB_EmpresaCEP: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 139.842610000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = frxDB_Empresa
          DataSetName = 'frxDB_Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Empresa."CEP"]')
        end
        object frxDB_EmpresaTELEFONE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 170.078850000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONE'
          DataSet = frxDB_Empresa
          DataSetName = 'frxDB_Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Empresa."TELEFONE"]')
        end
        object frxDB_EmpresaEMAIL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 200.315090000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = 'EMAIL'
          DataSet = frxDB_Empresa
          DataSetName = 'frxDB_Empresa'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Empresa."EMAIL"]')
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 506.457020000000000000
          Top = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 109.606370000000000000
          DataField = 'LOGO'
          DataSet = frxDB_Empresa
          DataSetName = 'frxDB_Empresa'
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
        DataSet = frxDB_Q_Padrao
        DataSetName = 'frxDB_Q_Padrao'
        RowCount = 0
        object frxDB_Q_PadraoID_COMPRA: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_COMPRA'
          DataSet = frxDB_Q_Padrao
          DataSetName = 'frxDB_Q_Padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Q_Padrao."ID_COMPRA"]')
          ParentFont = False
        end
        object frxDB_Q_PadraoNOME: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frxDB_Q_Padrao
          DataSetName = 'frxDB_Q_Padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDB_Q_Padrao."NOME"]')
          ParentFont = False
        end
        object frxDB_Q_PadraoVALOR: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 396.850650000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR'
          DataSet = frxDB_Q_Padrao
          DataSetName = 'frxDB_Q_Padrao'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Q_Padrao."VALOR"]')
          ParentFont = False
        end
        object frxDB_Q_PadraoCADASTRO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 510.236550000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'CADASTRO'
          DataSet = frxDB_Q_Padrao
          DataSetName = 'frxDB_Q_Padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Q_Padrao."CADASTRO"]')
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
            'FORNECEDOR:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'VALOR:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 3.779530000000000000
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
        Height = 22.677180000000000000
        Top = 468.661720000000000000
        Width = 642.520100000000000000
        DataSet = frxDB_Item
        DataSetName = 'frxDB_Item'
        RowCount = 0
        object frxDB_ItemID_SEQUENCIA: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'ID_SEQUENCIA'
          DataSet = frxDB_Item
          DataSetName = 'frxDB_Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Item."ID_SEQUENCIA"]')
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
          DataSet = frxDB_Item
          DataSetName = 'frxDB_Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Item."ID_PRODUTO"]')
          ParentFont = False
        end
        object frxDB_ItemDESCRICAO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 143.622140000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRICAO'
          DataSet = frxDB_Item
          DataSetName = 'frxDB_Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDB_Item."DESCRICAO"]')
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
          DataSet = frxDB_Item
          DataSetName = 'frxDB_Item'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Item."QTDE"]')
          ParentFont = False
        end
        object frxDB_ItemVL_CUSTO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 461.102660000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'VL_CUSTO'
          DataSet = frxDB_Item
          DataSetName = 'frxDB_Item'
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
            '[frxDB_Item."VL_CUSTO"]')
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
          DataSet = frxDB_Item
          DataSetName = 'frxDB_Item'
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
            '[frxDB_Item."TOTAL_ITEM"]')
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
            'DESCRI'#199#195'O:')
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
            'VL CUSTO:')
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
    end
  end
  object frxDB_Q_Padrao: TfrxDBDataset
    UserName = 'frxDB_Q_Padrao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_COMPRA=ID_COMPRA'
      'ID_FORNECEDOR=ID_FORNECEDOR'
      'ID_FORMA_PGTO=ID_FORMA_PGTO'
      'USUARIO=USUARIO'
      'VALOR=VALOR'
      'CADASTRO=CADASTRO'
      'NOME=NOME'
      'DESCRICAO=DESCRICAO')
    DataSet = Q_padrao
    BCDToCurrency = False
    DataSetOptions = []
    Left = 560
    Top = 400
  end
  object Fd_Empresa: TFDQuery
    Active = True
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM EMPRESA')
    Left = 576
    Top = 312
  end
  object Ds_Empresa: TDataSource
    DataSet = Fd_Empresa
    Left = 680
    Top = 312
  end
  object frxDB_Empresa: TfrxDBDataset
    UserName = 'frxDB_Empresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_EMPRESA=ID_EMPRESA'
      'RAZAO_SOCIAL=RAZAO_SOCIAL'
      'N_FANTASIA=N_FANTASIA'
      'ENDERECO=ENDERECO'
      'NUMERO=NUMERO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'UF=UF'
      'TELEFONE=TELEFONE'
      'EMAIL=EMAIL'
      'CADASTRO=CADASTRO'
      'CEP=CEP'
      'LOGO=LOGO'
      'CNPJ=CNPJ')
    DataSet = Fd_Empresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 440
    Top = 456
  end
  object frxDB_Item: TfrxDBDataset
    UserName = 'frxDB_Item'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_SEQUENCIA=ID_SEQUENCIA'
      'ID_COMPRA=ID_COMPRA'
      'ID_PRODUTO=ID_PRODUTO'
      'QTDE=QTDE'
      'VL_CUSTO=VL_CUSTO'
      'TOTAL_ITEM=TOTAL_ITEM'
      'DESCONTO=DESCONTO'
      'DESCRICAO=DESCRICAO'
      'SUBTOTAL=SUBTOTAL')
    DataSet = Q_padrao_item
    BCDToCurrency = False
    DataSetOptions = []
    Left = 368
    Top = 464
  end
  object Q_conta_pagar: TFDQuery
    Active = True
    IndexFieldNames = 'ID_COMPRA'
    MasterSource = ds_padrao
    MasterFields = 'ID_COMPRA'
    DetailFields = 'ID_COMPRA'
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT ID_SEQUENCIA, ID_COMPRA, VALOR_PARCELA,'
      'DT_VENCIMENTO, DT_PAGAMENTO, ATRASO, JUROS,'
      'VL_JUROS, TOTAL_PAGAR, STATUS FROM CONTAS_PAGAR'
      'WHERE ID_COMPRA = :ID_COMPRA')
    Left = 376
    Top = 288
    ParamData = <
      item
        Name = 'ID_COMPRA'
        DataType = ftAutoInc
        ParamType = ptInput
        Value = 26
      end>
    object Q_conta_pagarID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_conta_pagarID_COMPRA: TIntegerField
      FieldName = 'ID_COMPRA'
      Origin = 'ID_COMPRA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_conta_pagarVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_conta_pagarDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      Required = True
    end
    object Q_conta_pagarDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
    end
    object Q_conta_pagarATRASO: TIntegerField
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
    end
    object Q_conta_pagarJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 18
      Size = 2
    end
    object Q_conta_pagarVL_JUROS: TFMTBCDField
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_conta_pagarTOTAL_PAGAR: TFMTBCDField
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      currency = True
      Precision = 18
      Size = 2
    end
    object Q_conta_pagarSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 30
    end
  end
  object ds_conta_pagar: TDataSource
    DataSet = Q_conta_pagar
    Left = 488
    Top = 288
  end
end
