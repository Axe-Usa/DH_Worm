program DH_Worm;

uses
  Vcl.Forms,
  worm in 'worm.pas' {FormHome},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Charcoal Dark Slate');
  Application.CreateForm(TFormHome, FormHome);
  Application.Run;
end.
