unit Siswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, ComCtrls,
  frxClass, frxDBSet;

type
  TFormSiswa = class(TForm)
    lblnis: TLabel;
    lblnisn: TLabel;
    lblnama: TLabel;
    lblnik: TLabel;
    lbltempatlahir: TLabel;
    lbltanggallahir: TLabel;
    lbljk: TLabel;
    lblalamat: TLabel;
    lbltelp: TLabel;
    lblhp: TLabel;
    lblstatus: TLabel;
    Edtnis: TEdit;
    Edtnisn: TEdit;
    Edtnama: TEdit;
    Edtnik: TEdit;
    Edttempatlahir: TEdit;
    Edtalamat: TEdit;
    Edttelp: TEdit;
    Edthp: TEdit;
    Edtstatus: TEdit;
    bbaru: TButton;
    bsimpan: TButton;
    bedit: TButton;
    bhapus: TButton;
    bbatal: TButton;
    dbgrd1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    cbbjk: TComboBox;
    dtp1: TDateTimePicker;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    b1: TButton;
    procedure keawal;
    procedure edtbersih;
    procedure edtenable;
    procedure FormShow(Sender: TObject);
    procedure bbaruClick(Sender: TObject);
    procedure bbatalClick(Sender: TObject);
    procedure bsimpanClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure bhapusClick(Sender: TObject);
    procedure beditClick(Sender: TObject);
    procedure b1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSiswa: TFormSiswa;
  id : string;

implementation

{$R *.dfm}


procedure TFormSiswa.edtbersih;
begin
Edtnis.Clear;
Edtnisn.Clear;
Edtnisn.Clear;
Edtnama.Clear;
Edtnik.Clear;
Edttempatlahir.Clear;
Edtalamat.Clear;
Edttelp.Clear;
Edthp.Clear;
Edtstatus.Clear;
end;

procedure TFormSiswa.edtenable;
begin
Edtnis.Enabled:= True;
Edtnisn.Enabled:= True;
Edtnama.Enabled:= True;
Edtnik.Enabled:= True;
Edttempatlahir.Enabled:= True;
cbbjk.Enabled:= True;
Edtalamat.Enabled:= True;
Edttelp.Enabled:= True;
Edthp.Enabled:= True;
Edtstatus.Enabled:= True;

end;

procedure TFormSiswa.keawal;
begin
edtbersih;
Edtnis.Enabled:= False;
Edtnisn.Enabled:= False;
Edtnama.Enabled:= False;
Edtnik.Enabled:= False;
Edttempatlahir.Enabled:= False;
cbbjk.Enabled:= False;
Edtalamat.Enabled:= False;
Edttelp.Enabled:= False;
Edthp.Enabled:= False;
Edtstatus.Enabled:= False;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= False;

end;

procedure TFormSiswa.FormShow(Sender: TObject);
begin
keawal;
end;

procedure TFormSiswa.bbaruClick(Sender: TObject);
begin
edtenable;
edtbersih;
bbaru.Enabled:= False;
bsimpan.Enabled:= True;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= True;

end;

procedure TFormSiswa.bbatalClick(Sender: TObject);
begin
keawal;
end;

procedure TFormSiswa.bsimpanClick(Sender: TObject);
begin
  if (Edtnis.Text='') or (Edtnisn.Text='') or (Edtnama.Text='') or (Edtnik.Text='') or (Edttempatlahir.Text='') or (Edtalamat.Text='') or (Edttelp.Text='') or (Edthp.Text='') or (Edtstatus.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  if (ZQuery1.Locate('nis', Edtnis.Text,[])) and (ZQuery1.Locate('nisn', Edtnisn.Text,[]))  then
  begin
    ShowMessage('DATA CUSTOMER SUDAH DIGUNAKAN!');
    keawal;
  end else
  begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into siswa values (null,"'+Edtnis.Text+'","'+Edtnisn.Text+'","'+Edtnama.Text+'","'+Edtnik.Text+'","'+Edttempatlahir.Text+'", "' + FormatDateTime('yyyy-mm-dd', dtp1.Date) + '","'+cbbjk.Text+'","'+Edtalamat.Text+'","'+Edttelp.Text+'","'+Edthp.Text+'","'+Edtstatus.Text+'")');
  ZQuery1.ExecSQL;

  //ZQuery1.Active:= False;
  //ZQuery1.Active:= True;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select*from siswa');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
  keawal;

  end;

end;

procedure TFormSiswa.dbgrd1CellClick(Column: TColumn);
begin
edtenable;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= True;
bhapus.Enabled:= True;
bbatal.Enabled:= True;

Edtnis.Text:= ZQuery1.FieldList[1].AsString;
Edtnisn.Text:= ZQuery1.FieldList[2].AsString;
Edtnama.Text:= ZQuery1.FieldList[3].AsString;
Edtnik.Text:= ZQuery1.FieldList[4].AsString;
Edttempatlahir.Text:= ZQuery1.FieldList[5].AsString;
dtp1.Date := StrToDate(ZQuery1.FieldList[6].AsString);
cbbjk.Text:= ZQuery1.FieldList[7].AsString;
Edtalamat.Text:= ZQuery1.FieldList[8].AsString;
Edttelp.Text:= ZQuery1.FieldList[9].AsString;
Edthp.Text:= ZQuery1.FieldList[10].AsString;
Edtstatus.Text:= ZQuery1.FieldList[11].AsString;

end;

procedure TFormSiswa.bhapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from siswa where id="'+id+'"');
ZQuery1.ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from siswa');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
keawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
keawal;

end;

end;

procedure TFormSiswa.beditClick(Sender: TObject);
begin
  if (Edtnis.Text='') or (Edtnisn.Text='') or (Edtnama.Text='') or (Edtnik.Text='') or (Edttempatlahir.Text='') or (Edtalamat.Text='') or (Edttelp.Text='') or (Edthp.Text='') or (Edtstatus.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
    if (Edtnis.Text = ZQuery1.FieldList[1].AsString) and (Edtnisn.Text = ZQuery1.FieldList[2].AsString) and (Edtnama.Text = ZQuery1.FieldList[3].AsString) and (Edtstatus.Text = ZQuery1.FieldList[12].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    keawal;
  end else
  begin
    id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Update siswa set nis="'+Edtnis.Text+'", nisn="'+Edtnisn.Text+'", nama="'+Edtnama.Text+'", nik="'+Edtnik.Text+'", tempat_lahir="'+Edttempatlahir.Text+'", tanggal_lahir="'+FormatDateTime('yyyy-mm-dd', dtp1.Date)+'", jk="'+cbbjk.Text+'", alamat="'+Edtalamat.Text+'", telp="'+Edttelp.Text+'", hp="'+Edthp.Text+'", status="'+Edtstatus.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select*from siswa');
  ZQuery1.Open;
  keawal;
  end;

end;

procedure TFormSiswa.b1Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
