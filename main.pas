unit main;

interface

uses
  ClipBrd,
  RzLabel, RzEdit, RzPanel, RzStatus, RzForms, RzCommon,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Graphics,
  Vcl.StdCtrls, Vcl.Mask,
  Winapi.Windows, Winapi.Messages;

type
  TfrmMain = class(TForm)
    StatusBar: TRzStatusBar;
    RzLabel1: TRzLabel;
    editTrackingNumber: TRzEdit;
    lblTrackingURL: TRzURLLabel;
    RzStatusPane1: TRzStatusPane;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
    RzVersionInfo: TRzVersionInfo;
    RzFormState: TRzFormState;
    RzRegIniFile: TRzRegIniFile;
    procedure editTrackingNumberChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.editTrackingNumberChange(Sender: TObject);
var
  trackingNumber, trackingURL: String;
begin
  // Input field value changed
  frmMain.lblTrackingURL.Caption := '';
  trackingNumber := editTrackingNumber.Text;
  // Do we have a tracking number?
  if length(trackingNumber) > 0 then begin
    // Build the URL
    trackingURL :=
      'https://www.ups.com/track?loc=en_US&requester=QUIC&tracknum=' +
      trackingNumber + '/trackdetails';
    // Unhide the launch URL link
    frmMain.lblTrackingURL.Caption := 'Tracking URL';
    frmMain.lblTrackingURL.URL := trackingURL;
    // Copy the URL to the clipboard
    // Clipboard.AsText := trackingURL;
  end;
end;

procedure TfrmMain.FormActivate(Sender: TObject);
begin
  frmMain.RzVersionInfo.FilePath := Application.ExeName;
  frmMain.lblTrackingURL.Caption := '';
end;

end.
