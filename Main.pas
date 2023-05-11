unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Menus, About, RandomHex;

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
    procedure FormCreate(Sender: TObject);
    procedure ListBoxFunctionsSelectionChange(Sender: TObject; User: boolean);
    procedure MenuItemAboutClick(Sender: TObject);
  private
    selectedFunction: String;
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

procedure TMainForm.ListBoxFunctionsSelectionChange(Sender: TObject;
  User: boolean);
var
  selected: String;
begin
  selected := ListBoxFunctions.GetSelectedText;
  if selected <> selectedFunction then
  begin
    selectedFunction := selected;
    PanelStage.Caption := '';
    LabelFunctionName.Caption := selected;
    RandomHexForm.Parent := PanelStage;
    RandomHexForm.Align := TAlign.alTop;
    RandomHexForm.Show;
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  selectedFunction := '';
end;

end.

