unit ElectricityU;

interface
 // your name
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, DBGrids, DB, ADODB, ExtCtrls, dbase_u,
  ComCtrls;
type arrstring = array[1..50] of string;
type
  TfrmQ1 = class(TForm)
    DBOutput: TDBGrid;
    bmbclose: TBitBtn;
    btnload: TButton;
    ComboBox1: TComboBox;
    Display: TButton;
    RichEdit1: TRichEdit;


    procedure btnloadClick(Sender: TObject);
    procedure DisplayClick(Sender: TObject);


  private
  icount : integer;
  arrcust,arrcomptype,arrarea:arrstring;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmQ1: TfrmQ1;

implementation

{$R *.dfm}


procedure TfrmQ1.btnloadclick(Sender: TObject);
var itot, imax , icount : integer;
begin             //btnStats
 itot :=0;
 imax :=0;
 icount :=0;
 with  Databaseconnection do
 begin
   ADOcustomer.open;
   ADOcustomer.first;
   while ADOcustomer.Eof = false do
   begin
     inc(icount);
     arrcust[icount]:= ADOcustomer['customerid'] ;
     arrcomptype[icount] :=  ADOcustomer['customerType'];
     arrarea[icount] := ADOcustomer['suburb'] ;
     ADOcustomer.Next;
   end;//while
   DBOutput.Visible := false;
   RichEdit1.Visible := true;
 end;

end;








procedure TfrmQ1.DisplayClick(Sender: TObject);
var itot, imax , icount, iloop, icheck, icomp : integer;
     scomp:string;
     bgood:boolean
begin
 itot :=0;
 imax :=0;
 icount :=0;
 for iloop := 1 to icount do
 begin
   scomp:=arrcomp[iloop];
   bgood:=false;
   for icheck := 1 to icomp  do
   begin
     if scomp= arrcomptype[icheck] then
     bgood:=true;
   end;
   if bgood=false then
   begin
     Inc(icomp);
     arrcomptype:=scomp;
   end;

 end;

end;

end.


