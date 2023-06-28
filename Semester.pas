unit Semester;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TFormSemester = class(TForm)
    lblsiswaid: TLabel;
    lblpoinid: TLabel;
    lblwaliid: TLabel;
    lblortuid: TLabel;
    lblalamat: TLabel;
    lblsemester: TLabel;
    lblstatus: TLabel;
    Edtsemester: TEdit;
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
    dtptgl: TDateTimePicker;
    b1: TButton;
    cbbsiswaid: TComboBox;
    cbbpoinid: TComboBox;
    cbbwaliid: TComboBox;
    cbbortuid: TComboBox;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure edtbersih;
    procedure edtenable;
    procedure keawal;
    procedure bbatalClick(Sender: TObject);
    procedure bbaruClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
  FormSemester: TFormSemester;
  id : String;

implementation

{$R *.dfm}

procedure TFormSemester.edtbersih;
begin
Edtsemester.Clear;
Edtstatus.Clear;
end;

procedure TFormSemester.edtenable;
begin
cbbsiswaid.Enabled:= True;
cbbpoinid.Enabled:= True;
cbbwaliid.Enabled:= True;
cbbortuid.Enabled:= True;
dtptgl.Enabled:= True;
Edtsemester.Enabled:= True;
Edtstatus.Enabled:= True;

end;

procedure TFormSemester.keawal;
begin
edtbersih;
cbbsiswaid.Enabled:= False;
cbbpoinid.Enabled:= False;
cbbwaliid.Enabled:= False;
cbbortuid.Enabled:= False;
dtptgl.Enabled:= False;
Edtsemester.Enabled:= False;
Edtstatus.Enabled:= False;


bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= False;

end;

procedure TFormSemester.bbatalClick(Sender: TObject);
begin
keawal;
end;

procedure TFormSemester.bbaruClick(Sender: TObject);
begin
edtbersih;
edtenable;
bbaru.Enabled:= False;
bsimpan.Enabled:= True;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= True;

end;

procedure TFormSemester.FormShow(Sender: TObject);
begin
  keawal;

  // Mengosongkan isi ComboBox 1 sebelum menampilkan data baru
  cbbsiswaid.Items.Clear;

  // Mengosongkan isi ComboBox 2 sebelum menampilkan data baru
  cbbpoinid.Items.Clear;

  // Mengosongkan isi ComboBox 3 sebelum menampilkan data baru
  cbbwaliid.Items.Clear;

  // Mengosongkan isi ComboBox 4 sebelum menampilkan data baru
  cbbortuid.Items.Clear;

  // Eksekusi query atau buka dataset
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT siswa_id FROM semester');
  ZQuery1.Open;

  // Ambil data dari dataset dan tambahkan ke ComboBox 1
  while not ZQuery1.Eof do
  begin
    cbbsiswaid.Items.Add(ZQuery1.FieldByName('siswa_id').AsString);
    ZQuery1.Next;
  end;

  // Tutup dataset setelah selesai mengambil data
  ZQuery1.Close;

  // Eksekusi query atau buka dataset lagi
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT ortu_id FROM semester');
  ZQuery1.Open;

  // Ambil data dari dataset dan tambahkan ke ComboBox 2
  while not ZQuery1.Eof do
  begin
    cbbortuid.Items.Add(ZQuery1.FieldByName('ortu_id').AsString);
    ZQuery1.Next;
  end;

  // Eksekusi query atau buka dataset lagi
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT poin_id FROM semester');
  ZQuery1.Open;

  // Ambil data dari dataset dan tambahkan ke ComboBox 3
  while not ZQuery1.Eof do
  begin
    cbbpoinid.Items.Add(ZQuery1.FieldByName('poin_id').AsString);
    ZQuery1.Next;
  end;

  // Tutup dataset setelah selesai mengambil data
  ZQuery1.Close;

  // Eksekusi query atau buka dataset lagi
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT wali_id FROM semester');
  ZQuery1.Open;

  // Ambil data dari dataset dan tambahkan ke ComboBox 4
  while not ZQuery1.Eof do
  begin
    cbbwaliid.Items.Add(ZQuery1.FieldByName('wali_id').AsString);
    ZQuery1.Next;
  end;

  // Set DataSource untuk TDBGrid
  dbgrd1.DataSource := ds1;

  // Buka dataset (ZQuery1) sebelum menampilkan data di TDBGrid
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM semester');
  ZQuery1.Open;
end;


procedure TFormSemester.bsimpanClick(Sender: TObject);
begin
  if (Edtsemester.Text='') or (Edtstatus.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into semester values (null,"'+cbbsiswaid.Text+'","'+cbbpoinid.Text+'","'+cbbwaliid.Text+'","'+cbbortuid.Text+'","'+FormatDateTime('yyyy-mm-dd', dtptgl.Date)+'","'+Edtsemester.Text+'","'+Edtstatus.Text+'")');
  ZQuery1.ExecSQL;

  //ZQuery1.Active:= False;
  //ZQuery1.Active:= True;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select*from semester');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
  keawal;

  end;

end;

procedure TFormSemester.dbgrd1CellClick(Column: TColumn);
begin
edtenable;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= True;
bhapus.Enabled:= True;
bbatal.Enabled:= True;

cbbsiswaid.Text:= ZQuery1.FieldList[1].AsString;
cbbpoinid.Text:= ZQuery1.FieldList[2].AsString;
cbbwaliid.Text:= ZQuery1.FieldList[3].AsString;
cbbortuid.Text:= ZQuery1.FieldList[4].AsString;
dtptgl.Date := StrToDate(ZQuery1.FieldList[5].AsString);
Edtsemester.Text:= ZQuery1.FieldList[6].AsString;
Edtstatus.Text:= ZQuery1.FieldList[7].AsString;


end;

procedure TFormSemester.bhapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from semester where id="'+id+'"');
ZQuery1.ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from semester');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
keawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
keawal;

end;

end;

procedure TFormSemester.beditClick(Sender: TObject);
begin
  if (Edtsemester.Text='') or (Edtstatus.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
    if (Edtsemester.Text = ZQuery1.FieldList[6].AsString) and (Edtstatus.Text = ZQuery1.FieldList[7].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    keawal;
  end else
  begin
    id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Update semester set siswa_id="'+cbbsiswaid.Text+'", poin_id="'+cbbpoinid.Text+'", wali_id="'+cbbwaliid.Text+'", ortu_id="'+cbbortuid.Text+'", tanggal="'+FormatDateTime('yyyy-mm-dd', dtptgl.Date)+'", semester="'+Edtsemester.Text+'", status="'+Edtstatus.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select*from semester');
  ZQuery1.Open;
  keawal;
  end;


end;

procedure TFormSemester.b1Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
