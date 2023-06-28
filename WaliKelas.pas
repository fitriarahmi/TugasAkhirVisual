unit WaliKelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ComCtrls, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TFormWaliKelas = class(TForm)
    lblnis: TLabel;
    lblnisn: TLabel;
    lblnama: TLabel;
    lblnik: TLabel;
    lbltanggallahir: TLabel;
    lbljk: TLabel;
    lblalamat: TLabel;
    lbltelp: TLabel;
    lbl1: TLabel;
    Edtnik: TEdit;
    Edtnama: TEdit;
    Edtpendidikan: TEdit;
    bbaru: TButton;
    bsimpan: TButton;
    bedit: TButton;
    bhapus: TButton;
    bbatal: TButton;
    dbgrd1: TDBGrid;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    ZConnection1: TZConnection;
    Edttelp: TEdit;
    Edtmapel: TEdit;
    Edtalamat: TEdit;
    cbbjk: TComboBox;
    cbbstatus: TComboBox;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    b1: TButton;
    procedure edtbersih;
    procedure edtenable;
    procedure keawal;
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
  FormWaliKelas: TFormWaliKelas;
  id : String;

implementation

{$R *.dfm}

{ TFormWaliKelas }


{ TFormWaliKelas }

procedure TFormWaliKelas.edtbersih;
begin
Edtnik.Clear;
Edtnama.Clear;
Edtpendidikan.Clear;
Edttelp.Clear;
Edtmapel.Clear;
end;

procedure TFormWaliKelas.edtenable;
begin
Edtnik.Enabled:= True;
Edtnama.Enabled:= True;
cbbjk.Enabled:= True;
Edtpendidikan.Enabled:= True;
Edttelp.Enabled:= True;
Edtmapel.Enabled:= True;
Edtalamat.Enabled:= True;
cbbstatus.Enabled:= True;
end;

procedure TFormWaliKelas.keawal;
begin
edtbersih;
Edtnik.Enabled:= False;
Edtnama.Enabled:= False;
cbbjk.Enabled:= False;
Edtpendidikan.Enabled:= False;
Edttelp.Enabled:= False;
Edtmapel.Enabled:= False;
Edtalamat.Enabled:= False;
cbbstatus.Enabled:= False;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= False;

end;

procedure TFormWaliKelas.FormShow(Sender: TObject);
begin
keawal;
end;

procedure TFormWaliKelas.bbaruClick(Sender: TObject);
begin
edtenable;
edtbersih;
bbaru.Enabled:= False;
bsimpan.Enabled:= True;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= True;

end;

procedure TFormWaliKelas.bbatalClick(Sender: TObject);
begin
keawal;
end;

procedure TFormWaliKelas.bsimpanClick(Sender: TObject);
begin
  if (Edtnik.Text='') or (Edtnama.Text='') or (Edtpendidikan.Text='') or (Edttelp.Text='') or (Edtmapel.Text='') or (Edtalamat.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  if (ZQuery1.Locate('nik', Edtnik.Text,[])) then
  begin
    ShowMessage('DATA CUSTOMER SUDAH DIGUNAKAN!');
    keawal;
  end else
  begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('insert into wali_kelas values (null,"'+Edtnik.Text+'","'+Edtnama.Text+'","'+cbbjk.Text+'","'+Edtpendidikan.Text+'","'+Edttelp.Text+'", "'+Edtmapel.Text+'","'+Edtalamat.Text+'","'+cbbstatus.Text+'")');
  ZQuery1.ExecSQL;

  //ZQuery1.Active:= False;
  //ZQuery1.Active:= True;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select*from wali_kelas');
  ZQuery1.Open;
  ShowMessage('DATA BERHASIL DISIMPAN');
  keawal;

  end;

end;

procedure TFormWaliKelas.dbgrd1CellClick(Column: TColumn);
begin
edtenable;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= True;
bhapus.Enabled:= True;
bbatal.Enabled:= True;

Edtnik.Text:= ZQuery1.FieldList[1].AsString;
Edtnama.Text:= ZQuery1.FieldList[2].AsString;
cbbjk.Text:= ZQuery1.FieldList[3].AsString;
Edtpendidikan.Text:= ZQuery1.FieldList[4].AsString;
Edttelp.Text:= ZQuery1.FieldList[5].AsString;
Edtmapel.Text:= ZQuery1.FieldList[6].AsString;
Edtalamat.Text:= ZQuery1.FieldList[7].AsString;
cbbstatus.Text:= ZQuery1.FieldList[8].AsString;

end;

procedure TFormWaliKelas.bhapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from wali_kelas where id="'+id+'"');
ZQuery1.ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from wali_kelas');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
keawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
keawal;

end;

end;

procedure TFormWaliKelas.beditClick(Sender: TObject);
begin
  if (Edtnik.Text='') or (Edtnama.Text='') or (Edtpendidikan.Text='') or (Edttelp.Text='') or (Edtmapel.Text='') or (Edtalamat.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
    if (Edtnik.Text = ZQuery1.FieldList[1].AsString) and (Edtnama.Text = ZQuery1.FieldList[2].AsString) and (Edtpendidikan.Text = ZQuery1.FieldList[4].AsString) and (Edtmapel.Text = ZQuery1.FieldList[6].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    keawal;
  end else
  begin
    id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Update wali_kelas set nik="'+Edtnik.Text+'", nama="'+Edtnama.Text+'", nama="'+Edtnama.Text+'", jk="'+cbbjk.Text+'", pendidikan="'+Edtpendidikan.Text+'", telp="'+Edttelp.Text+'", matpel="'+Edtmapel.Text+'", alamat="'+Edtalamat.Text+'", status="'+cbbstatus.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select*from wali_kelas');
  ZQuery1.Open;
  keawal;
  end;


end;

procedure TFormWaliKelas.b1Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
