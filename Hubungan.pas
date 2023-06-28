unit Hubungan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Grids, DBGrids, StdCtrls, frxClass, frxDBSet;

type
  TFormHubungan = class(TForm)
    lblsiswaid: TLabel;
    lblortuid: TLabel;
    lblstatushubanak: TLabel;
    lbljk: TLabel;
    lblstatusortu: TLabel;
    bbaru: TButton;
    bsimpan: TButton;
    bedit: TButton;
    bhapus: TButton;
    bbatal: TButton;
    dbgrd1: TDBGrid;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    lblket: TLabel;
    ZConnection1: TZConnection;
    Edtstatushubanak: TEdit;
    Edtket: TEdit;
    Edtstatusortu: TEdit;
    cbbsiswaid: TComboBox;
    cbbortuid: TComboBox;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    b1: TButton;
    procedure edtbersih;
    procedure edtenable;
    procedure keawal;
    procedure bbaruClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbatalClick(Sender: TObject);
    procedure bsimpanClick(Sender: TObject);
    procedure bhapusClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure beditClick(Sender: TObject);
    procedure b1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHubungan: TFormHubungan;
  id : string;

implementation

{$R *.dfm}

procedure TFormHubungan.edtbersih;
begin
Edtstatushubanak.Clear;
Edtket.Clear;
Edtstatusortu.Clear;
end;

procedure TFormHubungan.edtenable;
begin
cbbsiswaid.Enabled:= True;
cbbortuid.Enabled:= True;
Edtstatushubanak.Enabled:= True;
Edtket.Enabled:= True;
Edtstatusortu.Enabled:= True;

end;

procedure TFormHubungan.keawal;
begin
edtbersih;
cbbsiswaid.Enabled:= False;
cbbortuid.Enabled:= False;
Edtstatushubanak.Enabled:= False;
Edtket.Enabled:= False;
Edtstatusortu.Enabled:= False;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= False;


end;

procedure TFormHubungan.bbaruClick(Sender: TObject);
begin
edtbersih;
edtenable;
bbaru.Enabled:= False;
bsimpan.Enabled:= True;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= True;

end;

procedure TFormHubungan.FormShow(Sender: TObject);
begin
  keawal;

  // Mengosongkan isi ComboBox 1 sebelum menampilkan data baru
  cbbsiswaid.Items.Clear;

  // Mengosongkan isi ComboBox 2 sebelum menampilkan data baru
  cbbortuid.Items.Clear;

  // Eksekusi query atau buka dataset
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT siswa_id FROM hubungan');
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
  ZQuery1.SQL.Add('SELECT ortu_id FROM hubungan');
  ZQuery1.Open;

  // Ambil data dari dataset dan tambahkan ke ComboBox 2
  while not ZQuery1.Eof do
  begin
    cbbortuid.Items.Add(ZQuery1.FieldByName('ortu_id').AsString);
    ZQuery1.Next;
  end;

  // Set DataSource untuk TDBGrid
  dbgrd1.DataSource := ds1;

  // Buka dataset (ZQuery1) sebelum menampilkan data di TDBGrid
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select*from hubungan');
  ZQuery1.Open;
end;

procedure TFormHubungan.bbatalClick(Sender: TObject);
begin
keawal;
end;

procedure TFormHubungan.bsimpanClick(Sender: TObject);
begin
  if (Edtstatushubanak.Text='') or (Edtket.Text='') or (Edtstatusortu.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into hubungan values (null,"'+cbbsiswaid.Text+'","'+cbbortuid.Text+'","'+Edtstatushubanak.Text+'","'+Edtket.Text+'","'+Edtstatusortu.Text+'")');
  ZQuery1.ExecSQL;

  //ZQuery1.Active:= False;
  //ZQuery1.Active:= True;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select*from hubungan');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
  keawal;

  end;


end;

procedure TFormHubungan.bhapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from hubungan where id="'+id+'"');
ZQuery1.ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from hubungan');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
keawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
keawal;

end;

end;

procedure TFormHubungan.dbgrd1CellClick(Column: TColumn);
begin
edtenable;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= True;
bhapus.Enabled:= True;
bbatal.Enabled:= True;

cbbsiswaid.Text:= ZQuery1.FieldList[1].AsString;
cbbortuid.Text:= ZQuery1.FieldList[2].AsString;
Edtstatushubanak.Text:= ZQuery1.FieldList[3].AsString;
Edtket.Text:= ZQuery1.FieldList[4].AsString;
Edtstatusortu.Text:= ZQuery1.FieldList[5].AsString;

end;

procedure TFormHubungan.beditClick(Sender: TObject);
begin
  if (Edtstatushubanak.Text='') or (Edtket.Text='') or (Edtstatusortu.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  if (cbbsiswaid.Text = ZQuery1.FieldList[1].AsString) and (cbbortuid.Text = ZQuery1.FieldList[2].AsString) and (Edtstatushubanak.Text = ZQuery1.FieldList[3].AsString) and (Edtket.Text = ZQuery1.FieldList[4].AsString) and (Edtstatusortu.Text = ZQuery1.FieldList[5].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    keawal;
  end else
  begin
    id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Update hubungan set siswa_id="'+cbbsiswaid.Text+'", ortu_id="'+cbbortuid.Text+'", status_hub_anak="'+Edtstatushubanak.Text+'", keterangan="'+Edtket.Text+'", status_ortu="'+Edtstatusortu.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select*from hubungan');
  ZQuery1.Open;
  keawal;
  end;

end;

procedure TFormHubungan.b1Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
