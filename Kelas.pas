unit Kelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, frxClass, frxDBSet;

type
  TFormKelas = class(TForm)
    lblnama: TLabel;
    lbljenis: TLabel;
    lbljurusan: TLabel;
    Edtnama: TEdit;
    Edtjenis: TEdit;
    bbaru: TButton;
    bsimpan: TButton;
    bedit: TButton;
    bhapus: TButton;
    bbatal: TButton;
    dbgrd1: TDBGrid;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    ds1: TDataSource;
    cbbjurusan: TComboBox;
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
    procedure bhapusClick(Sender: TObject);
    procedure beditClick(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure b1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormKelas: TFormKelas;
  id : string;

implementation

{$R *.dfm}

procedure TFormKelas.edtbersih;
begin
Edtnama.Clear;
Edtjenis.Clear;
end;

procedure TFormKelas.edtenable;
begin
Edtnama.Enabled:= True;
Edtjenis.Enabled:= True;
cbbjurusan.Enabled:= True;

end;

procedure TFormKelas.keawal;
begin
edtbersih;
Edtnama.Enabled:= False;
Edtjenis.Enabled:= False;
cbbjurusan.Enabled:= False;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= False;

end;

procedure TFormKelas.bbaruClick(Sender: TObject);
begin
edtbersih;
edtenable;
bbaru.Enabled:= False;
bsimpan.Enabled:= True;
bedit.Enabled:= False;
bhapus.Enabled:= False;
bbatal.Enabled:= True;

end;

procedure TFormKelas.FormShow(Sender: TObject);
begin
keawal;
end;

procedure TFormKelas.bbatalClick(Sender: TObject);
begin
keawal;
end;

procedure TFormKelas.bsimpanClick(Sender: TObject);
begin
if (Edtnama.Text = '') or (Edtjenis.Text = '') then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG!');
end
else
begin
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('INSERT INTO kelas VALUES (null, "' + Edtnama.Text + '", "' + Edtjenis.Text + '", "' + cbbjurusan.Text + '")');
  ZQuery1.ExecSQL;

  ZQuery1.Close;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('SELECT * FROM kelas');
  ZQuery1.Open;
  
  ShowMessage('DATA BERHASIL DISIMPAN');
  keawal;
end;


end;

procedure TFormKelas.bhapusClick(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add(' delete from kelas where id="'+id+'"');
ZQuery1.ExecSQL;
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from kelas');
ZQuery1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
keawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
keawal;

end;

end;

procedure TFormKelas.beditClick(Sender: TObject);
begin
if (Edtnama.Text='') or (Edtjenis.Text='') then
  begin
    ShowMessage('DATA TIDAK BOLEH KOSONG!');
  end else
  if (Edtnama.Text = ZQuery1.FieldList[1].AsString) and (Edtjenis.Text = ZQuery1.FieldList[2].AsString) and (cbbjurusan.Text = ZQuery1.FieldList[3].AsString) then
  begin
    ShowMessage('DATA TIDAK ADA PERUBAHAN');
    keawal;
  end else
  begin
    id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
  ShowMessage('DATA BERHASIL DI UPDATE!');
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('Update kelas set nama="'+Edtnama.Text+'", jenis="'+Edtjenis.Text+'", jurusan="'+cbbjurusan.Text+'" where id="'+id+'"');
  ZQuery1.ExecSQL;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select*from kelas');
  ZQuery1.Open;
  keawal;
  end;

end;

procedure TFormKelas.dbgrd1CellClick(Column: TColumn);
begin
edtenable;

bbaru.Enabled:=True;
bsimpan.Enabled:= False;
bedit.Enabled:= True;
bhapus.Enabled:= True;
bbatal.Enabled:= True;

Edtnama.Text:= ZQuery1.FieldList[1].AsString;
Edtjenis.Text:= ZQuery1.FieldList[2].AsString;
cbbjurusan.Text:= ZQuery1.FieldList[3].AsString;


end;

procedure TFormKelas.b1Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
