# Project-Manajemen-Mahasiswa

Kelompok Makan
1. Fransiskus Aldi P. Napitu - 241401065
2. Rusydi Arrafi - 241401023
3. Nur Mukhlas Syahfitrah - 241401026

# Deskripsi Singkat

Program ini dibuat menggunakan bahasa pemrograman Pascal dan bertujuan untuk mengelola data mahasiswa. Fitur utamanya meliputi penambahan, penampilan, pencarian, dan penghapusan data mahasiswa.

# Fitur Program

1. Tambah Data Mahasiswa
Menambahkan data mahasiswa baru (Nama, NIM, Program Studi, dan IPK).

2. Tampilkan Data Mahasiswa
Menampilkan seluruh data mahasiswa yang tersimpan di dalam program.

3. Hapus Data Mahasiswa
Menghapus data mahasiswa berdasarkan NIM, dengan otomatis menggeser data yang tersisa.

4. Cari Mahasiswa
Fungsi pencarian mahasiswa berdasarkan NIM untuk mempermudah pengelolaan data.

5. Keluar Program
Mengakhiri program secara aman.

# Struktur Program

Tipe Data
Record (BiodataMahasiswa): Menyimpan informasi mahasiswa berupa Nama, NIM, Prodi, dan IPK.
Array (Mahasiswa): Menyimpan data mahasiswa hingga maksimal 100 entri.
Prosedur Utama

TambahMahasiswa: Memasukkan data baru ke dalam array.
TampilkanMahasiswa: Menampilkan seluruh data mahasiswa.
HapusMahasiswa: Menghapus data berdasarkan NIM.
MenuUtama: Menampilkan menu navigasi program.
Fungsi Pencarian

CariMahasiswa: Mengembalikan indeks mahasiswa berdasarkan NIM, atau -1 jika data tidak ditemukan.
Kondisi dan Perulangan

if-else: Digunakan untuk validasi input dan pengendalian alur program.
for dan repeat-until: Digunakan untuk iterasi data dan pengelolaan menu.
