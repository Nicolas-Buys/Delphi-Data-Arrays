program ElectricityP;

uses
  Forms,
  ElectricityU in 'ElectricityU.pas' {frmQ1},
  Dbase_u in 'Dbase_u.pas' {Databaseconnection: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmQ1, frmQ1);
  Application.CreateForm(TDatabaseconnection, Databaseconnection);
  Application.Run;
end.
