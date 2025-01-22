program Relatorio;

uses
  Vcl.Forms,
  Relatorio_pix in '..\Forms\Relatorio_pix.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
