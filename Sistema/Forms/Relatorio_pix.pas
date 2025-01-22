unit Relatorio_pix;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait,
  FireDAC.Phys.IBBase, Data.DB, FireDAC.Comp.Client, FireDAC.Comp.UI,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls,
  Datasnap.DBClient, Datasnap.Provider;

type
  TForm1 = class(TForm)
    Ed_datainicio: TEdit;
    Edt_DataFim: TEdit;
    Label1: TLabel;
    Lb_titulo: TLabel;
    Label2: TLabel;
    btn_buscar: TButton;
    Qry_OS: TFDQuery;
    Connection: TFDConnection;
    dbgrd_OS: TDBGrid;
    DataSource1: TDataSource;
    dbnvgr1: TDBNavigator;
    Qry_OSNUMERO_OS: TStringField;
    Qry_OSMARCA: TStringField;
    Qry_OSMODELO: TStringField;
    Qry_OSSERIAL: TStringField;
    Qry_OSCONCLUSAO_DATA: TSQLTimeStampField;
    Qry_OSCONCLUSAO_ENTREGUE: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
