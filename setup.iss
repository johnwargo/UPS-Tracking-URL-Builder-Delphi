[Setup]
AppName=UPS Tracking URL Builder
AppPublisher=John M. Wargo
AppPublisherURL=https://johnwargo.com/
AppContact=john@johnwargo.com
AppVersion=0.0.0.12
AppVerName=UPS Tracking URL Builder
VersionInfoVersion={#SetupSetting("AppVersion")}
WizardStyle=modern
DefaultDirName={autopf}\John Wargo\
DefaultGroupName=John Wargo Utils
UninstallDisplayIcon={app}\UPSURLBuilder.exe
Compression=lzma2
SolidCompression=yes
OutputDir=installer
OutputBaseFilename=UPS Tracking URL Builder {#SetupSetting("AppVersion")}
SetupIconFile=TrackUrlUPS_Icon.ico
ArchitecturesInstallIn64BitMode=x64Compatible

[Files]
Source: "Win64\Release\UPSURLBuilder.exe"; DestDir: "{app}"

[Icons]
Name: "{group}\UPS Tracking URL Builder"; Filename: "{app}\UPSURLBuilder.exe"
