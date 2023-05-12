unit FunctionRouter;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms,
  RandomHex, RandomUUID,
  Base64Text;

type
  TFunctionRouter = class
  public
    function GetFunctionList: TStringList;
    function GetFunction(functionName: String): TForm;
  end;

const
  FUN_RANDOM_HEX = 'Random Hex Generator';
  FUN_RANDOM_UUID = 'Random UUID Generator';
  FUN_BASE64_TEXT = 'Base64 Text Converter';

implementation

function TFunctionRouter.GetFunctionList: TStringList;
begin
  result := TStringList.Create;
  result.AddStrings([FUN_RANDOM_HEX, FUN_RANDOM_UUID]);
  result.AddStrings([FUN_BASE64_TEXT]);
  result.Sort;
end;

function TFunctionRouter.GetFunction(functionName: String): TForm;
begin
  result := Nil;
  case functionName of
    FUN_RANDOM_HEX: result := RandomHexForm;
    FUN_RANDOM_UUID: result := RandomUUIDForm;
    FUN_BASE64_TEXT: result := Base64TextForm;
  end;
end;

end.

