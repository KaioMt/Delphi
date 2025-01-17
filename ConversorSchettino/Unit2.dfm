object Form2: TForm2
  Left = 0
  Top = 0
  Caption = ']'
  ClientHeight = 308
  ClientWidth = 531
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btn_carregar: TButton
    Left = 200
    Top = 184
    Width = 105
    Height = 25
    Caption = 'Carregar Arquivo'
    TabOrder = 0
    OnClick = btn_carregarClick
  end
  object Btn_Executar: TButton
    Left = 216
    Top = 215
    Width = 73
    Height = 26
    Caption = 'Executar'
    TabOrder = 1
    OnClick = Btn_ExecutarClick
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=C:\Siscom\server\bd\BASE.FDB'
      'Password=masterkey'
      'User_Name=SYSDBA'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 32
  end
  object qr_produto: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from c000025'
      'where codigo is null')
    Left = 24
    Top = 32
    object qr_produtoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object qr_produtoCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Origin = 'CODBARRA'
      Size = 25
    end
    object qr_produtoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 80
    end
    object qr_produtoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Required = True
      Size = 2
    end
    object qr_produtoDATA_CADASTRO: TSQLTimeStampField
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object qr_produtoCODGRUPO: TStringField
      FieldName = 'CODGRUPO'
      Origin = 'CODGRUPO'
      Size = 6
    end
    object qr_produtoCODSUBGRUPO: TStringField
      FieldName = 'CODSUBGRUPO'
      Origin = 'CODSUBGRUPO'
      Size = 6
    end
    object qr_produtoCODFORNECEDOR: TStringField
      FieldName = 'CODFORNECEDOR'
      Origin = 'CODFORNECEDOR'
      Size = 6
    end
    object qr_produtoCODMARCA: TStringField
      FieldName = 'CODMARCA'
      Origin = 'CODMARCA'
      Size = 6
    end
    object qr_produtoDATA_ULTIMACOMPRA: TSQLTimeStampField
      FieldName = 'DATA_ULTIMACOMPRA'
      Origin = 'DATA_ULTIMACOMPRA'
    end
    object qr_produtoNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Origin = 'NOTAFISCAL'
      Size = 7
    end
    object qr_produtoPRECOCUSTO: TFloatField
      FieldName = 'PRECOCUSTO'
      Origin = 'PRECOCUSTO'
    end
    object qr_produtoPRECOVENDA: TFloatField
      FieldName = 'PRECOVENDA'
      Origin = 'PRECOVENDA'
    end
    object qr_produtoDATA_ULTIMAVENDA: TSQLTimeStampField
      FieldName = 'DATA_ULTIMAVENDA'
      Origin = 'DATA_ULTIMAVENDA'
    end
    object qr_produtoESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
    end
    object qr_produtoESTOQUEMINIMO: TFloatField
      FieldName = 'ESTOQUEMINIMO'
      Origin = 'ESTOQUEMINIMO'
    end
    object qr_produtoCODALIQUOTA: TStringField
      FieldName = 'CODALIQUOTA'
      Origin = 'CODALIQUOTA'
      Size = 5
    end
    object qr_produtoAPLICACAO: TMemoField
      FieldName = 'APLICACAO'
      Origin = 'APLICACAO'
      BlobType = ftMemo
    end
    object qr_produtoLOCALICAZAO: TStringField
      FieldName = 'LOCALICAZAO'
      Origin = 'LOCALICAZAO'
      Size = 50
    end
    object qr_produtoPESO: TFloatField
      FieldName = 'PESO'
      Origin = 'PESO'
    end
    object qr_produtoVALIDADE: TStringField
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
    end
    object qr_produtoCOMISSAO: TFloatField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
    end
    object qr_produtoUSA_BALANCA: TIntegerField
      FieldName = 'USA_BALANCA'
      Origin = 'USA_BALANCA'
    end
    object qr_produtoUSA_SERIAL: TIntegerField
      FieldName = 'USA_SERIAL'
      Origin = 'USA_SERIAL'
    end
    object qr_produtoUSA_GRADE: TIntegerField
      FieldName = 'USA_GRADE'
      Origin = 'USA_GRADE'
    end
    object qr_produtoCODRECEITA: TStringField
      FieldName = 'CODRECEITA'
      Origin = 'CODRECEITA'
      Size = 6
    end
    object qr_produtoFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'FOTO'
      Size = 80
    end
    object qr_produtoDATA_ULTIMACOMPRA_ANTERIOR: TSQLTimeStampField
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
      Origin = 'DATA_ULTIMACOMPRA_ANTERIOR'
    end
    object qr_produtoNOTAFISCAL_ANTERIOR: TStringField
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Origin = 'NOTAFISCAL_ANTERIOR'
      Size = 6
    end
    object qr_produtoCODFORNECEDOR_ANTERIOR: TStringField
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Origin = 'CODFORNECEDOR_ANTERIOR'
      Size = 6
    end
    object qr_produtoPRECOCUSTO_ANTERIOR: TFloatField
      FieldName = 'PRECOCUSTO_ANTERIOR'
      Origin = 'PRECOCUSTO_ANTERIOR'
    end
    object qr_produtoPRECOVENDA_ANTERIOR: TFloatField
      FieldName = 'PRECOVENDA_ANTERIOR'
      Origin = 'PRECOVENDA_ANTERIOR'
    end
    object qr_produtoCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      Origin = 'CUSTOMEDIO'
    end
    object qr_produtoAUTO_APLICACAO: TStringField
      FieldName = 'AUTO_APLICACAO'
      Origin = 'AUTO_APLICACAO'
      Size = 60
    end
    object qr_produtoAUTO_COMPLEMENTO: TStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Origin = 'AUTO_COMPLEMENTO'
      Size = 60
    end
    object qr_produtoDATA_REMARCACAO_CUSTO: TSQLTimeStampField
      FieldName = 'DATA_REMARCACAO_CUSTO'
      Origin = 'DATA_REMARCACAO_CUSTO'
    end
    object qr_produtoDATA_REMARCACAO_VENDA: TSQLTimeStampField
      FieldName = 'DATA_REMARCACAO_VENDA'
      Origin = 'DATA_REMARCACAO_VENDA'
    end
    object qr_produtoPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
      Origin = 'PRECO_PROMOCAO'
    end
    object qr_produtoDATA_PROMOCAO: TSQLTimeStampField
      FieldName = 'DATA_PROMOCAO'
      Origin = 'DATA_PROMOCAO'
    end
    object qr_produtoFIM_PROMOCAO: TSQLTimeStampField
      FieldName = 'FIM_PROMOCAO'
      Origin = 'FIM_PROMOCAO'
    end
    object qr_produtoCST: TStringField
      FieldName = 'CST'
      Origin = 'CST'
      Size = 10
    end
    object qr_produtoCLASSIFICACAO_FISCAL: TStringField
      FieldName = 'CLASSIFICACAO_FISCAL'
      Origin = 'CLASSIFICACAO_FISCAL'
    end
    object qr_produtoNBM: TStringField
      FieldName = 'NBM'
      Origin = 'NBM'
    end
    object qr_produtoNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
    end
    object qr_produtoALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      Origin = 'ALIQUOTA'
    end
    object qr_produtoIPI: TFloatField
      FieldName = 'IPI'
      Origin = 'IPI'
    end
    object qr_produtoREDUCAO: TFloatField
      FieldName = 'REDUCAO'
      Origin = 'REDUCAO'
    end
    object qr_produtoQTDE_EMBALAGEM: TFloatField
      FieldName = 'QTDE_EMBALAGEM'
      Origin = 'QTDE_EMBALAGEM'
    end
    object qr_produtoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 30
    end
    object qr_produtoPESO_LIQUIDO: TFloatField
      FieldName = 'PESO_LIQUIDO'
      Origin = 'PESO_LIQUIDO'
    end
    object qr_produtoFARMACIA_CONTROLADO: TStringField
      FieldName = 'FARMACIA_CONTROLADO'
      Origin = 'FARMACIA_CONTROLADO'
      Size = 1
    end
    object qr_produtoFARMACIA_APRESENTACAO: TIntegerField
      FieldName = 'FARMACIA_APRESENTACAO'
      Origin = 'FARMACIA_APRESENTACAO'
    end
    object qr_produtoFARMACIA_REGISTRO_MEDICAMENTO: TStringField
      FieldName = 'FARMACIA_REGISTRO_MEDICAMENTO'
      Origin = 'FARMACIA_REGISTRO_MEDICAMENTO'
    end
    object qr_produtoFARMACIA_PMC: TFloatField
      FieldName = 'FARMACIA_PMC'
      Origin = 'FARMACIA_PMC'
    end
    object qr_produtoULTIMA_ALTERACAO: TSQLTimeStampField
      FieldName = 'ULTIMA_ALTERACAO'
      Origin = 'ULTIMA_ALTERACAO'
    end
    object qr_produtoULTIMA_CARGA: TSQLTimeStampField
      FieldName = 'ULTIMA_CARGA'
      Origin = 'ULTIMA_CARGA'
    end
    object qr_produtoDATA_INVENTARIO: TSQLTimeStampField
      FieldName = 'DATA_INVENTARIO'
      Origin = 'DATA_INVENTARIO'
    end
    object qr_produtoCUSTO_INVENTARIO: TFloatField
      FieldName = 'CUSTO_INVENTARIO'
      Origin = 'CUSTO_INVENTARIO'
    end
    object qr_produtoESTOQUE_INVENTARIO: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO'
      Origin = 'ESTOQUE_INVENTARIO'
    end
    object qr_produtoESTOQUE_ANTERIOR: TFloatField
      FieldName = 'ESTOQUE_ANTERIOR'
      Origin = 'ESTOQUE_ANTERIOR'
    end
    object qr_produtoPRECOVENDA_NOVO: TFloatField
      FieldName = 'PRECOVENDA_NOVO'
      Origin = 'PRECOVENDA_NOVO'
    end
    object qr_produtoUSA_RENTABILIDADE: TIntegerField
      FieldName = 'USA_RENTABILIDADE'
      Origin = 'USA_RENTABILIDADE'
    end
    object qr_produtoQUANTIDADE_MINIMA_FAB: TFloatField
      FieldName = 'QUANTIDADE_MINIMA_FAB'
      Origin = 'QUANTIDADE_MINIMA_FAB'
    end
    object qr_produtoAPRESENTACAO: TStringField
      FieldName = 'APRESENTACAO'
      Origin = 'APRESENTACAO'
      Size = 60
    end
    object qr_produtoSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
    end
    object qr_produtoPRECOVENDA1: TFloatField
      FieldName = 'PRECOVENDA1'
      Origin = 'PRECOVENDA1'
    end
    object qr_produtoPRECOVENDA2: TFloatField
      FieldName = 'PRECOVENDA2'
      Origin = 'PRECOVENDA2'
    end
    object qr_produtoPRECOVENDA3: TFloatField
      FieldName = 'PRECOVENDA3'
      Origin = 'PRECOVENDA3'
    end
    object qr_produtoPRECOVENDA4: TFloatField
      FieldName = 'PRECOVENDA4'
      Origin = 'PRECOVENDA4'
    end
    object qr_produtoPRECOVENDA5: TFloatField
      FieldName = 'PRECOVENDA5'
      Origin = 'PRECOVENDA5'
    end
    object qr_produtoDESCONTO_PRECOVENDA: TFloatField
      FieldName = 'DESCONTO_PRECOVENDA'
      Origin = 'DESCONTO_PRECOVENDA'
    end
    object qr_produtoDATA_INVENTARIO_ATUAL: TSQLTimeStampField
      FieldName = 'DATA_INVENTARIO_ATUAL'
      Origin = 'DATA_INVENTARIO_ATUAL'
    end
    object qr_produtoCUSTO_INVENTARIO_ATUAL: TFloatField
      FieldName = 'CUSTO_INVENTARIO_ATUAL'
      Origin = 'CUSTO_INVENTARIO_ATUAL'
    end
    object qr_produtoESTOQUE_INVENTARIO_ATUAL: TFloatField
      FieldName = 'ESTOQUE_INVENTARIO_ATUAL'
      Origin = 'ESTOQUE_INVENTARIO_ATUAL'
    end
    object qr_produtoMARGEM_MINIMA: TFloatField
      FieldName = 'MARGEM_MINIMA'
      Origin = 'MARGEM_MINIMA'
    end
    object qr_produtoPISCOFINS: TStringField
      FieldName = 'PISCOFINS'
      Origin = 'PISCOFINS'
      Size = 1
    end
    object qr_produtoREFERENCIA_FORNECEDOR: TStringField
      FieldName = 'REFERENCIA_FORNECEDOR'
      Origin = 'REFERENCIA_FORNECEDOR'
      Size = 30
    end
    object qr_produtoCOMISSAO1: TFloatField
      FieldName = 'COMISSAO1'
      Origin = 'COMISSAO1'
    end
    object qr_produtoMARGEM_DESCONTO: TFloatField
      FieldName = 'MARGEM_DESCONTO'
      Origin = 'MARGEM_DESCONTO'
    end
    object qr_produtoTAMANHO: TStringField
      FieldName = 'TAMANHO'
      Origin = 'TAMANHO'
      Size = 6
    end
    object qr_produtoCOR: TStringField
      FieldName = 'COR'
      Origin = 'COR'
      Size = 6
    end
    object qr_produtoINCIDENCIA_PISCOFINS: TStringField
      FieldName = 'INCIDENCIA_PISCOFINS'
      Origin = 'INCIDENCIA_PISCOFINS'
      Size = 30
    end
    object qr_produtoVEIC_CHASSI: TStringField
      FieldName = 'VEIC_CHASSI'
      Origin = 'VEIC_CHASSI'
      Size = 50
    end
    object qr_produtoVEIC_SERIE: TStringField
      FieldName = 'VEIC_SERIE'
      Origin = 'VEIC_SERIE'
      Size = 50
    end
    object qr_produtoVEIC_POTENCIA: TStringField
      FieldName = 'VEIC_POTENCIA'
      Origin = 'VEIC_POTENCIA'
      Size = 50
    end
    object qr_produtoVEIC_PESO_LIQUIDO: TStringField
      FieldName = 'VEIC_PESO_LIQUIDO'
      Origin = 'VEIC_PESO_LIQUIDO'
      Size = 15
    end
    object qr_produtoVEIC_PESO_BRUTO: TStringField
      FieldName = 'VEIC_PESO_BRUTO'
      Origin = 'VEIC_PESO_BRUTO'
      Size = 15
    end
    object qr_produtoVEIC_TIPO_COMBUSTIVEL: TStringField
      FieldName = 'VEIC_TIPO_COMBUSTIVEL'
      Origin = 'VEIC_TIPO_COMBUSTIVEL'
    end
    object qr_produtoVEIC_RENAVAM: TStringField
      FieldName = 'VEIC_RENAVAM'
      Origin = 'VEIC_RENAVAM'
      Size = 50
    end
    object qr_produtoVEIC_ANO_FABRICACAO: TIntegerField
      FieldName = 'VEIC_ANO_FABRICACAO'
      Origin = 'VEIC_ANO_FABRICACAO'
    end
    object qr_produtoVEIC_ANO_MODELO: TIntegerField
      FieldName = 'VEIC_ANO_MODELO'
      Origin = 'VEIC_ANO_MODELO'
    end
    object qr_produtoVEIC_TIPO: TStringField
      FieldName = 'VEIC_TIPO'
      Origin = 'VEIC_TIPO'
      Size = 50
    end
    object qr_produtoVEIC_TIPO_PINTURA: TStringField
      FieldName = 'VEIC_TIPO_PINTURA'
      Origin = 'VEIC_TIPO_PINTURA'
      Size = 15
    end
    object qr_produtoVEIC_COD_COR: TStringField
      FieldName = 'VEIC_COD_COR'
      Origin = 'VEIC_COD_COR'
      Size = 15
    end
    object qr_produtoVEIC_COR: TStringField
      FieldName = 'VEIC_COR'
      Origin = 'VEIC_COR'
      Size = 30
    end
    object qr_produtoVEIC_VIN: TStringField
      FieldName = 'VEIC_VIN'
      Origin = 'VEIC_VIN'
      Size = 10
    end
    object qr_produtoVEIC_NUMERO_MOTOR: TStringField
      FieldName = 'VEIC_NUMERO_MOTOR'
      Origin = 'VEIC_NUMERO_MOTOR'
      Size = 50
    end
    object qr_produtoVEIC_CMKG: TStringField
      FieldName = 'VEIC_CMKG'
      Origin = 'VEIC_CMKG'
      Size = 15
    end
    object qr_produtoVEIC_CM3: TStringField
      FieldName = 'VEIC_CM3'
      Origin = 'VEIC_CM3'
      Size = 15
    end
    object qr_produtoVEIC_DISTANCIA_EIXO: TStringField
      FieldName = 'VEIC_DISTANCIA_EIXO'
      Origin = 'VEIC_DISTANCIA_EIXO'
      Size = 15
    end
    object qr_produtoVEIC_COD_MARCA: TStringField
      FieldName = 'VEIC_COD_MARCA'
      Origin = 'VEIC_COD_MARCA'
      Size = 15
    end
    object qr_produtoVEIC_ESPECIE: TStringField
      FieldName = 'VEIC_ESPECIE'
      Origin = 'VEIC_ESPECIE'
      Size = 50
    end
    object qr_produtoVEIC_CONDICAO: TStringField
      FieldName = 'VEIC_CONDICAO'
      Origin = 'VEIC_CONDICAO'
      Size = 50
    end
    object qr_produtoLOTE_FABRICACAO: TStringField
      FieldName = 'LOTE_FABRICACAO'
      Origin = 'LOTE_FABRICACAO'
    end
    object qr_produtoLOTE_VALIDADE: TSQLTimeStampField
      FieldName = 'LOTE_VALIDADE'
      Origin = 'LOTE_VALIDADE'
    end
    object qr_produtoMARGEM_AGREGADA: TFloatField
      FieldName = 'MARGEM_AGREGADA'
      Origin = 'MARGEM_AGREGADA'
    end
    object qr_produtoCODBARRA_NOVARTIS: TStringField
      FieldName = 'CODBARRA_NOVARTIS'
      Origin = 'CODBARRA_NOVARTIS'
      Size = 13
    end
    object qr_produtoFARMACIA_DCB: TStringField
      FieldName = 'FARMACIA_DCB'
      Origin = 'FARMACIA_DCB'
    end
    object qr_produtoFARMACIA_ABCFARMA: TStringField
      FieldName = 'FARMACIA_ABCFARMA'
      Origin = 'FARMACIA_ABCFARMA'
      Size = 10
    end
    object qr_produtoFARMACIA_APRESENTACAO_CAIXA: TStringField
      FieldName = 'FARMACIA_APRESENTACAO_CAIXA'
      Origin = 'FARMACIA_APRESENTACAO_CAIXA'
      Size = 10
    end
    object qr_produtoFARMACIA_PRINCIPIOATIVO: TStringField
      FieldName = 'FARMACIA_PRINCIPIOATIVO'
      Origin = 'FARMACIA_PRINCIPIOATIVO'
      Size = 30
    end
    object qr_produtoULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'ULTIMA_COMPRA'
      Origin = 'ULTIMA_COMPRA'
    end
    object qr_produtoFARMACIA_DATAVIGENCIA: TSQLTimeStampField
      FieldName = 'FARMACIA_DATAVIGENCIA'
      Origin = 'FARMACIA_DATAVIGENCIA'
    end
    object qr_produtoFARMACIA_TIPO: TStringField
      FieldName = 'FARMACIA_TIPO'
      Origin = 'FARMACIA_TIPO'
      Size = 1
    end
    object qr_produtoUSA_COMBUSTIVEL: TStringField
      FieldName = 'USA_COMBUSTIVEL'
      Origin = 'USA_COMBUSTIVEL'
      Size = 1
    end
    object qr_produtoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Size = 70
    end
    object qr_produtoPERDA: TFloatField
      FieldName = 'PERDA'
      Origin = 'PERDA'
    end
    object qr_produtoCOMPOSICAO1: TStringField
      FieldName = 'COMPOSICAO1'
      Origin = 'COMPOSICAO1'
      Size = 30
    end
    object qr_produtoCOMPOSICAO2: TStringField
      FieldName = 'COMPOSICAO2'
      Origin = 'COMPOSICAO2'
      Size = 30
    end
    object qr_produtoIAT: TStringField
      FieldName = 'IAT'
      Origin = 'IAT'
      Size = 1
    end
    object qr_produtoIPPT: TStringField
      FieldName = 'IPPT'
      Origin = 'IPPT'
      Size = 1
    end
    object qr_produtoSITUACAO_TRIBUTARIA: TStringField
      FieldName = 'SITUACAO_TRIBUTARIA'
      Origin = 'SITUACAO_TRIBUTARIA'
      Size = 1
    end
    object qr_produtoFLAG_SIS: TStringField
      FieldName = 'FLAG_SIS'
      Origin = 'FLAG_SIS'
      Size = 1
    end
    object qr_produtoFLAG_ACEITO: TStringField
      FieldName = 'FLAG_ACEITO'
      Origin = 'FLAG_ACEITO'
      Size = 3
    end
    object qr_produtoFLAG_EST: TStringField
      FieldName = 'FLAG_EST'
      Origin = 'FLAG_EST'
      Size = 1
    end
    object qr_produtoCURVAABC: TStringField
      FieldName = 'CURVAABC'
      Origin = 'CURVAABC'
      Size = 3
    end
    object qr_produtoNOMEREDUZIDO: TStringField
      FieldName = 'NOMEREDUZIDO'
      Origin = 'NOMEREDUZIDO'
      Size = 25
    end
    object qr_produtoPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
      Origin = 'PRECOCOMPRA'
    end
    object qr_produtoMARK_UP: TCurrencyField
      FieldName = 'MARK_UP'
      Origin = 'MARK_UP'
    end
    object qr_produtoTRIBUTACAO_ECF: TStringField
      FieldName = 'TRIBUTACAO_ECF'
      Origin = 'TRIBUTACAO_ECF'
      FixedChar = True
      Size = 2
    end
    object qr_produtoPERCENTUAL_NCM: TCurrencyField
      FieldName = 'PERCENTUAL_NCM'
      Origin = 'PERCENTUAL_NCM'
    end
    object qr_produtoALIQUOTA_MVA: TCurrencyField
      FieldName = 'ALIQUOTA_MVA'
      Origin = 'ALIQUOTA_MVA'
    end
    object qr_produtoALIQUOTARED_ICMS: TCurrencyField
      FieldName = 'ALIQUOTARED_ICMS'
      Origin = 'ALIQUOTARED_ICMS'
    end
    object qr_produtoSUBSTTRIBUTARIA: TStringField
      FieldName = 'SUBSTTRIBUTARIA'
      Origin = 'SUBSTTRIBUTARIA'
      FixedChar = True
      Size = 1
    end
    object qr_produtoCODIGOANP: TStringField
      FieldName = 'CODIGOANP'
      Origin = 'CODIGOANP'
      Size = 10
    end
    object qr_produtoORIGEMPRODUTO: TIntegerField
      FieldName = 'ORIGEMPRODUTO'
      Origin = 'ORIGEMPRODUTO'
    end
    object qr_produtoGRUPODEPRECO: TStringField
      FieldName = 'GRUPODEPRECO'
      Origin = 'GRUPODEPRECO'
      FixedChar = True
      Size = 6
    end
    object qr_produtoCODIGOFILIAL: TStringField
      FieldName = 'CODIGOFILIAL'
      Origin = 'CODIGOFILIAL'
      Size = 6
    end
    object qr_produtoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 5000
    end
    object qr_produtoCODIGOCEST: TStringField
      FieldName = 'CODIGOCEST'
      Origin = 'CODIGOCEST'
      Size = 7
    end
    object qr_produtoDESCONTOPARACALCULOPRECOAVISTA: TCurrencyField
      FieldName = 'DESCONTOPARACALCULOPRECOAVISTA'
      Origin = 'DESCONTOPARACALCULOPRECOAVISTA'
    end
    object qr_produtoQTDEPARCELAS: TIntegerField
      FieldName = 'QTDEPARCELAS'
      Origin = 'QTDEPARCELAS'
    end
    object qr_produtoPERMITEVENDAFRACIONADA: TStringField
      FieldName = 'PERMITEVENDAFRACIONADA'
      Origin = 'PERMITEVENDAFRACIONADA'
      FixedChar = True
      Size = 1
    end
    object qr_produtoCODIGOSESSAO: TStringField
      FieldName = 'CODIGOSESSAO'
      Origin = 'CODIGOSESSAO'
      FixedChar = True
      Size = 6
    end
    object qr_produtoQTDADEMINIMA_ATACADO: TFloatField
      FieldName = 'QTDADEMINIMA_ATACADO'
      Origin = 'QTDADEMINIMA_ATACADO'
    end
    object qr_produtoPRECOVENDAATACADO: TFloatField
      FieldName = 'PRECOVENDAATACADO'
      Origin = 'PRECOVENDAATACADO'
    end
    object qr_produtoDESCONTOPRECOATACADO: TCurrencyField
      FieldName = 'DESCONTOPRECOATACADO'
      Origin = 'DESCONTOPRECOATACADO'
    end
    object qr_produtoDIASDEGARANTIA: TSmallintField
      FieldName = 'DIASDEGARANTIA'
      Origin = 'DIASDEGARANTIA'
    end
    object qr_produtoPRAZOPOSVENDAS: TSmallintField
      FieldName = 'PRAZOPOSVENDAS'
      Origin = 'PRAZOPOSVENDAS'
    end
    object qr_produtoKMPOSVENDAS: TSmallintField
      FieldName = 'KMPOSVENDAS'
      Origin = 'KMPOSVENDAS'
    end
    object qr_produtoMARK_UP_PRAZO: TCurrencyField
      FieldName = 'MARK_UP_PRAZO'
      Origin = 'MARK_UP_PRAZO'
    end
    object qr_produtoCODANIMAL: TStringField
      FieldName = 'CODANIMAL'
      Origin = 'CODANIMAL'
      FixedChar = True
      Size = 6
    end
    object qr_produtoGRADETAMANHOS: TStringField
      FieldName = 'GRADETAMANHOS'
      Origin = 'GRADETAMANHOS'
      Size = 1
    end
    object qr_produtoCODPRODUTOGRADE_PAI: TStringField
      FieldName = 'CODPRODUTOGRADE_PAI'
      Origin = 'CODPRODUTOGRADE_PAI'
      FixedChar = True
      Size = 6
    end
    object qr_produtoIDPRODUTO: TStringField
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
      Size = 25
    end
    object qr_produtoSKU: TStringField
      FieldName = 'SKU'
      Origin = 'SKU'
      Size = 25
    end
    object qr_produtoNCMSUCATA: TStringField
      FieldName = 'NCMSUCATA'
      Origin = 'NCMSUCATA'
      Size = 10
    end
    object qr_produtoFINALIDADEDESMANCHE: TStringField
      FieldName = 'FINALIDADEDESMANCHE'
      Origin = 'FINALIDADEDESMANCHE'
      Size = 30
    end
    object qr_produtoCODLOTEDESMANCHE: TStringField
      FieldName = 'CODLOTEDESMANCHE'
      Origin = 'CODLOTEDESMANCHE'
      Size = 6
    end
    object qr_produtoCODPRODUTODESMANCHE: TStringField
      FieldName = 'CODPRODUTODESMANCHE'
      Origin = 'CODPRODUTODESMANCHE'
      Size = 6
    end
    object qr_produtoMODELODESMANCHE: TStringField
      FieldName = 'MODELODESMANCHE'
      Origin = 'MODELODESMANCHE'
      Size = 100
    end
    object qr_produtoCODBARRATRIBUTAVEL: TStringField
      FieldName = 'CODBARRATRIBUTAVEL'
      Origin = 'CODBARRATRIBUTAVEL'
      Size = 25
    end
    object qr_produtoDESTACARGTINDFE: TStringField
      FieldName = 'DESTACARGTINDFE'
      Origin = 'DESTACARGTINDFE'
      Size = 1
    end
    object qr_produtoREFERENCIA_TEMP1: TStringField
      FieldName = 'REFERENCIA_TEMP1'
      Origin = 'REFERENCIA_TEMP1'
      Size = 40
    end
    object qr_produtoMARCACAO: TSmallintField
      FieldName = 'MARCACAO'
      Origin = 'MARCACAO'
    end
    object qr_produtoPRECOVENDAMINIMO: TFloatField
      FieldName = 'PRECOVENDAMINIMO'
      Origin = 'PRECOVENDAMINIMO'
    end
    object qr_produtoCODTIPOITEM: TSmallintField
      FieldName = 'CODTIPOITEM'
      Origin = 'CODTIPOITEM'
    end
    object qr_produtoEXPI: TStringField
      FieldName = 'EXPI'
      Origin = 'EXPI'
      Size = 3
    end
    object qr_produtoCODGENEROITEM: TStringField
      FieldName = 'CODGENEROITEM'
      Origin = 'CODGENEROITEM'
      Size = 2
    end
    object qr_produtoCOD_LST: TStringField
      FieldName = 'COD_LST'
      Origin = 'COD_LST'
      Size = 5
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 400
    Top = 56
  end
  object qr_Movimento: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from c000418'
      'where codigo is null')
    Left = 24
    Top = 88
    object qr_MovimentoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object qr_MovimentoDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qr_MovimentoCODVENDA: TStringField
      FieldName = 'CODVENDA'
      Origin = 'CODVENDA'
      Size = 10
    end
    object qr_MovimentoCODNOTAFISCALENTRADA: TStringField
      FieldName = 'CODNOTAFISCALENTRADA'
      Origin = 'CODNOTAFISCALENTRADA'
      Size = 10
    end
    object qr_MovimentoCODNOTAFISCALSAIDA: TStringField
      FieldName = 'CODNOTAFISCALSAIDA'
      Origin = 'CODNOTAFISCALSAIDA'
      Size = 10
    end
    object qr_MovimentoCODCUPOMFISCAL: TStringField
      FieldName = 'CODCUPOMFISCAL'
      Origin = 'CODCUPOMFISCAL'
      Size = 15
    end
    object qr_MovimentoCODPRODUTO: TStringField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Size = 6
    end
    object qr_MovimentoQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object qr_MovimentoVALORUNITARIO: TFloatField
      FieldName = 'VALORUNITARIO'
      Origin = 'VALORUNITARIO'
    end
    object qr_MovimentoVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
    end
    object qr_MovimentoMOVIMENTO: TIntegerField
      FieldName = 'MOVIMENTO'
      Origin = 'MOVIMENTO'
    end
    object qr_MovimentoCODIGOFILIAL: TStringField
      FieldName = 'CODIGOFILIAL'
      Origin = 'CODIGOFILIAL'
      Size = 6
    end
    object qr_MovimentoNOMEARQUIVO: TStringField
      FieldName = 'NOMEARQUIVO'
      Origin = 'NOMEARQUIVO'
      Size = 500
    end
    object qr_MovimentoNUMEROITEM: TStringField
      FieldName = 'NUMEROITEM'
      Origin = 'NUMEROITEM'
      Size = 3
    end
    object qr_MovimentoCODNFCE: TStringField
      FieldName = 'CODNFCE'
      Origin = 'CODNFCE'
      Size = 6
    end
  end
end
