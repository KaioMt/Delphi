program Conversor_CodBarras_Proloja;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Conversor};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TConversor, Conversor);
  Application.Run;
end.
