object FormSiswa: TFormSiswa
  Left = 472
  Top = 241
  Width = 735
  Height = 542
  Caption = 'FORM SISWA'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblnis: TLabel
    Left = 16
    Top = 16
    Width = 33
    Height = 19
    Caption = 'NIS :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lblnisn: TLabel
    Left = 16
    Top = 48
    Width = 45
    Height = 19
    Caption = 'NISN :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lblnama: TLabel
    Left = 16
    Top = 80
    Width = 54
    Height = 19
    Caption = 'NAMA :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lblnik: TLabel
    Left = 16
    Top = 112
    Width = 36
    Height = 19
    Caption = 'NIK :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbltempatlahir: TLabel
    Left = 16
    Top = 144
    Width = 115
    Height = 19
    Caption = 'TEMPAT LAHIR :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbltanggallahir: TLabel
    Left = 16
    Top = 176
    Width = 129
    Height = 19
    Caption = 'TANGGAL LAHIR :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbljk: TLabel
    Left = 328
    Top = 16
    Width = 124
    Height = 19
    Caption = 'JENIS KELAMIN :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lblalamat: TLabel
    Left = 328
    Top = 48
    Width = 70
    Height = 19
    Caption = 'ALAMAT :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lbltelp: TLabel
    Left = 328
    Top = 80
    Width = 42
    Height = 19
    Caption = 'TELP :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lblhp: TLabel
    Left = 328
    Top = 112
    Width = 26
    Height = 19
    Caption = 'HP :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object lblstatus: TLabel
    Left = 328
    Top = 144
    Width = 62
    Height = 19
    Caption = 'STATUS :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Edtnis: TEdit
    Left = 152
    Top = 16
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object Edtnisn: TEdit
    Left = 152
    Top = 48
    Width = 153
    Height = 21
    TabOrder = 1
  end
  object Edtnama: TEdit
    Left = 152
    Top = 80
    Width = 153
    Height = 21
    TabOrder = 2
  end
  object Edtnik: TEdit
    Left = 152
    Top = 112
    Width = 153
    Height = 21
    TabOrder = 3
  end
  object Edttempatlahir: TEdit
    Left = 152
    Top = 144
    Width = 153
    Height = 21
    TabOrder = 4
  end
  object Edtalamat: TEdit
    Left = 480
    Top = 48
    Width = 153
    Height = 21
    TabOrder = 5
  end
  object Edttelp: TEdit
    Left = 480
    Top = 80
    Width = 153
    Height = 21
    TabOrder = 6
  end
  object Edthp: TEdit
    Left = 480
    Top = 112
    Width = 153
    Height = 21
    TabOrder = 7
  end
  object Edtstatus: TEdit
    Left = 480
    Top = 144
    Width = 153
    Height = 21
    TabOrder = 8
  end
  object bbaru: TButton
    Left = 24
    Top = 216
    Width = 105
    Height = 41
    Caption = 'BARU'
    TabOrder = 9
    OnClick = bbaruClick
  end
  object bsimpan: TButton
    Left = 152
    Top = 216
    Width = 105
    Height = 41
    Caption = 'SIMPAN'
    TabOrder = 10
    OnClick = bsimpanClick
  end
  object bedit: TButton
    Left = 280
    Top = 216
    Width = 105
    Height = 41
    Caption = 'EDIT'
    TabOrder = 11
    OnClick = beditClick
  end
  object bhapus: TButton
    Left = 408
    Top = 216
    Width = 105
    Height = 41
    Caption = 'HAPUS'
    TabOrder = 12
    OnClick = bhapusClick
  end
  object bbatal: TButton
    Left = 536
    Top = 216
    Width = 105
    Height = 41
    Caption = 'BATAL'
    TabOrder = 13
    OnClick = bbatalClick
  end
  object dbgrd1: TDBGrid
    Left = 24
    Top = 264
    Width = 617
    Height = 209
    DataSource = ds1
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object cbbjk: TComboBox
    Left = 480
    Top = 16
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 15
    Text = '--- Pilih ---'
    Items.Strings = (
      'L'
      'P')
  end
  object dtp1: TDateTimePicker
    Left = 152
    Top = 176
    Width = 153
    Height = 21
    Date = 45102.883642905090000000
    Time = 45102.883642905090000000
    TabOrder = 16
  end
  object b1: TButton
    Left = 640
    Top = 224
    Width = 75
    Height = 25
    Caption = 'PRINT'
    TabOrder = 17
    OnClick = b1Click
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'laporan_siswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\Fety Fatimah\OneDrive\Desktop\LaporanSiswa\libmysql.dll'
    Left = 672
    Top = 24
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select*from siswa')
    Params = <>
    Left = 672
    Top = 96
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 672
    Top = 160
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45102.918584537000000000
    ReportOptions.LastChange = 45102.929156111110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 672
    Top = 224
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 279.400000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 45.354360000000000000
        Top = 18.897650000000000000
        Width = 980.410082000000000000
        object Memo1: TfrxMemoView
          Left = 393.071120000000000000
          Top = 7.559060000000000000
          Width = 241.889920000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LAPORAN DATA SISWA')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 37.795300000000000000
        Top = 86.929190000000000000
        Width = 980.410082000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 34.015770000000000000
          Width = 71.811070000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NIS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 105.826840000000000000
          Width = 86.929190000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NISN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 192.756030000000000000
          Width = 109.606370000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NAMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 302.362400000000000000
          Width = 102.047310000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'NIK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 404.409710000000000000
          Width = 105.826840000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TEMPATLAHIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 510.236550000000000000
          Width = 105.826840000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TANGGALLAHIR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 616.063390000000000000
          Width = 37.795300000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'JK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 653.858690000000000000
          Width = 98.267780000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'ALAMAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 752.126470000000000000
          Width = 94.488250000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'TELP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 846.614720000000000000
          Width = 94.488250000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'HP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 941.102970000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 37.795275590000000000
        Top = 185.196970000000000000
        Width = 980.410082000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo26: TfrxMemoView
          Left = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 34.015770000000000000
          Width = 71.811070000000000000
          Height = 37.795275590000000000
          ShowHint = False
          DataField = 'nis'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nis"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 105.826840000000000000
          Width = 86.929190000000000000
          Height = 37.795275590000000000
          ShowHint = False
          DataField = 'nisn'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nisn"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 192.756030000000000000
          Width = 109.606370000000000000
          Height = 37.795275590000000000
          ShowHint = False
          DataField = 'nama'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 302.362400000000000000
          Width = 102.047310000000000000
          Height = 37.795275590000000000
          ShowHint = False
          DataField = 'nik'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nik"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 404.409710000000000000
          Width = 105.826840000000000000
          Height = 37.795275590000000000
          ShowHint = False
          DataField = 'tempat_lahir'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tempat_lahir"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 510.236550000000000000
          Width = 105.826840000000000000
          Height = 37.795275590000000000
          ShowHint = False
          DataField = 'tanggal_lahir'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tanggal_lahir"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 616.063390000000000000
          Width = 37.795300000000000000
          Height = 37.795275590000000000
          ShowHint = False
          DataField = 'jk'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."jk"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 653.858690000000000000
          Width = 98.267780000000000000
          Height = 37.795275590000000000
          ShowHint = False
          DataField = 'alamat'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 752.126470000000000000
          Width = 94.488250000000000000
          Height = 37.795275590000000000
          ShowHint = False
          DataField = 'telp'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."telp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 846.614720000000000000
          Width = 94.488250000000000000
          Height = 37.795275590000000000
          ShowHint = False
          DataField = 'hp'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."hp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 941.102970000000000000
          Width = 34.015770000000000000
          Height = 37.795275590000000000
          ShowHint = False
          DataField = 'status'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."status"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 45.354360000000000000
        Top = 245.669450000000000000
        Width = 980.410082000000000000
        object Memo38: TfrxMemoView
          Left = 823.937540000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah Siswa :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 918.425790000000000000
          Top = 11.338590000000000000
          Width = 37.795275590551200000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8 = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo16: TfrxMemoView
        Left = 1024.252630000000000000
        Top = 79.370130000000000000
        Width = 86.929190000000000000
        Height = 37.795275590000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 1.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          'NISN')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo17: TfrxMemoView
        Left = 1111.181820000000000000
        Top = 79.370130000000000000
        Width = 109.606370000000000000
        Height = 37.795275590000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 1.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          'NAMA')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo18: TfrxMemoView
        Left = 1220.788190000000000000
        Top = 79.370130000000000000
        Width = 102.047310000000000000
        Height = 37.795275590000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 1.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          'NIK')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo19: TfrxMemoView
        Left = 1322.835500000000000000
        Top = 79.370130000000000000
        Width = 105.826840000000000000
        Height = 37.795275590000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 1.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          'TEMPATLAHIR')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo20: TfrxMemoView
        Left = 1428.662340000000000000
        Top = 79.370130000000000000
        Width = 105.826840000000000000
        Height = 37.795275590000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 1.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          'TANGGALLAHIR')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo21: TfrxMemoView
        Left = 1534.489180000000000000
        Top = 79.370130000000000000
        Width = 37.795300000000000000
        Height = 37.795275590000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 1.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          'JK')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo22: TfrxMemoView
        Left = 1572.284480000000000000
        Top = 79.370130000000000000
        Width = 98.267780000000000000
        Height = 37.795275590000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 1.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          'ALAMAT')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo23: TfrxMemoView
        Left = 1670.552260000000000000
        Top = 79.370130000000000000
        Width = 94.488250000000000000
        Height = 37.795275590000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 1.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          'TELP')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo24: TfrxMemoView
        Left = 1765.040510000000000000
        Top = 79.370130000000000000
        Width = 94.488250000000000000
        Height = 37.795275590000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 1.500000000000000000
        HAlign = haCenter
        Memo.UTF8 = (
          'HP')
        ParentFont = False
        VAlign = vaCenter
      end
      object Memo25: TfrxMemoView
        Left = 1859.528760000000000000
        Top = 79.370130000000000000
        Width = 34.015770000000000000
        Height = 37.795275590000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        Frame.Width = 1.500000000000000000
        HAlign = haCenter
        ParentFont = False
        VAlign = vaCenter
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ZQuery1
    BCDToCurrency = False
    Left = 672
    Top = 288
  end
end
