object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 652
  ClientWidth = 1037
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 344
    Top = 80
    Width = 3
    Height = 15
  end
  object Lb_titulo: TLabel
    Left = 160
    Top = 25
    Width = 591
    Height = 35
    Caption = 'Alterar a data de fechamento das Ordens de Servi'#231'os'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 296
    Top = 101
    Width = 279
    Height = 23
    Caption = 'Coloque o periodo que foi concluida'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Ed_datainicio: TEdit
    Left = 224
    Top = 160
    Width = 121
    Height = 23
    TabOrder = 0
    Text = 'Data de inicio'
  end
  object Edt_DataFim: TEdit
    Left = 410
    Top = 160
    Width = 121
    Height = 23
    TabOrder = 1
    Text = 'Data fim'
  end
  object btn_buscar: TButton
    Left = 576
    Top = 155
    Width = 91
    Height = 33
    Caption = 'Buscar'
    TabOrder = 2
  end
  object dbgrd_OS: TDBGrid
    Left = 24
    Top = 194
    Width = 833
    Height = 295
    Ctl3D = True
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
    ParentCtl3D = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object dbnvgr1: TDBNavigator
    Left = 320
    Top = 520
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 4
  end
  object Qry_OS: TFDQuery
    Active = True
    Connection = Connection
    SQL.Strings = (
      
        'select o.codigo as numero_OS, o.marca, o.modelo, o.serial, o.con' +
        'clusao_data, o.conclusao_entregue from c000051 o'
      'where o.conclusao_data is not null or o.conclusao_data <> '#39#39)
    Left = 784
    Top = 80
    object Qry_OSNUMERO_OS: TStringField
      Alignment = taCenter
      DisplayLabel = 'NUMERO OS'
      DisplayWidth = 16
      FieldName = 'NUMERO_OS'
      Origin = 'CODIGO'
      Required = True
      Size = 6
    end
    object Qry_OSMARCA: TStringField
      DisplayWidth = 23
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 30
    end
    object Qry_OSMODELO: TStringField
      DisplayWidth = 23
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 30
    end
    object Qry_OSSERIAL: TStringField
      DisplayLabel = 'PLACA'
      DisplayWidth = 22
      FieldName = 'SERIAL'
      Origin = 'SERIAL'
      Size = 30
    end
    object Qry_OSCONCLUSAO_DATA: TSQLTimeStampField
      DisplayLabel = 'DATA DA CONCLUSAO'
      DisplayWidth = 23
      FieldName = 'CONCLUSAO_DATA'
      Origin = 'CONCLUSAO_DATA'
    end
    object Qry_OSCONCLUSAO_ENTREGUE: TSQLTimeStampField
      DisplayLabel = 'DATA DE ENTREGA'
      DisplayWidth = 23
      FieldName = 'CONCLUSAO_ENTREGUE'
      Origin = 'CONCLUSAO_ENTREGUE'
    end
  end
  object Connection: TFDConnection
    Params.Strings = (
      'Database=C:\Sistema\Exe\BASE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    Left = 696
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = Qry_OS
    Left = 784
    Top = 144
  end
end
