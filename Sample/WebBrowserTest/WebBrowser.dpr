program WebBrowser;

uses
  System.StartUpCopy,
  FMX.Forms,
  WebBrowserUnit in 'WebBrowserUnit.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
