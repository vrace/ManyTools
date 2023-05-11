unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Menus, About;

type

  { TMainForm }

  TMainForm = class(TForm)
    LabelFunctionName: TLabel;
    ListBoxFunctions: TListBox;
    MainMenuManyTools: TMainMenu;
    MenuItemHelp: TMenuItem;
    MenuItemAbout: TMenuItem;
    PanelStage: TPanel;
    PanelFunctions: TPanel;
    Splitter1: TSplitter;
    procedure MenuItemAboutClick(Sender: TObject);
  private

  public

  end;

var
  MainForm: TMainForm;

implementation

{$R *.lfm}

{ TMainForm }

procedure TMainForm.MenuItemAboutClick(Sender: TObject);
begin
  AboutForm.ShowModal;
end;

end.

