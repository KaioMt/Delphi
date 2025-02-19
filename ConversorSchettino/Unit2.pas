unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Vcl.StdCtrls, FireDAC.Comp.DataSet, System.StrUtils, System.DateUtils;

type
  TForm2 = class(TForm)
    Conexao: TFDConnection;
    qr_produto: TFDQuery;
    qr_produtoCODIGO: TStringField;
    qr_produtoCODBARRA: TStringField;
    qr_produtoPRODUTO: TStringField;
    qr_produtoUNIDADE: TStringField;
    qr_produtoDATA_CADASTRO: TSQLTimeStampField;
    qr_produtoCODGRUPO: TStringField;
    qr_produtoCODSUBGRUPO: TStringField;
    qr_produtoCODFORNECEDOR: TStringField;
    qr_produtoCODMARCA: TStringField;
    qr_produtoDATA_ULTIMACOMPRA: TSQLTimeStampField;
    qr_produtoNOTAFISCAL: TStringField;
    qr_produtoPRECOCUSTO: TFloatField;
    qr_produtoPRECOVENDA: TFloatField;
    qr_produtoDATA_ULTIMAVENDA: TSQLTimeStampField;
    qr_produtoESTOQUE: TFloatField;
    qr_produtoESTOQUEMINIMO: TFloatField;
    qr_produtoCODALIQUOTA: TStringField;
    qr_produtoAPLICACAO: TMemoField;
    qr_produtoLOCALICAZAO: TStringField;
    qr_produtoPESO: TFloatField;
    qr_produtoVALIDADE: TStringField;
    qr_produtoCOMISSAO: TFloatField;
    qr_produtoUSA_BALANCA: TIntegerField;
    qr_produtoUSA_SERIAL: TIntegerField;
    qr_produtoUSA_GRADE: TIntegerField;
    qr_produtoCODRECEITA: TStringField;
    qr_produtoFOTO: TStringField;
    qr_produtoDATA_ULTIMACOMPRA_ANTERIOR: TSQLTimeStampField;
    qr_produtoNOTAFISCAL_ANTERIOR: TStringField;
    qr_produtoCODFORNECEDOR_ANTERIOR: TStringField;
    qr_produtoPRECOCUSTO_ANTERIOR: TFloatField;
    qr_produtoPRECOVENDA_ANTERIOR: TFloatField;
    qr_produtoCUSTOMEDIO: TFloatField;
    qr_produtoAUTO_APLICACAO: TStringField;
    qr_produtoAUTO_COMPLEMENTO: TStringField;
    qr_produtoDATA_REMARCACAO_CUSTO: TSQLTimeStampField;
    qr_produtoDATA_REMARCACAO_VENDA: TSQLTimeStampField;
    qr_produtoPRECO_PROMOCAO: TFloatField;
    qr_produtoDATA_PROMOCAO: TSQLTimeStampField;
    qr_produtoFIM_PROMOCAO: TSQLTimeStampField;
    qr_produtoCST: TStringField;
    qr_produtoCLASSIFICACAO_FISCAL: TStringField;
    qr_produtoNBM: TStringField;
    qr_produtoNCM: TStringField;
    qr_produtoALIQUOTA: TFloatField;
    qr_produtoIPI: TFloatField;
    qr_produtoREDUCAO: TFloatField;
    qr_produtoQTDE_EMBALAGEM: TFloatField;
    qr_produtoTIPO: TStringField;
    qr_produtoPESO_LIQUIDO: TFloatField;
    qr_produtoFARMACIA_CONTROLADO: TStringField;
    qr_produtoFARMACIA_APRESENTACAO: TIntegerField;
    qr_produtoFARMACIA_REGISTRO_MEDICAMENTO: TStringField;
    qr_produtoFARMACIA_PMC: TFloatField;
    qr_produtoULTIMA_ALTERACAO: TSQLTimeStampField;
    qr_produtoULTIMA_CARGA: TSQLTimeStampField;
    qr_produtoDATA_INVENTARIO: TSQLTimeStampField;
    qr_produtoCUSTO_INVENTARIO: TFloatField;
    qr_produtoESTOQUE_INVENTARIO: TFloatField;
    qr_produtoESTOQUE_ANTERIOR: TFloatField;
    qr_produtoPRECOVENDA_NOVO: TFloatField;
    qr_produtoUSA_RENTABILIDADE: TIntegerField;
    qr_produtoQUANTIDADE_MINIMA_FAB: TFloatField;
    qr_produtoAPRESENTACAO: TStringField;
    qr_produtoSITUACAO: TIntegerField;
    qr_produtoPRECOVENDA1: TFloatField;
    qr_produtoPRECOVENDA2: TFloatField;
    qr_produtoPRECOVENDA3: TFloatField;
    qr_produtoPRECOVENDA4: TFloatField;
    qr_produtoPRECOVENDA5: TFloatField;
    qr_produtoDESCONTO_PRECOVENDA: TFloatField;
    qr_produtoDATA_INVENTARIO_ATUAL: TSQLTimeStampField;
    qr_produtoCUSTO_INVENTARIO_ATUAL: TFloatField;
    qr_produtoESTOQUE_INVENTARIO_ATUAL: TFloatField;
    qr_produtoMARGEM_MINIMA: TFloatField;
    qr_produtoPISCOFINS: TStringField;
    qr_produtoREFERENCIA_FORNECEDOR: TStringField;
    qr_produtoCOMISSAO1: TFloatField;
    qr_produtoMARGEM_DESCONTO: TFloatField;
    qr_produtoTAMANHO: TStringField;
    qr_produtoCOR: TStringField;
    qr_produtoINCIDENCIA_PISCOFINS: TStringField;
    qr_produtoVEIC_CHASSI: TStringField;
    qr_produtoVEIC_SERIE: TStringField;
    qr_produtoVEIC_POTENCIA: TStringField;
    qr_produtoVEIC_PESO_LIQUIDO: TStringField;
    qr_produtoVEIC_PESO_BRUTO: TStringField;
    qr_produtoVEIC_TIPO_COMBUSTIVEL: TStringField;
    qr_produtoVEIC_RENAVAM: TStringField;
    qr_produtoVEIC_ANO_FABRICACAO: TIntegerField;
    qr_produtoVEIC_ANO_MODELO: TIntegerField;
    qr_produtoVEIC_TIPO: TStringField;
    qr_produtoVEIC_TIPO_PINTURA: TStringField;
    qr_produtoVEIC_COD_COR: TStringField;
    qr_produtoVEIC_COR: TStringField;
    qr_produtoVEIC_VIN: TStringField;
    qr_produtoVEIC_NUMERO_MOTOR: TStringField;
    qr_produtoVEIC_CMKG: TStringField;
    qr_produtoVEIC_CM3: TStringField;
    qr_produtoVEIC_DISTANCIA_EIXO: TStringField;
    qr_produtoVEIC_COD_MARCA: TStringField;
    qr_produtoVEIC_ESPECIE: TStringField;
    qr_produtoVEIC_CONDICAO: TStringField;
    qr_produtoLOTE_FABRICACAO: TStringField;
    qr_produtoLOTE_VALIDADE: TSQLTimeStampField;
    qr_produtoMARGEM_AGREGADA: TFloatField;
    qr_produtoCODBARRA_NOVARTIS: TStringField;
    qr_produtoFARMACIA_DCB: TStringField;
    qr_produtoFARMACIA_ABCFARMA: TStringField;
    qr_produtoFARMACIA_APRESENTACAO_CAIXA: TStringField;
    qr_produtoFARMACIA_PRINCIPIOATIVO: TStringField;
    qr_produtoULTIMA_COMPRA: TSQLTimeStampField;
    qr_produtoFARMACIA_DATAVIGENCIA: TSQLTimeStampField;
    qr_produtoFARMACIA_TIPO: TStringField;
    qr_produtoUSA_COMBUSTIVEL: TStringField;
    qr_produtoREFERENCIA: TStringField;
    qr_produtoPERDA: TFloatField;
    qr_produtoCOMPOSICAO1: TStringField;
    qr_produtoCOMPOSICAO2: TStringField;
    qr_produtoIAT: TStringField;
    qr_produtoIPPT: TStringField;
    qr_produtoSITUACAO_TRIBUTARIA: TStringField;
    qr_produtoFLAG_SIS: TStringField;
    qr_produtoFLAG_ACEITO: TStringField;
    qr_produtoFLAG_EST: TStringField;
    qr_produtoCURVAABC: TStringField;
    qr_produtoNOMEREDUZIDO: TStringField;
    qr_produtoPRECOCOMPRA: TFloatField;
    qr_produtoMARK_UP: TCurrencyField;
    qr_produtoTRIBUTACAO_ECF: TStringField;
    qr_produtoPERCENTUAL_NCM: TCurrencyField;
    qr_produtoALIQUOTA_MVA: TCurrencyField;
    qr_produtoALIQUOTARED_ICMS: TCurrencyField;
    qr_produtoSUBSTTRIBUTARIA: TStringField;
    qr_produtoCODIGOANP: TStringField;
    qr_produtoORIGEMPRODUTO: TIntegerField;
    qr_produtoGRUPODEPRECO: TStringField;
    qr_produtoCODIGOFILIAL: TStringField;
    qr_produtoOBSERVACAO: TStringField;
    qr_produtoCODIGOCEST: TStringField;
    qr_produtoDESCONTOPARACALCULOPRECOAVISTA: TCurrencyField;
    qr_produtoQTDEPARCELAS: TIntegerField;
    qr_produtoPERMITEVENDAFRACIONADA: TStringField;
    qr_produtoCODIGOSESSAO: TStringField;
    qr_produtoQTDADEMINIMA_ATACADO: TFloatField;
    qr_produtoPRECOVENDAATACADO: TFloatField;
    qr_produtoDESCONTOPRECOATACADO: TCurrencyField;
    qr_produtoDIASDEGARANTIA: TSmallintField;
    qr_produtoPRAZOPOSVENDAS: TSmallintField;
    qr_produtoKMPOSVENDAS: TSmallintField;
    qr_produtoMARK_UP_PRAZO: TCurrencyField;
    qr_produtoCODANIMAL: TStringField;
    qr_produtoGRADETAMANHOS: TStringField;
    qr_produtoCODPRODUTOGRADE_PAI: TStringField;
    qr_produtoIDPRODUTO: TStringField;
    qr_produtoSKU: TStringField;
    qr_produtoNCMSUCATA: TStringField;
    qr_produtoFINALIDADEDESMANCHE: TStringField;
    qr_produtoCODLOTEDESMANCHE: TStringField;
    qr_produtoCODPRODUTODESMANCHE: TStringField;
    qr_produtoMODELODESMANCHE: TStringField;
    qr_produtoCODBARRATRIBUTAVEL: TStringField;
    qr_produtoDESTACARGTINDFE: TStringField;
    qr_produtoREFERENCIA_TEMP1: TStringField;
    qr_produtoMARCACAO: TSmallintField;
    qr_produtoPRECOVENDAMINIMO: TFloatField;
    qr_produtoCODTIPOITEM: TSmallintField;
    qr_produtoEXPI: TStringField;
    qr_produtoCODGENEROITEM: TStringField;
    qr_produtoCOD_LST: TStringField;
    btn_carregar: TButton;
    OpenDialog1: TOpenDialog;
    Btn_Executar: TButton;
    qr_Movimento: TFDQuery;
    qr_MovimentoCODIGO: TStringField;
    qr_MovimentoDATA: TSQLTimeStampField;
    qr_MovimentoCODVENDA: TStringField;
    qr_MovimentoCODNOTAFISCALENTRADA: TStringField;
    qr_MovimentoCODNOTAFISCALSAIDA: TStringField;
    qr_MovimentoCODCUPOMFISCAL: TStringField;
    qr_MovimentoCODPRODUTO: TStringField;
    qr_MovimentoQTDE: TFloatField;
    qr_MovimentoVALORUNITARIO: TFloatField;
    qr_MovimentoVALORTOTAL: TFloatField;
    qr_MovimentoMOVIMENTO: TIntegerField;
    qr_MovimentoCODIGOFILIAL: TStringField;
    qr_MovimentoNOMEARQUIVO: TStringField;
    qr_MovimentoNUMEROITEM: TStringField;
    qr_MovimentoCODNFCE: TStringField;
    procedure btn_carregarClick(Sender: TObject);
    procedure Btn_ExecutarClick(Sender: TObject);
  private
    function zerarcodigo(codigo: string; qtde: integer): string;
    function CalculaDigEAN13(Cod: string): string;
    function StrZero(AValue, ALength: Integer): string;
    function MontaBarrasProLoja(pGrupo, pSbGrupo, pCodigo: string): String;
    function codifica(tabela: string): string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

function TForm2.codifica(tabela: string): string;
var
  Xcod: integer;
  qrmestre: TFDQuery;
begin //Aba Estoque do configurador

  qrmestre := TFDQuery.Create(nil);
  qrmestre.Connection := Conexao;
  begin
    qrmestre.close;
    qrmestre.sql.clear;
    qrmestre.sql.add('select * from c000000 where codigo =:pTab ');
    QrMestre.ParamByName('pTab').AsString := Trim(tabela);
    qrmestre.open;
    if (qrmestre.recordcount > 0) then
    begin
      if qrmestre.fieldbyname('sequencia').IsNull then
        Xcod := 1
      else
        Xcod := qrmestre.fieldbyname('sequencia').AsInteger + 1;
      if Xcod < 1 then
        Xcod := 1;
      qrmestre.close;
      qrmestre.sql.clear;
      qrmestre.sql.add('update c000000 set sequencia =:pCod where codigo = ''' + tabela + '''');
      qrmestre.ParamByName('pCod').AsInteger := Xcod;
      try
        qrmestre.execsql;
      except
        on E: Exception do
        begin
          Result := '000000';
          raise Exception.Create('No momento n�o foi poss�vel incluir no registro geral de c�digos. Tente mais tarde !' + #13 + 'Erro: ' + E.Message);
        end;
      end;
      result := Self.zerarcodigo(inttostr(Xcod), 6);
    end
    else
      raise Exception.Create('N�o foi poss�vel concluir com a opera��o !' + #13 + 'Erro: C�digo de sequ�ncia n�o encontrado na tabela de c�digos.');
  end;
  Application.ProcessMessages;
end;

procedure TForm2.Btn_ExecutarClick(Sender: TObject);
var
  ArquivoCSV : TextFile;
  Linha : String;
  Campos : TArray<String>;
begin
  if OpenDialog1.FileName = '' then
  begin
     btn_carregarClick(Self);
     exit;
  end;
  AssignFile(ArquivoCSV, OpenDialog1.FileName);

  try
    Reset(ArquivoCSV);
    Readln(ArquivoCSV, Linha);
    Readln(ArquivoCSV, Linha);
    Readln(ArquivoCSV, Linha);

//    qr_produto.Open();
    qr_Movimento.Open();
    while not Eoln(ArquivoCSV) do
    begin
      Campos := SplitString(Linha, ';') ;

       qr_Movimento.Append;
       qr_MovimentoCODIGO.AsString := self.codifica('000418');
       qr_MovimentoDATA.AsDateTime := Today;
       qr_MovimentoCODPRODUTO.AsString :=  Self.zerarcodigo(Campos[0], 6);
       qr_MovimentoQTDE.AsCurrency := StrToCurr(Campos[5]);
       qr_MovimentoVALORUNITARIO.AsInteger := 0;
       qr_MovimentoVALORTOTAL.AsInteger := 0;
       qr_MovimentoMOVIMENTO.AsInteger := 0;
       qr_MovimentoCODIGOFILIAL.AsString := '000001' ;

       qr_Movimento.Post;
//       qr_produto.Append;
//       qr_produtoCODIGO.AsString := Self.zerarcodigo(Campos[0], 6);
//       qr_produtoPRODUTO.AsString := Campos[1];
//       qr_produtoUNIDADE.AsString := Campos[2];
//       qr_produtoCLASSIFICACAO_FISCAL.AsString := StringReplace(Campos[3],'.','', [rfReplaceAll]);
//       qr_produtoNCM.AsString := StringReplace(Campos[3],'.','', [rfReplaceAll]);
//       qr_produtoESTOQUE.AsCurrency:= 0 ;
//       qr_produtoPRECOCUSTO.AsCurrency := StrToCurr(Campos[6]);
//       qr_produtoPRECOCOMPRA.AsCurrency := StrToCurr(Campos[6]);
//       qr_produtoTIPO.AsString := 'VENDA';
//
//       if Trim(Campos[12]) <> '' then
//        qr_produtoCODBARRA.AsString := Campos[12]
//       else
//        qr_produtoCODBARRA.AsString := Self.MontaBarrasProLoja('000000', '000000', qr_produtoCODIGO.AsString);
//
//       qr_produtoDATA_CADASTRO.AsDateTime := Today;
//       qr_produtoSITUACAO.AsInteger := 0;
//       qr_produtoESTOQUEMINIMO.AsInteger := 0;
//       qr_produtoUSA_BALANCA.AsInteger := 2;
//       qr_produtoUSA_SERIAL.AsInteger := 0;
//       qr_produtoUSA_GRADE.AsInteger := 0;
//       qr_produto.Post;

      Readln(ArquivoCSV, Linha);
    end;

    Conexao.Commit;
     MessageDlg('Cadastrado com sucesso', mtInformation, [mbOK], 0);
  Except
    On E:Exception do
    begin
      MessageDlg('Erro: ' + E.Message, mtError, [mbOK], 0);
      Conexao.Rollback;
    end;
  end;


end;

function TForm2.CalculaDigEAN13(Cod: string): string;
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

function TForm2.StrZero(AValue: Integer; ALength: Integer): string;
var
  base: string;
begin
  base := '%.' + IntToStr(ALength) + 'd';
  Result := Format(base, [AValue]);
end;

Function TForm2.MontaBarrasProLoja(pGrupo, pSbGrupo, pCodigo: string): String;
Begin
  If Length(Trim(pGrupo)) < 6 Then
    pGrupo := StrZero(StrToInt(pGrupo), 6);

  If Length(Trim(pSbGrupo)) < 6 Then
    pSbGrupo := StrZero(StrToInt(pSbGrupo), 6);

  Result := Copy(pGrupo, 4, 3) + Copy(pSbGrupo, 4, 3) + pCodigo +
    CalculaDigEAN13(Copy(pGrupo, 4, 3) + Copy(pSbGrupo, 4, 3) + pCodigo);
end;

function TForm2.zerarcodigo(codigo: string; qtde: integer): string;
begin
  while length(codigo) < qtde do
    codigo := '0' + codigo;
  result := codigo;
end;

procedure TForm2.btn_carregarClick(Sender: TObject);
begin
  if not OpenDialog1.Execute then
    raise Exception.Create('Arquivo n�o localizado');
end;


end.
