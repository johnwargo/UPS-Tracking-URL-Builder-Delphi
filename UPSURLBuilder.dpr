program UPSURLBuilder;

uses
  Vcl.Forms,
  main in 'main.pas' {frmMain},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.Title := 'UPS Tracking URL Launcher';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
