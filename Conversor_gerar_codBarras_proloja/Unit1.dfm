object Conversor: TConversor
  Left = 0
  Top = 0
  Caption = 'Conversor'
  ClientHeight = 209
  ClientWidth = 737
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 0
    Top = 152
    Width = 737
    Height = 40
    Align = alBottom
    Caption = 'Gerar codigos de barras'
    TabOrder = 0
    OnClick = Button1Click
    ExplicitLeft = 96
    ExplicitTop = 257
    ExplicitWidth = 113
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 192
    Width = 737
    Height = 17
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 407
  end
  object Memo1: TMemo
    Left = 0
    Top = 17
    Width = 737
    Height = 135
    Align = alTop
    TabOrder = 2
    ExplicitTop = 41
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 737
    Height = 17
    Align = alTop
    Caption = 'ERROS:'
    TabOrder = 3
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Siscom\server\bd\BASE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'SQLDialect=1'
      'DriverID=FB')
    Left = 576
    Top = 296
  end
  object qrProduto: TFDQuery
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evRowsetSize, evAutoFetchAll]
    FetchOptions.RowsetSize = 0
    Left = 576
    Top = 344
  end
end
