program Laporan_siswa;

uses
  Forms,
  Siswa in 'Siswa.pas' {FormSiswa},
  Menu in 'Menu.pas' {MenuUtama},
  OrangTua in 'OrangTua.pas' {FormOrangTua},
  User in 'User.pas' {FormUser},
  Hubungan in 'Hubungan.pas' {FormHubungan},
  Semester in 'Semester.pas' {FormSemester},
  WaliKelas in 'WaliKelas.pas' {FormWaliKelas},
  Poin in 'Poin.pas' {FormPoin},
  Kelas in 'Kelas.pas' {FormKelas};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMenuUtama, MenuUtama);
  Application.CreateForm(TFormSiswa, FormSiswa);
  Application.CreateForm(TFormOrangTua, FormOrangTua);
  Application.CreateForm(TFormUser, FormUser);
  Application.CreateForm(TFormHubungan, FormHubungan);
  Application.CreateForm(TFormSemester, FormSemester);
  Application.CreateForm(TFormWaliKelas, FormWaliKelas);
  Application.CreateForm(TFormPoin, FormPoin);
  Application.CreateForm(TFormKelas, FormKelas);
  Application.Run;
end.
