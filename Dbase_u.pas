unit Dbase_u;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDatabaseconnection = class(TDataModule)
    ADOAccounts: TADOTable;
    ADOCon: TADOConnection;
    ADOcustomer: TADOTable;
    Sourcecustomer: TDataSource;
    SourceAcounts: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Databaseconnection: TDatabaseconnection;

implementation

{$R *.dfm}

end.
