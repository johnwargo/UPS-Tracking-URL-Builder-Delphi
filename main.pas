unit main;

interface

// TODO: Doesn't save FormState (position), not sure why.

uses
  ClipBrd,
  RzLabel, RzEdit, RzPanel, RzStatus, RzForms, RzCommon, RzButton,
  shellApi,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Graphics,
  Vcl.StdCtrls, Vcl.Mask,
  Winapi.Windows, Winapi.Messages, RzRadChk;

type
  TfrmMain = class(TForm)
    StatusBar: TRzStatusBar;
    RzLabel1: TRzLabel;
    editTrackingNumber: TRzEdit;
    RzStatusPane1: TRzStatusPane;
    RzVersionInfoStatus: TRzVersionInfoStatus;
    RzVersionInfo: TRzVersionInfo;
    btnClose: TRzButton;
    btnCopy: TRzButton;
    btnOpen: TRzButton;
    chkAutoClose: TRzCheckBox;
    RzRegIniFile: TRzRegIniFile;
    RzFormState: TRzFormState;
    procedure editTrackingNumberChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  trackingUrl: String;

implementation

{$R *.dfm}

procedure TfrmMain.btnCopyClick(Sender: TObject);
begin
  // Copy the URL to the clipboard
  Clipboard.AsText := trackingUrl;
  if frmMain.chkAutoClose.Checked then begin
    RzFormState.SaveState;
    // Close the app because we're done here
    Application.Terminate();
  end;
end;

procedure TfrmMain.btnOpenClick(Sender: TObject);
begin
  if Length(trackingUrl) > 0 then begin
    // Open the default browser with the tracking URL
    ShellExecute(0, 'open', PChar(trackingUrl), '', '', SW_SHOWNORMAL);
    if frmMain.chkAutoClose.Checked then begin
      RzFormState.SaveState;
      // Close the app because we're done here
      Application.Terminate();
    end;
  end else begin
    showMessage('Nothing to do here, the tracking URL is empty');
  end;
end;

procedure TfrmMain.btnCloseClick(Sender: TObject);
begin
  Application.Terminate();
end;

procedure TfrmMain.editTrackingNumberChange(Sender: TObject);
var
  hasTrackingNumber: Boolean;
  trackingNumber: String;
begin
  // Input field value changed, get the new tracking number
  trackingNumber := editTrackingNumber.Text;
  // Do we have a tracking number?
  hasTrackingNumber := Length(trackingNumber) > 0;
  // Updated the UI based on it existing
  btnCopy.Visible := hasTrackingNumber;
  btnOpen.Visible := hasTrackingNumber;

  // Now update the tracking URL if we have a tracking number
  if hasTrackingNumber then begin
    trackingUrl :=
      'https://www.ups.com/track?loc=en_US&requester=QUIC&tracknum=' +
      trackingNumber + '/trackdetails';
  end else begin
    trackingUrl := '';
  end;
end;

procedure TfrmMain.FormActivate(Sender: TObject);
begin
  frmMain.editTrackingNumber.SetFocus;
end;

end.
