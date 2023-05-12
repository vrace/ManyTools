unit Base64Text;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls, Base64;

type

  { TBase64TextForm }

  TBase64TextForm = class(TForm)
    ButtonEncode: TButton;
    ButtonDecode: TButton;
    GroupBoxRawText: TGroupBox;
    GroupBoxEncoded: TGroupBox;
    MemoEncoded: TMemo;
    MemoRawText: TMemo;
    PanelMain: TPanel;
    PanelButtons: TPanel;
    procedure ButtonDecodeClick(Sender: TObject);
    procedure ButtonEncodeClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private

  public

  end;

var
  Base64TextForm: TBase64TextForm;

implementation

{$R *.lfm}

{ TBase64TextForm }

procedure TBase64TextForm.FormResize(Sender: TObject);
var
  buttonWidth: Integer;
begin
  buttonWidth := PanelButtons.Width;
  buttonWidth := buttonWidth - (ButtonEncode.BorderSpacing.Around * 2);
  buttonWidth := buttonWidth - (ButtonDecode.BorderSpacing.Around * 2);
  buttonWidth := buttonWidth div 2;
  buttonEncode.Width := buttonWidth;
  buttonDecode.Width := buttonWidth;
end;

procedure TBase64TextForm.ButtonEncodeClick(Sender: TObject);
begin
  MemoEncoded.Text := EncodeStringBase64(MemoRawText.Text);
end;

procedure TBase64TextForm.ButtonDecodeClick(Sender: TObject);
begin
  MemoRawText.Text := DecodeStringBase64(MemoEncoded.Text);
end;

end.

