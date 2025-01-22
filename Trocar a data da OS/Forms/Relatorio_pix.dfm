object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 526
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object dbgrd_OS: TDBGrid
    Left = 0
    Top = 205
    Width = 734
    Height = 295
    Align = alClient
    Ctl3D = True
    DataSource = dsOs
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
    ParentCtl3D = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MECANICO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONCLUSAO_DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIAL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MODELO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTAL'
        Visible = True
      end>
  end
  object dbnvgr1: TDBNavigator
    Left = 0
    Top = 500
    Width = 734
    Height = 26
    DataSource = dsOs
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = -24
    ExplicitTop = 536
    ExplicitWidth = 672
  end
  object pnCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 734
    Height = 205
    Align = alTop
    TabOrder = 2
    ExplicitLeft = -8
    ExplicitTop = 8
    DesignSize = (
      734
      205)
    object Label1: TLabel
      Left = 344
      Top = 80
      Width = 3
      Height = 15
    end
    object Label2: TLabel
      Left = 59
      Top = 58
      Width = 279
      Height = 23
      Anchors = [akTop]
      Caption = 'Coloque o periodo que foi concluida'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Lb_titulo: TLabel
      Left = 53
      Top = 17
      Width = 591
      Height = 35
      Anchors = [akTop]
      Caption = 'Alterar a data de fechamento das Ordens de Servi'#231'os'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -25
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 24
    end
    object dtEdInicio: TDateTimePicker
      Left = 110
      Top = 117
      Width = 160
      Height = 23
      Anchors = [akTop]
      Time = 0.402276944441837300
      TabOrder = 0
      OnKeyPress = dtEdInicioKeyPress
    end
    object dtEdFim: TDateTimePicker
      Left = 312
      Top = 117
      Width = 176
      Height = 23
      Anchors = [akTop]
      Date = 45679.000000000000000000
      Time = 0.402276944441837300
      TabOrder = 1
      OnKeyPress = dtEdFimKeyPress
    end
    object btnBuscar: TButton
      Left = 1
      Top = 171
      Width = 732
      Height = 33
      Align = alBottom
      Caption = 'Buscar'
      TabOrder = 2
      OnClick = btnBuscarClick
      ExplicitLeft = 446
      ExplicitTop = 155
      ExplicitWidth = 91
    end
  end
  object qrOs: TFDQuery
    Connection = Connection
    SQL.Strings = (
      'select o.*, c.nome, f.nome as mecanico '
      'from c000051 o, c000007 c, c000008 f'
      'where o.codigo is null '
      'and o.codcliente = c.codigo'
      'and o.codatendente = f.codigo'
      '')
    Left = 528
    Top = 56
    object qrOsCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object qrOsDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object qrOsCODATENDENTE: TStringField
      FieldName = 'CODATENDENTE'
      Origin = 'CODATENDENTE'
      Size = 6
    end
    object qrOsTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 7
    end
    object qrOsCODCLIENTE: TStringField
      FieldName = 'CODCLIENTE'
      Origin = 'CODCLIENTE'
      Size = 6
    end
    object qrOsSOLICITANTE: TStringField
      FieldName = 'SOLICITANTE'
      Origin = 'SOLICITANTE'
      Size = 30
    end
    object qrOsMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 30
    end
    object qrOsMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 30
    end
    object qrOsSERIAL: TStringField
      FieldName = 'SERIAL'
      Origin = 'SERIAL'
      Size = 30
    end
    object qrOsATENDIMENTO: TStringField
      FieldName = 'ATENDIMENTO'
      Origin = 'ATENDIMENTO'
      Size = 25
    end
    object qrOsDEFEITO: TBlobField
      FieldName = 'DEFEITO'
      Origin = 'DEFEITO'
    end
    object qrOsOBS: TBlobField
      FieldName = 'OBS'
      Origin = 'OBS'
    end
    object qrOsDETECTADO: TBlobField
      FieldName = 'DETECTADO'
      Origin = 'DETECTADO'
    end
    object qrOsDETECTADO_DATA: TSQLTimeStampField
      FieldName = 'DETECTADO_DATA'
      Origin = 'DETECTADO_DATA'
    end
    object qrOsDETECTADO_CODTECNICO: TStringField
      FieldName = 'DETECTADO_CODTECNICO'
      Origin = 'DETECTADO_CODTECNICO'
      Size = 6
    end
    object qrOsSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 35
    end
    object qrOsCONCLUSAO_DATA: TSQLTimeStampField
      FieldName = 'CONCLUSAO_DATA'
      Origin = 'CONCLUSAO_DATA'
    end
    object qrOsCONCLUSAO_ENTREGUE: TSQLTimeStampField
      FieldName = 'CONCLUSAO_ENTREGUE'
      Origin = 'CONCLUSAO_ENTREGUE'
    end
    object qrOsRETIRADO_POR: TStringField
      FieldName = 'RETIRADO_POR'
      Origin = 'RETIRADO_POR'
      Size = 30
    end
    object qrOsSERVICO_SUBTOTAL: TFloatField
      FieldName = 'SERVICO_SUBTOTAL'
      Origin = 'SERVICO_SUBTOTAL'
    end
    object qrOsSERVICO_DESCONTO: TFloatField
      FieldName = 'SERVICO_DESCONTO'
      Origin = 'SERVICO_DESCONTO'
    end
    object qrOsSERVICO_TOTAL: TFloatField
      FieldName = 'SERVICO_TOTAL'
      Origin = 'SERVICO_TOTAL'
    end
    object qrOsPRODUTO_SUBTOTAL: TFloatField
      FieldName = 'PRODUTO_SUBTOTAL'
      Origin = 'PRODUTO_SUBTOTAL'
    end
    object qrOsPRODUTO_DESCONTO: TFloatField
      FieldName = 'PRODUTO_DESCONTO'
      Origin = 'PRODUTO_DESCONTO'
    end
    object qrOsPRODUTO_TOTAL: TFloatField
      FieldName = 'PRODUTO_TOTAL'
      Origin = 'PRODUTO_TOTAL'
    end
    object qrOsCODVEICULO: TStringField
      FieldName = 'CODVEICULO'
      Origin = 'CODVEICULO'
      Size = 6
    end
    object qrOsKM_INICIAL: TIntegerField
      FieldName = 'KM_INICIAL'
      Origin = 'KM_INICIAL'
    end
    object qrOsKM_FINAL: TIntegerField
      FieldName = 'KM_FINAL'
      Origin = 'KM_FINAL'
    end
    object qrOsDESLOC_COMBUSTIVEL: TFloatField
      FieldName = 'DESLOC_COMBUSTIVEL'
      Origin = 'DESLOC_COMBUSTIVEL'
    end
    object qrOsDESLOC_REFEICAO: TFloatField
      FieldName = 'DESLOC_REFEICAO'
      Origin = 'DESLOC_REFEICAO'
    end
    object qrOsDESLOC_HOSPEDAGEM: TFloatField
      FieldName = 'DESLOC_HOSPEDAGEM'
      Origin = 'DESLOC_HOSPEDAGEM'
    end
    object qrOsDESLOC_TOTAL: TFloatField
      FieldName = 'DESLOC_TOTAL'
      Origin = 'DESLOC_TOTAL'
    end
    object qrOsCODTERCEIRO: TStringField
      FieldName = 'CODTERCEIRO'
      Origin = 'CODTERCEIRO'
      Size = 6
    end
    object qrOsTERCEIRO_CONTATO: TStringField
      FieldName = 'TERCEIRO_CONTATO'
      Origin = 'TERCEIRO_CONTATO'
      Size = 30
    end
    object qrOsTERCEIRO_VALOR: TFloatField
      FieldName = 'TERCEIRO_VALOR'
      Origin = 'TERCEIRO_VALOR'
    end
    object qrOsTERCEIRO_COMISSAO: TFloatField
      FieldName = 'TERCEIRO_COMISSAO'
      Origin = 'TERCEIRO_COMISSAO'
    end
    object qrOsTERCEIRO_TOTAL: TFloatField
      FieldName = 'TERCEIRO_TOTAL'
      Origin = 'TERCEIRO_TOTAL'
    end
    object qrOsTERCEIRO_OBS: TBlobField
      FieldName = 'TERCEIRO_OBS'
      Origin = 'TERCEIRO_OBS'
    end
    object qrOsSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
    end
    object qrOsDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object qrOsACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
    end
    object qrOsTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
    end
    object qrOsMEIO_DINHEIRO: TFloatField
      FieldName = 'MEIO_DINHEIRO'
      Origin = 'MEIO_DINHEIRO'
    end
    object qrOsMEIO_CHEQUEAV: TFloatField
      FieldName = 'MEIO_CHEQUEAV'
      Origin = 'MEIO_CHEQUEAV'
    end
    object qrOsMEIO_CHEQUEAP: TFloatField
      FieldName = 'MEIO_CHEQUEAP'
      Origin = 'MEIO_CHEQUEAP'
    end
    object qrOsMEIO_CARTAOCRED: TFloatField
      FieldName = 'MEIO_CARTAOCRED'
      Origin = 'MEIO_CARTAOCRED'
    end
    object qrOsMEIO_CARTAODEB: TFloatField
      FieldName = 'MEIO_CARTAODEB'
      Origin = 'MEIO_CARTAODEB'
    end
    object qrOsMEIO_CREDIARIO: TFloatField
      FieldName = 'MEIO_CREDIARIO'
      Origin = 'MEIO_CREDIARIO'
    end
    object qrOsCODSETOR: TStringField
      FieldName = 'CODSETOR'
      Origin = 'CODSETOR'
      Size = 6
    end
    object qrOsCUPOMFISCAL: TIntegerField
      FieldName = 'CUPOMFISCAL'
      Origin = 'CUPOMFISCAL'
    end
    object qrOsST: TIntegerField
      FieldName = 'ST'
      Origin = 'ST'
    end
    object qrOsCHASSI: TStringField
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
      Size = 40
    end
    object qrOsCOR: TStringField
      FieldName = 'COR'
      Origin = 'COR'
      Size = 10
    end
    object qrOsCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
      Size = 10
    end
    object qrOsCOMBUSTIVEL_NIVEL: TFloatField
      FieldName = 'COMBUSTIVEL_NIVEL'
      Origin = 'COMBUSTIVEL_NIVEL'
    end
    object qrOsNUMERO_CUPOM_FISCAL: TIntegerField
      FieldName = 'NUMERO_CUPOM_FISCAL'
      Origin = 'NUMERO_CUPOM_FISCAL'
    end
    object qrOsCODCAIXA: TStringField
      FieldName = 'CODCAIXA'
      Origin = 'CODCAIXA'
      Size = 6
    end
    object qrOsDETECTADO_HORA: TStringField
      FieldName = 'DETECTADO_HORA'
      Origin = 'DETECTADO_HORA'
      Size = 5
    end
    object qrOsHORA: TStringField
      FieldName = 'HORA'
      Origin = 'HORA'
      Size = 5
    end
    object qrOsINTERVENCOES: TBlobField
      FieldName = 'INTERVENCOES'
      Origin = 'INTERVENCOES'
    end
    object qrOsDAV: TStringField
      FieldName = 'DAV'
      Origin = 'DAV'
      Size = 10
    end
    object qrOsDAV_IMPRESSO: TIntegerField
      FieldName = 'DAV_IMPRESSO'
      Origin = 'DAV_IMPRESSO'
    end
    object qrOsDAV_ATUAL: TStringField
      FieldName = 'DAV_ATUAL'
      Origin = 'DAV_ATUAL'
      Size = 15
    end
    object qrOsCODMARCA: TStringField
      FieldName = 'CODMARCA'
      Origin = 'CODMARCA'
      FixedChar = True
      Size = 6
    end
    object qrOsEMDICAO: TStringField
      FieldName = 'EMDICAO'
      Origin = 'EMDICAO'
      Size = 1
    end
    object qrOsUSUARIOFECHAMENTO: TStringField
      FieldName = 'USUARIOFECHAMENTO'
      Origin = 'USUARIOFECHAMENTO'
      Size = 25
    end
    object qrOsEMAILCLIENTE: TStringField
      FieldName = 'EMAILCLIENTE'
      Origin = 'EMAILCLIENTE'
      Size = 50
    end
    object qrOsFORMAPAGTO: TStringField
      FieldName = 'FORMAPAGTO'
      Origin = 'FORMAPAGTO'
      Size = 30
    end
    object qrOsCODFUNCALIBDIANTEIRA: TStringField
      FieldName = 'CODFUNCALIBDIANTEIRA'
      Origin = 'CODFUNCALIBDIANTEIRA'
      FixedChar = True
      Size = 6
    end
    object qrOsCODFUNCALIBTRASEIRA: TStringField
      FieldName = 'CODFUNCALIBTRASEIRA'
      Origin = 'CODFUNCALIBTRASEIRA'
      FixedChar = True
      Size = 6
    end
    object qrOsCODFUNAPRODAS: TStringField
      FieldName = 'CODFUNAPRODAS'
      Origin = 'CODFUNAPRODAS'
      FixedChar = True
      Size = 6
    end
    object qrOsTROCO_CREDITO: TFloatField
      FieldName = 'TROCO_CREDITO'
      Origin = 'TROCO_CREDITO'
    end
    object qrOsNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Origin = 'NOMECLIENTE'
      Size = 60
    end
    object qrOsTELEFONECLIENTE: TStringField
      FieldName = 'TELEFONECLIENTE'
      Origin = 'TELEFONECLIENTE'
      Size = 30
    end
    object qrOsCONTATOCLIENTE: TStringField
      FieldName = 'CONTATOCLIENTE'
      Origin = 'CONTATOCLIENTE'
      Size = 45
    end
    object qrOsMEDIAKMMES: TSmallintField
      FieldName = 'MEDIAKMMES'
      Origin = 'MEDIAKMMES'
    end
    object qrOsMEIO_CONVENIO: TFloatField
      FieldName = 'MEIO_CONVENIO'
      Origin = 'MEIO_CONVENIO'
    end
    object qrOsCUSTOTOTAL: TFloatField
      FieldName = 'CUSTOTOTAL'
      Origin = 'CUSTOTOTAL'
    end
    object qrOsDESCONTOPREVIOP: TCurrencyField
      FieldName = 'DESCONTOPREVIOP'
      Origin = 'DESCONTOPREVIOP'
    end
    object qrOsNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object qrOsMECANICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MECANICO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
  object Connection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Kaio\Desktop\Projetos em Delphi\Trocar a data ' +
        'da OS\Exe\BASE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 472
    Top = 56
  end
  object dsOs: TDataSource
    DataSet = qrOs
    Left = 584
    Top = 56
  end
end
