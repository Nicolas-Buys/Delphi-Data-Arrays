object Databaseconnection: TDatabaseconnection
  OldCreateOrder = False
  Left = 192
  Top = 124
  Height = 230
  Width = 235
  object ADOAccounts: TADOTable
    Active = True
    Connection = ADOCon
    CursorType = ctStatic
    TableName = 'AccountsTB'
    Left = 32
    Top = 56
  end
  object ADOCon: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=ElectricityBillsDB.' +
      'mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 104
    Top = 16
  end
  object ADOcustomer: TADOTable
    Active = True
    Connection = ADOCon
    CursorType = ctStatic
    TableName = 'CustomersTB'
    Left = 144
    Top = 72
  end
  object Sourcecustomer: TDataSource
    DataSet = ADOcustomer
    Left = 152
    Top = 128
  end
  object SourceAcounts: TDataSource
    DataSet = ADOAccounts
    Left = 32
    Top = 104
  end
end
