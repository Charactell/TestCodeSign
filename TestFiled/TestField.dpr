program TestField;

uses
  Vcl.Forms,
  TestFieldMain in 'TestFieldMain.pas' {Form1},
  Thumb in 'Thumb.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
