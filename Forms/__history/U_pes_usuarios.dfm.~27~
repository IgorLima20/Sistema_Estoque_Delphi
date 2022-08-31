inherited Frm_Pesq_Usuarios: TFrm_Pesq_Usuarios
  Caption = 'PESQUISA USU'#193'RIOS'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited bt_Pesquisar: TBitBtn
      OnClick = bt_PesquisarClick
    end
    inherited bt_Imprimir: TBitBtn
      OnClick = bt_ImprimirClick
    end
    inherited bt_Transferir: TBitBtn
      OnClick = bt_TransferirClick
    end
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_USUARIO'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'NOME USU'#193'RIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Title.Caption = 'DATA DE CADASTRO'
        Visible = True
      end>
  end
  inherited ds_pesq_padrao: TDataSource
    Left = 456
  end
  inherited Q_pesq_padrao: TFDQuery
    Active = True
    SQL.Strings = (
      'SELECT ID_USUARIO,'
      '       NOME,'
      '       TIPO,'
      '       CADASTRO'
      'FROM USUARIO'
      'ORDER BY ID_USUARIO')
    Left = 344
    object Q_pesq_padraoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_pesq_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_pesq_padraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object Q_pesq_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
  inherited DataSet_Pesq_Padrao: TfrxDBDataset
    UserName = 'frxDB_Usuarios'
  end
  inherited Rel_Pesq_Padrao: TfrxReport
    ReportOptions.CreateDate = 44761.608186030100000000
    ReportOptions.LastChange = 44762.486294166670000000
    Datasets = <
      item
        DataSet = DataSet_Pesq_Padrao
        DataSetName = 'frxDB_Usuarios'
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
      object Titulo: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 68.031540000000000000
        Top = 18.897650000000000000
        Width = 642.520100000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 642.520100000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE USU'#193'RIOS')
          ParentFont = False
        end
        object Date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 491.338900000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Time: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 548.031850000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Time]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 604.724800000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 192.756030000000000000
        Width = 642.520100000000000000
        DataSet = DataSet_Pesq_Padrao
        DataSetName = 'frxDB_Usuarios'
        RowCount = 0
        object frxDB_UsuariosID_USUARIO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ID_USUARIO'
          DataSet = DataSet_Pesq_Padrao
          DataSetName = 'frxDB_Usuarios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Usuarios."ID_USUARIO"]')
          ParentFont = False
        end
        object frxDB_UsuariosNOME: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = DataSet_Pesq_Padrao
          DataSetName = 'frxDB_Usuarios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Usuarios."NOME"]')
          ParentFont = False
        end
        object frxDB_UsuariosTIPO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 355.275820000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'TIPO'
          DataSet = DataSet_Pesq_Padrao
          DataSetName = 'frxDB_Usuarios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Usuarios."TIPO"]')
          ParentFont = False
        end
        object frxDB_UsuariosCADASTRO: TfrxMemoView
          IndexTag = 1
          Align = baWidth
          AllowVectorExport = True
          Left = 495.118430000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DataField = 'CADASTRO'
          DataSet = DataSet_Pesq_Padrao
          DataSetName = 'frxDB_Usuarios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDB_Usuarios."CADASTRO"]')
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 109.606370000000000000
        Width = 642.520100000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'c'#243'digo:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOME:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 355.275820000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TIPO:')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA:')
          ParentFont = False
        end
      end
    end
  end
end
