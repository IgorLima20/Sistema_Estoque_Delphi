inherited Frm_conta_receber: TFrm_conta_receber
  Caption = 'RECEBIMENTO DE CONTAS '
  ClientHeight = 434
  ExplicitHeight = 463
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel [0]
    Left = 54
    Top = 287
    Width = 37
    Height = 13
    Caption = 'JUROS'
    FocusControl = DBEdit10
  end
  object Label11: TLabel [1]
    Left = 181
    Top = 287
    Width = 57
    Height = 13
    Caption = 'VL_JUROS'
    FocusControl = DBEdit11
  end
  object Label12: TLabel [2]
    Left = 320
    Top = 287
    Width = 82
    Height = 13
    Caption = 'TOTAL_PAGAR'
    FocusControl = DBEdit12
  end
  object Label13: TLabel [3]
    Left = 438
    Top = 287
    Width = 44
    Height = 13
    Caption = 'STATUS'
    FocusControl = DBEdit13
  end
  object Label5: TLabel [4]
    Left = 54
    Top = 237
    Width = 82
    Height = 13
    Caption = 'ID_SEQUENCIA'
    FocusControl = DBEdit5
  end
  object Label6: TLabel [5]
    Left = 181
    Top = 237
    Width = 94
    Height = 13
    Caption = 'VALOR_PARCELA'
    FocusControl = DBEdit6
  end
  object Label7: TLabel [6]
    Left = 319
    Top = 237
    Width = 70
    Height = 13
    Caption = 'VENCIMENTO'
    FocusControl = DBEdit7
  end
  object Label8: TLabel [7]
    Left = 438
    Top = 237
    Width = 91
    Height = 13
    Caption = 'DT_PAGAMENTO'
    FocusControl = DBEdit8
  end
  object Label9: TLabel [8]
    Left = 556
    Top = 236
    Width = 46
    Height = 13
    Caption = 'ATRASO'
    FocusControl = DBEdit9
  end
  object Bevel2: TBevel [9]
    Left = 24
    Top = 224
    Width = 673
    Height = 121
  end
  object Label1: TLabel [10]
    Left = 57
    Top = 88
    Width = 56
    Height = 13
    Caption = 'ID_VENDA'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [11]
    Left = 57
    Top = 134
    Width = 64
    Height = 13
    Caption = 'ID_CLIENTE'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [12]
    Left = 192
    Top = 134
    Width = 31
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [13]
    Left = 567
    Top = 134
    Width = 20
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit4
  end
  object Bevel1: TBevel [14]
    Left = 24
    Top = 80
    Width = 673
    Height = 121
  end
  inherited Panel1: TPanel
    inherited bt_Novo: TBitBtn
      Visible = False
    end
    inherited bt_Deletar: TBitBtn
      Visible = False
    end
    inherited bt_Editar: TBitBtn
      Left = 2
      ExplicitLeft = 2
    end
    inherited bt_Gravar: TBitBtn
      Visible = False
    end
    inherited bt_Cancelar: TBitBtn
      Left = 89
      ExplicitLeft = 89
    end
    inherited bt_Atualizar: TBitBtn
      Left = 263
      ExplicitLeft = 263
    end
    inherited bt_Pesquisar: TBitBtn
      Left = 176
      OnClick = bt_PesquisarClick
      ExplicitLeft = 176
    end
    inherited bt_Sair: TBitBtn
      Left = 438
      ExplicitLeft = 438
    end
    object bt_Imprimir: TBitBtn
      Left = 350
      Top = 0
      Width = 82
      Height = 65
      Caption = '&Imprimir'
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        20000000000000100000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000002000000100000001C0000001E0000
        001E000000200000002200000022000000220000002400000022000000220000
        0022000000240000002A0000002A0000002A0000002A0000002C000000220000
        0010000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000E14100EA1221D1AC9221D1AC9221D
        1AC9221D1AC9201C19CD1E1B19CD221C19CD1E1A18CD1D1918CD1D1A18D11E1B
        19D1211B19D1211B18D1211B19D1211B19D1211B19D1211B19D1211C1ACF0B0A
        097E000000040000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000001637302BFD756053FF8D6F5EFF9074
        62FF8C7160FF8F7262FF917363FF927463FF8D7260FF8B6F5FFF8A6D5BFF8C6F
        5DFF8E7160FF8D705FFF8C6F5FFF886D5CFF866B5AFF816859FF60524AFF221D
        1AB7000000020000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000C65544AF1735C50FF8B6E5DFF7860
        54FF7A6054FF846859FF86695BFF886C5BFF8A6C5AFF8C6E5BFF95735EFF9674
        5EFF8F6F5DFF846859FF826757FF7F6658FF7F6557FF8B6F5FFF766055FF201B
        179D000000000000000000000000000000000000000000000000000000000000
        00020000000600000008000000080000000E5B4B41D3705C50FF908982FF8997
        96FF8D9998FF919B9AFF919C9BFF949F9EFF929E9CFF939F9DFF909E9DFF8F9B
        9AFF8C9998FF8F9B99FF8F9C9AFF889493FFA9B2B2FF816C5FFF7B675AFF0807
        077A000000140000001200000012000000100000000600000000000000020000
        001E0B0B0B520B0B0A5A0808085E07070762362B24C77B6456FF9C918BFF6075
        72FF627673FF637A77FF667C7AFF687E7CFF6A807EFF6B817FFF6B807FFF697F
        7DFF677D7AFF647A78FF627875FF617471FF9DACAAFF7C6657FF5A4B42FF0707
        07970606067206060678060606720404045E0000002600000002000000041818
        18585F5F5FFF707070FF757676FF777777FF393735FF826A5AFF887D75FF6E85
        82FF657B79FF6A7F7DFF6D8582FF6F8885FF708A87FF728D89FF718C88FF6E83
        81FF6B807EFF6C8280FF677D7BFF637A77FF95A3A3FF6C5648FF40342EFF4D4F
        4FFF6A6A69FF686869FF676767FF4A4A4AFD1717175800000004000000022928
        2770A6A7A8FFB4B5B5FFB4B5B5FFB5B6B6FF3E3E3EFF735D50FF756A62FF8195
        94FF6B827FFF6E8885FF738E8BFF779290FF799592FF7B9794FF728A88FF5C70
        8CFF5B6F97FF6C8686FF6D8582FF687D7BFF939D9CFF614F43FF3E3530FF7172
        72FFACACACFFADADADFFACACACFF8D8D8CFF232323640000000400000000403F
        3F99B4B5B5FFB4B5B5FFB4B5B5FFB5B6B6FF40403FFF59473DFF665A51FF889E
        9EFF6F8986FF76918EFF809090FF768E92FF859C9BFF6F8397FF5F6C84FF7081
        9EFF617892FF718A88FF6B827FFF647876FF828381FF5F4E42FF3A3735FF7171
        72FFADADADFFADADADFFADADADFFA4A5A5FF3737377E00000000000000005858
        58C5B4B5B5FFB4B5B5FFB4B5B5FFAFB0B0FF464647FF4A3B32FF53463EFF707A
        7AFF5E6D6BFF627471FF5E6E6DFF787E7FFF6B6E70FF465A79FF44577DFF6869
        6AFF5A696CFF5D6B69FF596664FF57605FFF6A625DFF544841FF3A3A3AFF6F6F
        70FFABABABFFADADADFFADADADFFABABABFF434444AB000000004F5151046666
        66F5B1B2B4FFB4B5B5FFB2B3B4FF9A9C9CFF373839FF403731FF34302EFF4E4F
        4EFF505150FF505453FF505655FF4A4C4CFF515151FF4F4E4DFF4E4F51FF4D50
        54FF494D50FF4C4F4EFF4B4E4EFF4E5254FF4E4844FF413A36FF343535FF6061
        63FFA7A7A6FFADADADFFADADADFFADADADFF535454D3000000003A3A3A1C7373
        73FFAEB0B2FFB2B5B5FFACAFB3FFA5A7A9FF78797BFF7C7D7EFF818385FF7F80
        80FF7D7E7FFF7E7E7FFF7C7C7CFF7C7C7CFF7C7C7CFF7B7B7AFF7B7C7AFF7E7F
        7DFF818180FF81807FFF7F7F7EFF7D7E7CFF7A7D7CFF78797BFF7A7A7BFF9090
        90FFA6A6A5FFACACABFFACACACFFACACACFF636362F56E727604363636388383
        84FFACADADFFB0B2B3FFACAEB1FFACADADFFADADADFFACACACFFABACA8FFAAAB
        A7FFA6A6A5FFA5A5A5FFA5A5A5FFA5A5A5FFA6A6A5FFA7A8A6FFABACA8FFABAC
        A8FFABACA8FFABACA8FFABACA8FFABACA8FFABACA8FFAAABA8FFAAABA8FFA5A5
        A5FFA7A7A7FFAEAFAFFFAAAAAAFFABACA9FF70706FFF41424320363636568A8B
        8AFFA3A4A3FFA7A9AAFFAAACAEFFA9ACB0FFAAAAABFFA9AAA9FFA8A8A6FFA7A8
        A5FFA6A7A5FFA6A7A4FFA1A1A1FFA0A1A1FFA0A1A1FFA3A3A4FFA5A5A5FFA5A6
        A5FFA6A7A6FFA7A8A6FFA7A9A7FFA8AAA8FFA9AAA7FFA9AAA7FFA8A9A6FFA3A4
        A3FF9FA3A3FFB1C4BFFFA4A7A7FFA1A3A2FF777878FF3939394836363640B3B4
        B5FFF1F2F3FFEBEEF0FFE7EAEDFFE8EBEBFFE9EDEDFFE7E9EAFFE4E7E9FFDCE0
        E3FFD2D5D9FFD2D6D9FFDBDFE2FFD8DBDFFFDADEE0FFD3D9DCFFDBDFE0FFD8DE
        E0FFD8DEE2FFD8DDE2FFD5DBDEFFDDE3E4FFE3E7E9FFE5E7E8FFE7E9E9FFE7E8
        E9FFB7BABAFFA8ACADFFA1A3A4FFECECECFF9C9C9CFF3A3B3B22424243068E8E
        8EEBE4E7ECFFDEE2E7FFDEE1E7FFE2E6ECFFE6EBEEFFE8EDEFFFE7EBEEFFE5EA
        EDFFDCE2E7FFDCE4E7FFDEE4E7FFDFE3E7FFDFE2E6FFDFE1E7FFDFE2E6FFE0E3
        E7FFE5E6E8FFE3E6EAFFE4E6EBFFEBEFF0FFEFF0F1FFEEF1F3FFEBEFF2FFE9ED
        F0FFB4B5B7FFA5A8AAFFAFB3B4FFFBFBFCFF808181D700000000000000005050
        509FDCE2E6FFD9DEE4FFDCDFE5FFDDE3E7FFE3E6ECFFE4E7EDFFE4E7EDFFE4E7
        EDFFD7DFE2FFD5DDDFFFD7DCDEFFDADDDEFFDBDFE2FFDBDFE4FFDCDEE5FFDEE0
        E6FFE1E4E6FFE4E6E8FFE4E8EDFFEAEFF0FFEFF0F1FFE7EEEFFFE2E6EBFFDEE4
        E8FFD9DFE2FFDADFE3FFE1E7ECFFE5E7EAFF4242429700000000000000003737
        3746B3B7B9FFD4DBDDFFD6DCE0FFDADFE4FFE0E4E8FFE1E4E9FFE2E4EAFFE1E4
        EBFFDEE3E9FFDCE1E5FFDDE0E5FFDEE0E5FFDDE1E3FFDEE3E7FFDFE6E9FFE2E6
        EAFFE5E7E9FFE3E8EAFFE2E8EBFFE6E9ECFFE8ECEEFFE4E9ECFFE0E5EBFFDDE0
        E6FFDDE2E6FFDDE3E7FFDFE5ECFFAAACAEFF4242434C00000000000000004242
        4204838587DDCED4DBFFD0D5DCFFD0D6DCFFCBD2D7FF858686FF757270FFA5AD
        AEFFA7ADAEFF9DA4A7FF9DA3A7FF9CA3A7FF99A1A4FF989FA2FF969EA0FF7071
        71FF6F6F70FF727272FF797979FFA7ADB0FF808181FF707170FFA7ABADFFDAE1
        E5FFDDDFE6FFDDE0E6FFE0E5E9FF717170EB686C6C0800000000000000000000
        00005454557CC8CDD3FFCCD2D9FFCCD1D9FFC8CDD4FF5B5D5EFF69584EFFD4E2
        E6FFCEDCDFFFCEDBDEFFCCDADDFFCCD7DBFFCAD5DAFFCDD9DDFFCCD8DBFF5C5E
        5DFF4F4F4FFF4E4E4EFF505050FFC9D5D9FF817E7AFF584E47FFA8ABAFFFD4DC
        E1FFD8DEE4FFD7DEE4FFCBD0D2FF3E3D3D8F0000000000000000000000000000
        00003C3C3D1A9A9EA1F9C8CFD5FFC8CED4FFC4CACEFF5F6061FF685951FFE5F2
        F5FFD9E7EAFFD6E4E6FFD6E3E6FFD8E8EBFFD9E9EBFFD8E7EBFFD7E7EBFF9FA7
        A9FF9DA4A5FFA3A9AAFFABB3B4FFCCDBDDFF8C8883FF5C5048FFB1B7BAFFD3D9
        DDFFD5DEDFFFD5DEDFFF8D8F8FFD4C4D4E200000000000000000000000000000
        000000000000727474AFC1C8CCFFC1C9CDFFBDC3C7FF626365FF6C625BFFE0F0
        F2FFDAEAECFFDAEAEDFFE0EFF2FFE3F0F3FFE2F0F2FFDDEFF0FFDDEEEFFFD9E9
        EDFFDAEBEEFFD8E7EBFFD5E4E8FFD3E1E5FF8D8A87FF5B4E45FFB1B9BDFFC8CF
        D5FFCFD5DBFFD2D9DCFF4F5050A7000000000000000000000000000000000000
        0000000000005456563075787AD5797D7FDB7A7B7BE5484746F3736962FFDBEC
        EEFFDDEEEFFFE1EFF2FFE6F4F6FFE6F5F7FFE6F4F6FFE1F0F4FFDDEFF2FFDDEE
        F0FFDDEEEFFFDCEDEFFFD8E8EDFFD7E6E9FF92928FFF50453EFB767A7CE56C6F
        72E36D7072DD5D5F60D93A3A3A30000000000000000000000000000000000000
        0000000000000000000000000000000000000000000027211D85776F6AFFDEEE
        EFFFE3F0F3FFE6F3F5FFE8F7F9FFECF8FCFFE9F7FAFFE6F5F7FFE4F1F4FFDEEF
        F3FFDDEFF1FFDEEFF0FFDBEBEEFFD7E5E9FF8E908EFF50463FEB000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000352E2A998A8985FFDEEF
        F0FFE6F2F5FFE9F7FAFFEFFCFEFFEFFEFFFFEFFBFEFFE9F7FAFFE6F4F7FFE4F1
        F4FFDFEFF3FFDDEFF2FFDBECEFFFD8E8EDFF909393FF51463FFB737682060000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000003D3530AB8B8E8CFFDEEF
        F0FFE5F1F4FFEAF7FAFFEFFDFEFFEFFEFFFFEFFCFEFFEAF8FBFFE6F3F6FFE6F2
        F5FFE1F0F3FFDDEFF3FFDBEDF0FFD7E7ECFFA0A3A2FF53463DFF4040440C0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000423B37BD8A8C8CFFDDEF
        F0FFDFEFF0FFE7F4F7FFEBF8FBFFECF9FCFFEFFAFEFFEDF9FCFFE6F6F8FFE5F1
        F4FFDFEFF0FFDDEFF0FFD9EAEDFFD7E6E9FFA5A9A8FF5D4B41FF1C1C1C1E0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000473E38CD92918DFFD7DD
        DEFFD6DCDEFFD2DADBFFD8DDDEFFDAE0E1FFD9E0E1FFDAE0E3FFD9DFE0FFD6DD
        DEFFD3DBDCFFD2DADCFFD0D7D9FFCBD4D6FF999793FF665348FF1414142C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000054473FD98F7666FF9177
        67FF947868FF937767FF957867FF967866FF977866FF997966FF997A67FF9A7D
        6BFF987B69FF967A68FF957766FF937666FF977969FF6D594EFF1412122E0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000544944EF988071FF997E
        6EFF987D6DFF998071FF9B8172FFA18574FFA38573FFA58673FFA28370FFA282
        6EFF9E7F6BFFA1826EFFA88A77FFA68A7AFFA18777FF736156FF0F0E0D300000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000A090846050404520505
        0552050404520807065206050552040403520505055205050552050404520403
        0352040403520907045203030352040303520303035208070660131313120000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 8
      OnClick = bt_ImprimirClick
    end
  end
  inherited Panel2: TPanel
    Top = 369
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  object DBEdit10: TDBEdit [17]
    Left = 52
    Top = 306
    Width = 94
    Height = 21
    DataField = 'JUROS'
    DataSource = ds_receber
    TabOrder = 2
    OnExit = DBEdit10Exit
  end
  object DBEdit11: TDBEdit [18]
    Left = 181
    Top = 306
    Width = 88
    Height = 21
    DataField = 'VL_JUROS'
    DataSource = ds_receber
    TabOrder = 3
  end
  object DBEdit12: TDBEdit [19]
    Left = 319
    Top = 306
    Width = 97
    Height = 21
    DataField = 'TOTAL_PAGAR'
    DataSource = ds_receber
    TabOrder = 4
  end
  object DBEdit13: TDBEdit [20]
    Left = 438
    Top = 303
    Width = 97
    Height = 21
    DataField = 'STATUS'
    DataSource = ds_receber
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [21]
    Left = 54
    Top = 260
    Width = 97
    Height = 21
    DataField = 'ID_SEQUENCIA'
    DataSource = ds_receber
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [22]
    Left = 181
    Top = 260
    Width = 94
    Height = 21
    DataField = 'VALOR_PARCELA'
    DataSource = ds_receber
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [23]
    Left = 320
    Top = 260
    Width = 88
    Height = 21
    DataField = 'DT_VENCIMENTO'
    DataSource = ds_receber
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [24]
    Left = 438
    Top = 259
    Width = 97
    Height = 21
    DataField = 'DT_PAGAMENTO'
    DataSource = ds_receber
    TabOrder = 9
    OnExit = DBEdit8Exit
  end
  object DBEdit9: TDBEdit [25]
    Left = 556
    Top = 259
    Width = 97
    Height = 21
    DataField = 'ATRASO'
    DataSource = ds_receber
    TabOrder = 10
  end
  object DBEdit1: TDBEdit [26]
    Left = 57
    Top = 107
    Width = 97
    Height = 21
    DataField = 'ID_VENDA'
    DataSource = ds_padrao
    TabOrder = 11
  end
  object DBEdit2: TDBEdit [27]
    Left = 57
    Top = 153
    Width = 97
    Height = 21
    DataField = 'ID_CLIENTE'
    DataSource = ds_padrao
    TabOrder = 12
  end
  object DBEdit3: TDBEdit [28]
    Left = 192
    Top = 153
    Width = 354
    Height = 21
    DataField = 'NOME'
    DataSource = ds_padrao
    TabOrder = 13
  end
  object DBEdit4: TDBEdit [29]
    Left = 567
    Top = 153
    Width = 97
    Height = 21
    DataField = 'CPF'
    DataSource = ds_padrao
    TabOrder = 14
  end
  inherited Q_padrao: TFDQuery
    SQL.Strings = (
      'SELECT A.ID_VENDA, A.ID_CLIENTE, B.NOME, B.CPF'
      'FROM VENDA A '
      'INNER JOIN CLIENTE B ON B.ID_CLIENTE = A.ID_CLIENTE '
      'ORDER BY A.ID_VENDA')
    Left = 646
    Top = 376
    object Q_padraoID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_padraoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      Required = True
    end
    object Q_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object Q_padraoCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF'
      Origin = 'CPF'
      ProviderFlags = []
      ReadOnly = True
      Size = 16
    end
  end
  inherited ds_padrao: TDataSource
    Left = 560
    Top = 376
  end
  object q_receber: TFDQuery
    IndexFieldNames = 'ID_VENDA'
    MasterSource = ds_padrao
    MasterFields = 'ID_VENDA'
    DetailFields = 'ID_VENDA'
    Connection = DM.Conexao
    SQL.Strings = (
      'SELECT * FROM CONTAS_RECEBER'
      'WHERE ID_VENDA = :ID_VENDA'
      'ORDER BY ID_VENDA')
    Left = 30
    Top = 373
    ParamData = <
      item
        Name = 'ID_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 37
      end>
    object q_receberID_SEQUENCIA: TIntegerField
      FieldName = 'ID_SEQUENCIA'
      Origin = 'ID_SEQUENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_receberID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_receberVALOR_PARCELA: TFMTBCDField
      FieldName = 'VALOR_PARCELA'
      Origin = 'VALOR_PARCELA'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object q_receberDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = 'DT_VENCIMENTO'
      Required = True
    end
    object q_receberDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
      Origin = 'DT_PAGAMENTO'
    end
    object q_receberATRASO: TIntegerField
      FieldName = 'ATRASO'
      Origin = 'ATRASO'
    end
    object q_receberJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      currency = True
      Precision = 18
      Size = 2
    end
    object q_receberVL_JUROS: TFMTBCDField
      FieldName = 'VL_JUROS'
      Origin = 'VL_JUROS'
      currency = True
      Precision = 18
      Size = 2
    end
    object q_receberTOTAL_PAGAR: TFMTBCDField
      FieldName = 'TOTAL_PAGAR'
      Origin = 'TOTAL_PAGAR'
      currency = True
      Precision = 18
      Size = 2
    end
    object q_receberSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUS'
      Size = 30
    end
  end
  object ds_receber: TDataSource
    DataSet = q_receber
    Left = 102
    Top = 381
  end
  object Rel_recibo: TfrxReport
    Version = '2022.2.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43993.851244016200000000
    ReportOptions.LastChange = 43993.911773831000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 344
    Top = 192
    Datasets = <
      item
        DataSet = frx_empresa
        DataSetName = 'frx_empresa'
      end
      item
        DataSet = frx_padrao
        DataSetName = 'frx_padrao'
      end
      item
        DataSet = frx_receber
        DataSetName = 'frx_receber'
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 170.078850000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frx_empresa
        DataSetName = 'frx_empresa'
        RowCount = 0
        object frx_EmpresaN_FANTASIA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'N_FANTASIA'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."N_FANTASIA"]')
          ParentFont = False
        end
        object frx_EmpresaENDERECO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 211.653680000000000000
          Top = 22.677180000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."ENDERECO"]')
          ParentFont = False
        end
        object frx_EmpresaNUMERO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."NUMERO"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Empresa:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 22.677180000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 45.354360000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object frx_EmpresaBAIRRO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 45.354360000000000000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          DataField = 'BAIRRO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."BAIRRO"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 68.031540000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object frx_EmpresaCIDADE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 68.031540000000000000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."CIDADE"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 67.031540000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object frx_EmpresaUF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 657.638220000000000000
          Top = 67.031540000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'UF'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."UF"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 585.827150000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'N'#186':')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 90.708720000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cep:')
          ParentFont = False
        end
        object frx_EmpresaCEP: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 90.708720000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."CEP"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480520000000000000
          Top = 90.708720000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
        end
        object frx_EmpresaTELEFONE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 385.512060000000000000
          Top = 90.708720000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONE'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."TELEFONE"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 502.457020000000000000
          Top = 90.708720000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object frx_EmpresaCNPJ: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 90.708720000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJ'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."CNPJ"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 124.724490000000000000
          DataField = 'LOGO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo10: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 132.283550000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RECIBO DE PAGAMENTO DE PARCELAS')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = frx_padrao
        DataSetName = 'frx_padrao'
        RowCount = 0
        object frx_padraoID_VENDA: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 26.456710000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'ID_VENDA'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."ID_VENDA"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENDA:')
          ParentFont = False
        end
        object frx_padraoID_CLIENTE: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 26.456710000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'ID_CLIENTE'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."ID_CLIENTE"]')
          ParentFont = False
        end
        object frx_padraoNOME: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 26.456710000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."NOME"]')
          ParentFont = False
        end
        object frx_padraoCPF: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 26.456710000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'CPF'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."CPF"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 7.559060000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ID_CLIENTE:')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 7.559060000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOME:')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 7.559060000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CPF:')
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
        Height = 132.283550000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        DataSet = frx_receber
        DataSetName = 'frx_receber'
        RowCount = 0
        object frx_ReceberID_SEQUENCIA: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_SEQUENCIA'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."ID_SEQUENCIA"]')
          ParentFont = False
        end
        object frx_ReceberVALOR_PARCELA: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 22.677180000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_PARCELA'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."VALOR_PARCELA"]')
          ParentFont = False
        end
        object frx_ReceberDT_VENCIMENTO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 22.677180000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'DT_VENCIMENTO'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."DT_VENCIMENTO"]')
          ParentFont = False
        end
        object frx_ReceberDT_PAGAMENTO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 22.677180000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'DT_PAGAMENTO'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."DT_PAGAMENTO"]')
          ParentFont = False
        end
        object frx_ReceberTOTAL_PAGAR: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 22.677180000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_PAGAR'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frx_receber."TOTAL_PAGAR"]')
          ParentFont = False
        end
        object frx_ReceberSTATUS: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 22.677180000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'STATUS'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."STATUS"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SEQ:')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR PARCELA:')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 230.551330000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENCIMENTO:')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 359.055350000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PGTO:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 0.779530000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SITUA'#199#195'O:')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 468.661720000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL PAGO:')
          ParentFont = False
        end
        object frx_padraoNOME1: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 52.913420000000000000
          Width = 718.110700000000000000
          Height = 79.370130000000000000
          DataField = 'NOME'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frx_padrao."NOME"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 86.929190000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Ass:____________________________________________')
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 86.929190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
        end
        object Time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 86.929190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Top = 86.929190000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '1'#170' via')
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 173.858380000000000000
        Top = 495.118430000000000000
        Width = 718.110700000000000000
        DataSet = frx_empresa
        DataSetName = 'frx_empresa'
        RowCount = 0
        object Memo23: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 11.338590000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'N_FANTASIA'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."N_FANTASIA"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 30.236240000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."ENDERECO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Empresa:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 154.960730000000000000
          Top = 30.236240000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637910000000000000
          Top = 52.913420000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Bairro:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 52.913420000000000000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          DataField = 'BAIRRO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."BAIRRO"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 75.590600000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cidade:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 75.590600000000000000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          DataField = 'CIDADE'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."CIDADE"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 74.590600000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'UF:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 98.267780000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cep:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 98.267780000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'CEP'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."CEP"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 98.267780000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 396.850650000000000000
          Top = 98.267780000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONE'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."TELEFONE"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 513.795610000000000000
          Top = 98.267780000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CNPJ:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 98.267780000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'CNPJ'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frx_empresa."CNPJ"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 139.842610000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RECIBO DE PAGAMENTO DE PARCELAS')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 128.504020000000000000
          DataField = 'LOGO'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 691.653990000000000000
        Width = 718.110700000000000000
        DataSet = frx_padrao
        DataSetName = 'frx_padrao'
        RowCount = 0
        object Memo39: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'ID_VENDA'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."ID_VENDA"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENDA:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 18.897650000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'ID_CLIENTE'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."ID_CLIENTE"]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 219.212740000000000000
          Top = 18.897650000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."NOME"]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 514.016080000000000000
          Top = 18.897650000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'CPF'
          DataSet = frx_padrao
          DataSetName = 'frx_padrao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_padrao."CPF"]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOME:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 102.047310000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'ID_CLIENTE:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 514.016080000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CPF:')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 132.283550000000000000
        Top = 763.465060000000000000
        Width = 718.110700000000000000
        DataSet = frx_receber
        DataSetName = 'frx_receber'
        RowCount = 0
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SEQ:')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'VALOR PARCELA:')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 230.551330000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'VENCIMENTO:')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Left = 359.055350000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PGTO:')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL PAGO:')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 600.945270000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SITUA'#199#195'O:')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_SEQUENCIA'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."ID_SEQUENCIA"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 18.897650000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_PARCELA'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."VALOR_PARCELA"]')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 230.551330000000000000
          Top = 18.897650000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'DT_VENCIMENTO'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."DT_VENCIMENTO"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 18.897650000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'DT_PAGAMENTO'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."DT_PAGAMENTO"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 18.897650000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_PAGAR'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frx_receber."TOTAL_PAGAR"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 600.945270000000000000
          Top = 18.897650000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'STATUS'
          DataSet = frx_receber
          DataSetName = 'frx_receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frx_receber."STATUS"]')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 86.929190000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Ass:____________________________________________')
        end
        object Memo61: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 449.764070000000000000
          Top = 86.929190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
        end
        object Memo62: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 86.929190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 650.079160000000000000
          Top = 86.929190000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '2'#170' via')
        end
        object frx_EmpresaRAZAO_SOCIAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Top = 49.133890000000000000
          Width = 714.331170000000000000
          Height = 83.149660000000000000
          DataField = 'RAZAO_SOCIAL'
          DataSet = frx_empresa
          DataSetName = 'frx_empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frx_empresa."RAZAO_SOCIAL"]')
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
        Height = 37.795300000000000000
        Top = 434.645950000000000000
        Width = 718.110700000000000000
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 702.992580000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '-------------------------------')
        end
      end
    end
  end
  object frx_padrao: TfrxDBDataset
    RangeBegin = rbCurrent
    UserName = 'frx_padrao'
    CloseDataSource = False
    DataSet = Q_padrao
    BCDToCurrency = False
    DataSetOptions = []
    Left = 352
    Top = 96
  end
  object frx_receber: TfrxDBDataset
    UserName = 'frx_receber'
    CloseDataSource = False
    DataSet = q_receber
    BCDToCurrency = False
    DataSetOptions = []
    Left = 480
    Top = 104
  end
  object frx_empresa: TfrxDBDataset
    UserName = 'frx_empresa'
    CloseDataSource = False
    DataSet = q_empresa
    BCDToCurrency = False
    DataSetOptions = []
    Left = 608
    Top = 88
  end
  object q_empresa: TFDQuery
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
    Left = 544
    Top = 296
    object q_empresaID_EMPRESA: TIntegerField
      FieldName = 'ID_EMPRESA'
      Origin = 'ID_EMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object q_empresaRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 100
    end
    object q_empresaN_FANTASIA: TStringField
      FieldName = 'N_FANTASIA'
      Origin = 'N_FANTASIA'
      Required = True
      Size = 100
    end
    object q_empresaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Required = True
      Size = 100
    end
    object q_empresaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object q_empresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Required = True
      Size = 100
    end
    object q_empresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 100
    end
    object q_empresaUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object q_empresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
      Size = 14
    end
    object q_empresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Required = True
      Size = 15
    end
    object q_empresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object q_empresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object q_empresaLOGO: TBlobField
      FieldName = 'LOGO'
      Origin = 'LOGO'
    end
    object q_empresaCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  object ds_empresa: TDataSource
    DataSet = q_empresa
    Left = 632
    Top = 288
  end
end
