unit RandomHex;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TRandomHexForm }

  TRandomHexForm = class(TForm)
    ButtonGenerate: TButton;
    EditHex: TEdit;
    EditHexLength: TEdit;
    GroupBox1: TGroupBox;
    GroupBoxOptions: TGroupBox;
    Label1: TLabel;
    Panel1: TPanel;
    procedure ButtonGenerateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function GenerateHex: String;
  public

  end;

var
  RandomHexForm: TRandomHexForm;

const
  HEX_WHEEL: String = '0123456789ABCDEF';

implementation

{$R *.lfm}

{ TRandomHexForm }

procedure TRandomHexForm.FormCreate(Sender: TObject);
begin
  Randomize;
  EditHex.Text := GenerateHex;
end;

procedure TRandomHexForm.ButtonGenerateClick(Sender: TObject);
begin
  EditHex.Text := GenerateHex;
end;

function TRandomHexForm.GenerateHex(): String;
var
  i: Integer;
begin
  result := '';
  for i := 1 to StrToInt(EditHexLength.Text) do
  begin
    result := result + HEX_WHEEL[Random(Length(HEX_WHEEL)) + 1];
  end;
end;

end.

