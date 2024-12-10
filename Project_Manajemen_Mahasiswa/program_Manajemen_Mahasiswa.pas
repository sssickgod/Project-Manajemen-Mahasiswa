program ManajemenMahasiswa;

uses crt;

type
    BiodataMahasiswa = record
        Nama: string[50];
        NIM: string[10];
        Prodi: string[50];
        IPK: real;
    end;

var
    Mahasiswa: array[1..100] of BiodataMahasiswa;
    JumlahMahasiswa: integer;

procedure TambahMahasiswa();
begin
    clrscr;
    if JumlahMahasiswa >= 100 then
    begin
        writeln('Kapasitas mahasiswa penuh!');
        exit;
    end;
    
    JumlahMahasiswa := JumlahMahasiswa + 1;
    writeln('--- Tambah Mahasiswa ---');
    write('Nama       : '); readln(Mahasiswa[JumlahMahasiswa].Nama);
    write('NIM        : '); readln(Mahasiswa[JumlahMahasiswa].NIM);
    write('Prodi      : '); readln(Mahasiswa[JumlahMahasiswa].Prodi);
    write('IPK        : '); readln(Mahasiswa[JumlahMahasiswa].IPK);
    writeln('Mahasiswa berhasil ditambahkan!');
end;

procedure TampilkanMahasiswa();
var
    i: integer;
begin
    clrscr;
    if JumlahMahasiswa = 0 then
    begin
        writeln('Belum ada data mahasiswa.');
        exit;
    end;
    
    writeln('--- Data Mahasiswa ---');
    for i := 1 to JumlahMahasiswa do
    begin
        writeln('Mahasiswa ke-', i);
        writeln('Nama  : ', Mahasiswa[i].Nama);
        writeln('NIM   : ', Mahasiswa[i].NIM);
        writeln('Prodi : ', Mahasiswa[i].Prodi);
        writeln('IPK   : ', Mahasiswa[i].IPK:0:2);
        writeln('-----------------------');
    end;
end;

function CariMahasiswa(NIM: string): integer;
var
    i: integer;
begin
    CariMahasiswa := -1;
    for i := 1 to JumlahMahasiswa do
    begin
        if Mahasiswa[i].NIM = NIM then
        begin
            CariMahasiswa := i;
            exit;
        end;
    end;
end;

procedure HapusMahasiswa();
var
    NIM: string;
    index, i: integer;
begin
    clrscr;
    writeln('--- Hapus Mahasiswa ---');
    write('Masukkan NIM: '); readln(NIM);
    index := CariMahasiswa(NIM);
    
    if index = -1 then
    begin
        writeln('Mahasiswa dengan NIM tersebut tidak ditemukan.');
        exit;
    end;

    for i := index to JumlahMahasiswa - 1 do
        Mahasiswa[i] := Mahasiswa[i + 1];
        
    JumlahMahasiswa := JumlahMahasiswa - 1;
    writeln('Mahasiswa berhasil dihapus!');
end;

procedure MenuUtama();
var
    pilihan: integer;
begin
    repeat
        clrscr;
        writeln('--- Menu Manajemen Mahasiswa ---');
        writeln('1. Tambah Mahasiswa');
        writeln('2. Tampilkan Mahasiswa');
        writeln('3. Hapus Mahasiswa');
        writeln('4. Keluar');
        write('Pilih menu: '); readln(pilihan);
        
        case pilihan of
            1: TambahMahasiswa();
            2: TampilkanMahasiswa();
            3: HapusMahasiswa();
            4: writeln('Keluar program...');
        else
            writeln('Pilihan tidak valid!');
        end;
        
        if pilihan <> 4 then
        begin
            writeln('Tekan Enter untuk melanjutkan...');
            readln;
        end;
    until pilihan = 4;
end;

begin
    JumlahMahasiswa := 0;
    MenuUtama();
end.