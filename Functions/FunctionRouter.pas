unit FunctionRouter;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms,
  RandomHex, RandomUUID;

type
  TFunctionRouter = class
  public
    function GetFunctionList: TStringList;
    function GetFunction(functionName: String): TForm;
  end;

const
  FUN_RANDOM_HEX = 'Random Hex Generator';
  FUN_RANDOM_UUID = 'Random UUID Generator';

implementation

function TFunctionRouter.GetFunctionList: TStringList;
begin
  result := TStringList.Create;
  result.AddStrings([FUN_RANDOM_HEX, FUN_RANDOM_UUID]);
  result.Sort;
end;

function TFunctionRouter.GetFunction(functionName: String): TForm;
begin
  result := Nil;
  case functionName of
    FUN_RANDOM_HEX: result := RandomHexForm;
    FUN_RANDOM_UUID: result := RandomUUIDForm;
  end;
end;

end.

