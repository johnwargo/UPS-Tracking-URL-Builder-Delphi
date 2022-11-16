unit main;

interface

uses
  ClipBrd,
  RzLabel, RzEdit, RzPanel, RzStatus, RzForms, RzCommon, RzButton,
  shellApi,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Graphics,
  Vcl.StdCtrls, Vcl.Mask,
  Winapi.Windows, Winapi.Messages;

type
  TfrmMain = class(TForm)
    StatusBar: TRzStatusBar;
    RzLabel1: TRzLabel;
    editTrackingNumber: TRzEdit;
    RzStatusPane1: TRzStatusPane;
    RzVersionInfoStatus1: TRzVersionInfoStatus;
    RzVersionInfo: TRzVersionInfo;
    RzFormState: TRzFormState;
    RzRegIniFile: TRzRegIniFile;
    btnClose: TRzButton;
    btnCopy: TRzButton;
    btnOpen: TRzButton;
    procedure editTrackingNumberChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
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

procedure TfrmMain.btnOpenClick(Sender: TObject);
begin
  if Length(trackingUrl) > 0 then begin
    ShellExecute(0, 'open', PChar(trackingUrl), '', '', SW_SHOWNORMAL);
    Application.Terminate();
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
  haveTrackingNumber: Boolean;
  trackingNumber: String;
begin
  // Input field value changed, get the new tracking number
  trackingNumber := editTrackingNumber.Text;
  haveTrackingNumber := Length(trackingNumber) > 0;
  btnCopy.Visible := haveTrackingNumber;
  btnOpen.Visible := haveTrackingNumber;

  if haveTrackingNumber then begin
    trackingUrl :=
      'https://www.ups.com/track?loc=en_US&requester=QUIC&tracknum=' +
      trackingNumber + '/trackdetails';
  end else begin
    trackingUrl := '';
  end;
end;

procedure TfrmMain.FormActivate(Sender: TObject);
begin
  frmMain.RzVersionInfo.FilePath := Application.ExeName;
end;

end.
