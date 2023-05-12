program ManyTools;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Main, About, RandomHex, RandomUUID, FunctionRouter, Base64Text
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Title:='Many Tools';
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.CreateForm(TRandomHexForm, RandomHexForm);
  Application.CreateForm(TRandomUUIDForm, RandomUUIDForm);
  Application.CreateForm(TBase64TextForm, Base64TextForm);
  Application.Run;
end.

