program SoftCaixa;

uses
  Vcl.Forms,
  Unit_Main in 'Unit_Main.pas' {FormMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
