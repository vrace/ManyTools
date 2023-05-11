unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Menus, About, RandomHex, RandomUUID;

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
    selectedForm: TForm;
    function SelectFunctionForm(selected: String): TForm;
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
    if selectedForm <> Nil then
    begin
      selectedForm.Hide;
    end;

    selectedForm := SelectFunctionForm(selected);
    if selectedForm <> Nil then
    begin
      selectedForm.Parent := PanelStage;
      selectedForm.Align := TAlign.alTop;
      selectedForm.Show;
    end;
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  selectedFunction := '';
  selectedForm := Nil;
end;

function TMainForm.SelectFunctionForm(selected: String): TForm;
begin
  case selected of
    'Random Hex Generator': result := RandomHexForm;
    'Random UUID Generator': result := RandomUUIDForm;
  else
    result := Nil;
  end;
end;

end.

