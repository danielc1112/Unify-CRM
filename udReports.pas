unit udReports;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons;

type
  TdReports = class(TForm)
    btnUserHistory: TSpeedButton;
    btnContactsByPostcode: TSpeedButton;
    btnDuplicates: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnUserHistoryClick(Sender: TObject);
    procedure btnContactsByPostcodeClick(Sender: TObject);
    procedure btnDuplicatesClick(Sender: TObject);
  private

  public
    { Public declarations }
  end;

implementation

uses udUserHistory, udContactsByP, udDuplicateContacts;
   
{$R *.dfm}

procedure TdReports.btnDuplicatesClick(Sender: TObject);
begin
   Duplicates(Self);
end;

procedure TdReports.btnContactsByPostcodeClick(Sender: TObject);
begin
   ContactsByPostcode(Self);
end;

procedure TdReports.btnUserHistoryClick(Sender: TObject);
begin
   UserHistory(Self);
end;

procedure TdReports.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_ESCAPE then
      Close;
end;

end.
