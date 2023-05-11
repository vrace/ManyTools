unit Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TMainForm }

  TMainForm = class(TForm)
    LabelFunctionName: TLabel;
    ListBoxFunctions: TListBox;
    PanelStage: TPanel;
    PanelFunctions: TPanel;
    Splitter1: TSplitter;
  private

  public

  end;

var
  MainForm: TMainForm;

implementation

{$R *.lfm}

end.

