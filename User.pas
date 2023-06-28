unit User;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, ComCtrls, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls,
  frxClass, frxDBSet;

type
  TFormUser = class(TForm)
    lblnis: TLabel;
    lblnisn: TLabel;
    lblnama: TLabel;
    lblnik: TLabel;
    lbltanggallahir: TLabel;
    lbljk: TLabel;
    Edtusername: TEdit;
    Edtpassword: TEdit;
    bbaru: TButton;
    bsimpan: TButton;
    bedit: TButton;
    bhapus: TButton;
    bbatal: TButton;
    dbgrd1: TDBGrid;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    lbl1: TLabel;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    ZConnection1: TZConnection;
    cbblevel: TComboBox;
    cbbstatus: TComboBox;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    b1: TButton;
    procedure keawal;
    procedure edtbersih;
    procedure edtenable;
    procedure bbaruClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbatalClick(Sender: TObject);
    procedure bsimpanClick(Sender: TObject);
    procedure beditClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure bhapusClick(Sender: TObject);
    procedure b1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUser: TFormUser;
  MySQLDateTimedtp1: String;
  MySQLDateTimedtp2 : String;
  id : string;

implementation

{$R *.dfm}

procedure TFormUser.edtbersih;
begin
Edtusername.Clear;
Edtpassword.Clear;


end;

procedure TFormUser.edtenable;
begin
Edtusername.Enabled:= True;
Edtpassword.Enabled:= True;
cbblevel.Enabled:= True;
cbbstatus.Enabled:= True;

end;

procedure TFormUser.keawal;
begin
edtbersih;
Edtusername.Enabled:= False;
Edtpassword.Enabled:= False;
cbblevel.Enabled:= False;
cbbstatus.Enabled:= False;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= False;

end;

procedure TFormUser.bbaruClick(Sender: TObject);
begin
edtbersih;
edtenable;
bbaru.Enabled:= False;
bsimpan.Enabled:= True;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= True;

end;

procedure TFormUser.FormShow(Sender: TObject);
begin
keawal;
end;

procedure TFormUser.bbatalClick(Sender: TObject);
begin
keawal;
end;

procedure TFormUser.bsimpanClick(Sender: TObject);
begin
MySQLDateTimedtp1 := FormatDateTime('yyyy-mm-dd hh:nn:ss', dtp1.DateTime);
MySQLDateTimedtp2 := FormatDateTime('yyyy-mm-dd hh:nn:ss', dtp2.DateTime);
  if (Edtusername.Text='') or (Edtpassword.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  if (ZQuery1.Locate('username', Edtusername.Text,[])) then
  begin
    ShowMessage('DATA CUSTOMER SUDAH DIGUNAKAN!');
    keawal;
  end else
  begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into user values (null,"'+Edtusername.Text+'","'+Edtpassword.Text+'","'+cbblevel.Text+'","'+cbbstatus.Text+'",' + 'TIMESTAMP("' + MySQLDateTimedtp1 + '"), ' +
                'TIMESTAMP("' + MySQLDateTimedtp2 + '"), ' +
                'CURRENT_TIMESTAMP, ' +
                'CURRENT_TIMESTAMP)');
  ZQuery1.ExecSQL;

  //ZQuery1.Active:= False;
  //ZQuery1.Active:= True;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select*from user');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
  keawal;

  end;

end;

procedure TFormUser.beditClick(Sender: TObject);
begin
  if (Edtusername.Text='') or (Edtpassword.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  if (Edtusername.Text = ZQuery1.FieldList[1].AsString) and (Edtpassword.Text = ZQuery1.FieldList[2].AsString) and (cbblevel.Text = ZQuery1.FieldList[3].AsString) and (cbbstatus.Text = ZQuery1.FieldList[4].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    keawal;
  end else
  begin
    id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Update user set username="'+Edtusername.Text+'", password="'+Edtpassword.Text+'", level="'+cbblevel.Text+'", status="'+cbbstatus.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select*from user');
  ZQuery1.Open;
  keawal;
  end;

end;

procedure TFormUser.dbgrd1CellClick(Column: TColumn);
begin
edtenable;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= True;
bhapus.Enabled:= True;
bbatal.Enabled:= True;

Edtusername.Text:= ZQuery1.FieldList[1].AsString;
Edtpassword.Text:= ZQuery1.FieldList[2].AsString;
cbblevel.Text:= ZQuery1.FieldList[3].AsString;
cbbstatus.Text:= ZQuery1.FieldList[4].AsString;

end;

procedure TFormUser.bhapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from user where id="'+id+'"');
ZQuery1.ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from user');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
keawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
keawal;

end;

end;

procedure TFormUser.b1Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
