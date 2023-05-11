unit RandomUUID;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TRandomUUIDForm }

  TRandomUUIDForm = class(TForm)
    ButtonGenerate: TButton;
    EditUUID: TEdit;
    Panel1: TPanel;
    procedure ButtonGenerateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function GenerateUUID: String;
  public

  end;

var
  RandomUUIDForm: TRandomUUIDForm;

implementation

{$R *.lfm}

{ TRandomUUIDForm }

procedure TRandomUUIDForm.ButtonGenerateClick(Sender: TObject);
begin
  EditUUID.Text := GenerateUUID;
end;

procedure TRandomUUIDForm.FormCreate(Sender: TObject);
begin
  EditUUID.Text := GenerateUUID;
end;

function TRandomUUIDForm.GenerateUUID: String;
var
  guid: TGUID;
  str: String;
begin
  CreateGUID(guid);
  str := GUIDToString(guid);
  result := Copy(str, 2, Length(str) - 2);
end;

end.

