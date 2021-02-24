program B3;

uses
  Vcl.Forms,
  untMain in 'src\untMain.pas' {frmMain},
  untDataModule in 'src\untDataModule.pas' {frmModulo: TDataModule},
  untFuncoes in 'src\untFuncoes.pas',
  untTB3Import in 'src\untTB3Import.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmModulo, frmModulo);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
