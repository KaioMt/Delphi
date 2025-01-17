unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TConversor = class(TForm)
    Button1: TButton;
    FDConnection1: TFDConnection;
    qrProduto: TFDQuery;
    ProgressBar1: TProgressBar;
    Memo1: TMemo;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Conversor: TConversor;

implementation

{$R *.dfm}

function CalculaDigEAN13(Cod: string): string;
  function Par(Cod: Integer): Boolean;
  begin
    Result := Cod mod 2 = 0;
  end;

var
  i, SomaPar, SomaImpar: Integer;
begin
  SomaPar := 0;
  SomaImpar := 0;
  for i := 1 to 12 do
    if Par(i) then
      SomaPar := SomaPar + StrToInt(Cod[i])
    else
      SomaImpar := SomaImpar + StrToInt(Cod[i]);

  SomaPar := SomaPar * 3;
  i := 0;
  while i < (SomaPar + SomaImpar) do
    Inc(i, 10);
  Result := IntToStr(i - (SomaPar + SomaImpar));
end;

function StrZero(AValue: Integer; ALength: Integer): string;
var
  base: string;
begin
  base := '%.' + IntToStr(ALength) + 'd';
  Result := Format(base, [AValue]);
end;

Function MontaBarrasProLoja(pGrupo, pSbGrupo, pCodigo: string): String;
Begin
  If Length(Trim(pGrupo)) < 6 Then
    pGrupo := StrZero(StrToInt(pGrupo), 6);

  If Length(Trim(pSbGrupo)) < 6 Then
    pSbGrupo := StrZero(StrToInt(pSbGrupo), 6);

  Result := Copy(pGrupo, 4, 3) + Copy(pSbGrupo, 4, 3) + pCodigo +
    CalculaDigEAN13(Copy(pGrupo, 4, 3) + Copy(pSbGrupo, 4, 3) + pCodigo);
end;

procedure TConversor.Button1Click(Sender: TObject);
var
  codProduto, codGrupo, codSubGrupo: string;
begin
  qrProduto.Close;
  qrProduto.SQL.Clear;

  qrProduto.SQL.Add('Select * from c000025 p');
  qrProduto.SQL.Add('where p.codbarra is null');
  qrProduto.SQL.Add('or p.codbarra = ' + QuotedStr(''));
  qrProduto.SQL.Add('or p.codbarra = ' + QuotedStr('SEM GTIN'));

  qrProduto.Open();

  if qrProduto.RecordCount < 1 then
    Exit;

  ProgressBar1.Min := 0;
  ProgressBar1.Max := qrProduto.RecordCount;

  qrProduto.First;
  Memo1.Lines.Clear;
  while not qrProduto.Eof do
  begin
    try

      codProduto := qrProduto.FieldByName('CODIGO').AsString;
      codGrupo := qrProduto.FieldByName('CODGRUPO').AsString;
      codSubGrupo := qrProduto.FieldByName('CODSUBGRUPO').AsString;

      qrProduto.Edit;
      qrProduto.FieldByName('codbarra').AsString :=
        MontaBarrasProLoja(codGrupo, codSubGrupo, codProduto);
      qrProduto.Post;

      ProgressBar1.Position := qrProduto.RecNo;
      qrProduto.Next;
    except
       on E: exception do
       begin
         Memo1.Lines.Add(codProduto + ' - ' + E.Message)
       end;
    end;
  end;

  ProgressBar1.Position := 0;

end;

end.
