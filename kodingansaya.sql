 --==========================================================
 --TUGAS PRAKTIK AKHIR DATABASE - REVAN (XII RPL)
 --Nama File: tugas_akhir_revan_full.sql
 --Deskripsi: Database Manajemen Bus (CRUD + Challenges)
 --==========================================================

 --1. RESET & BUAT DATABASE BARU
 --Menghapus database lama jika ada agar bersih dari awal
DROP DATABASE IF EXISTS db_revan_project;
CREATE DATABASE db_revan_project;
USE db_revan_project;

 --==========================================================
 --2. STRUKTUR TABEL & INSERT DATA
-- ==========================================================

 
-- A. TABEL DAFTAR BUS
-- Keterangan: Berisi data armada bus, harga, dan fasilitas.
-- Kolom 'kelas_bus' & 'kapasitas' ditambahkan untuk Challenge 1 & 2 [cite: 53-55].
 
CREATE TABLE daftar_bus (
    id_bus INT AUTO_INCREMENT PRIMARY KEY,
    nama_bus VARCHAR(50),
    tujuan VARCHAR(100),
    jadwal VARCHAR(50),
    harga INT,
    nama_sopir VARCHAR(50),
    kelas_bus VARCHAR(20) DEFAULT 'Ekonomi',
    kapasitas INT DEFAULT 30
);

Insert 10 Data (Campuran Ekonomi, AC, Executive)
INSERT INTO daftar_bus (nama_bus, tujuan, jadwal, harga, nama_sopir, kelas_bus, kapasitas) VALUES 
('Goodwill', 'Semarang-Lasem', '13.00-16.00', 49000, 'Roni', 'Ekonomi', 25),
('CBI', 'Lebak Bulus-Cileunyi', '14.00-17.00', 45000, 'Ari', 'AC', 40),
('Primajasa', 'Bandung-Merak', '10.30-14.00', 85000, 'Heri', 'AC', 45),
('MGI', 'Tasik-Bogor', '10.30-14.00', 158000, 'Budi Prakoso', 'Executive', 30),
('Sinar Jaya', 'Jakarta-Solo', '16.00-04.00', 120000, 'Agus', 'AC', 50),
('Rosalia Indah', 'Malang-Jakarta', '13.00-05.00', 250000, 'Bambang', 'Super Executive', 32),
('Harapan Jaya', 'Blitar-Jakarta', '11.00-04.00', 280000, 'Joko', 'Sleeper', 20),
('Budiman', 'Tasik-Bandung', '05.00-08.00', 65000, 'Asep', 'Bisnis', 38),
('Sugeng Rahayu', 'Surabaya-Yogya', '08.00-15.00', 90000, 'Slamet', 'Ekonomi', 55),
('Eka', 'Surabaya-Solo', '09.00-13.00', 110000, 'Yanto', 'Patas', 40);

 
 -- B. TABEL INFO BUS
 -- Keterangan: Tracking status bus real-time.
 -- Note: Kode 'JAN_17' yang duplikat di soal sudah diperbaiki menjadi 'JAN_18'.
 
CREATE TABLE info_bus (
    kode_bus VARCHAR(10) PRIMARY KEY,
    nama_sopir VARCHAR(50),
    terakhir_dilihat VARCHAR(50),
    warna_bus VARCHAR(20),
    aktivitas_bus VARCHAR(50)
);

 Insert 12 Data
INSERT INTO info_bus (kode_bus, nama_sopir, terakhir_dilihat, warna_bus, aktivitas_bus) VALUES 
('HAS_29', 'Roni', 'Bandung', 'Hitam', 'Berangkat'),
('SR_13', 'Ari', 'Cibitung', 'Putih', 'Delay'),
('GS_29', 'Heri', 'Cikampek', 'Merah', 'On The Way'),
('JAN_17', 'Budi Prakoso', 'Cikarang', 'Putih', 'On The Way'),
('YAN_22', 'Heri', 'Cibubur', 'Kuning', 'On The Way'),
('JAN_18', 'Budi Prakoso', 'Cikarang', 'Putih', 'On The Way'),
('All_07', 'Ari', 'Bandung', 'Hitam', 'Berangkat'),
('AS_30', 'Roni', 'Bogor', 'Merah', 'Sampai'),
('AS_05', 'Budi Prakoso', 'Cibitung', 'Hitam', 'On The Way'),
('IL_04', 'Heri', 'Bogor', 'Merah', 'Sampai'),
('GAL_11', 'Budi Prakoso', 'Bandung', 'Kuning', 'Berangkat'),
('TWI_98', 'Roni', 'Cikarang', 'Putih', 'On The Way');

 -- C. TABEL KEBERANGKATAN (DULU NAMANYA PENUMPANG)
 -- Keterangan: Jadwal tiket, jam boarding, dan kursi.
 -- Kolom 'tanggal' ditambahkan agar bisa filter > 1 Des 2025 [cite: 70-72].
 
CREATE TABLE keberangkatan (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama_depan VARCHAR(50),
    nama_belakang VARCHAR(50),
    stasiun_keberangkatan VARCHAR(50),
    kedatangan VARCHAR(50),
    boarding_time VARCHAR(10),
    jam_sampai VARCHAR(10),
    nomor_kursi VARCHAR(5),
    id_bus INT,
    tanggal DATE
);

 Insert Data (Disiapkan untuk menjawab Update/Delete Challenge)
 Tanggal diset Desember 2025 agar lolos filter Challenge 3.
INSERT INTO keberangkatan (nama_depan, nama_belakang, stasiun_keberangkatan, kedatangan, boarding_time, jam_sampai, nomor_kursi, id_bus, tanggal) VALUES 
('Maria', 'Rizma', 'Bandung', 'Jakarta', '18.30', '21.20', 'A1', 1, '2025-12-05'),
('Defanty', 'Veninda', 'Cimahi', 'Jakarta', '18.30', '21.20', 'A2', 1, '2025-12-05'),
('Giantinisa', 'Salma', 'Bandung', 'Jakarta', '18.30', '21.20', 'B1', 2, '2025-12-05'),
('Yunita', 'Priatna', 'Purwakarta', 'Jakarta', '18.30', '21.20', 'B2', 2, '2025-12-05'),
('Hanifa', 'Supartiwi', 'Bekasi', 'Jakarta', '18.30', '21.20', 'C1', 3, '2025-12-05'),
('Sri', 'Ayu', 'Bandung', 'Jakarta', '18.30', '21.20', 'C2', 1, '2025-12-05'),
('Galuh', 'Suparman', 'Cimahi', 'Jakarta', '18.30', '21.20', 'D1', 2, '2025-12-05'),
('Revan', 'Laksono', 'Bogor', 'Jakarta', '19.00', '20.30', 'D2', 3, '2025-12-06'),
('Dika', 'Pratama', 'Bekasi', 'Jakarta', '18.45', '19.50', 'E1', 1, '2025-12-06'),
('Siti', 'Aminah', 'Cikampek', 'Jakarta', '17.00', '19.00', 'E2', 2, '2025-12-06');

 
 D. TABEL PENUMPANG (DULU NAMANYA DATA MEDIS)
 Keterangan: Data personal kesehatan penumpang.
 Digunakan untuk Challenge 'Usia > 25'[cite: 56].
 
CREATE TABLE penumpang (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100),
    jenis_kelamin CHAR(1),
    usia INT,
    riwayat_penyakit VARCHAR(100)
);

 Insert Data Medis
INSERT INTO penumpang (nama, jenis_kelamin, usia, riwayat_penyakit) VALUES 
('Albila Khairunnisa', 'P', 23, 'Tidak ada'),
('Triwijaya Galuh', 'L', 56, 'Tidak ada'),
('Sri Rahma Ayu', 'P', 12, 'Tidak ada'),
('Mahesa Narendra', 'L', 34, 'Asma (Sesak Napas)'),
('Naura Nadhifa', 'P', 21, 'Vertigo'),
('Budi Santoso', 'L', 45, 'Hipertensi'),
('Siti Aminah', 'P', 29, 'Tidak ada'),
('Revan Laksono', 'L', 17, 'Tidak ada'),
('Dinda Kirana', 'P', 19, 'Maag'),
('Agus Setiawan', 'L', 30, 'Tidak ada');


 --1. Ubah kota keberangkatan 'Sri' jadi Bandung
 UPDATE keberangkatan SET stasiun_keberangkatan = 'Bandung' WHERE nama_depan = 'Sri';

 --2. Ubah boarding & sampai untuk 'Suparman'
 UPDATE keberangkatan SET boarding_time = '19:00', jam_sampai = '22:00' WHERE nama_belakang = 'Suparman';

 --3. Ubah Bandung & 18.30 jadi Cimahi
 UPDATE keberangkatan SET stasiun_keberangkatan = 'Cimahi' WHERE stasiun_keberangkatan = 'Bandung' AND boarding_time = '18.30';

 --4. Ubah tujuan jadi Jakarta Pusat untuk nama awalan 'G'
 UPDATE keberangkatan SET kedatangan = 'Jakarta Pusat' WHERE nama_depan LIKE 'G%';

 --5. Ubah Cimahi jadi Cimahi Utara
 UPDATE keberangkatan SET stasiun_keberangkatan = 'Cimahi Utara' WHERE stasiun_keberangkatan = 'Cimahi';

 --6. Hapus penumpang nama belakang 'Salma'
 DELETE FROM keberangkatan WHERE nama_belakang = 'Salma';

 --7. Hapus penumpang nama depan awalan 'H'
 DELETE FROM keberangkatan WHERE nama_depan LIKE 'H%';

 --8. Hapus dari Bekasi tujuan Jakarta
 DELETE FROM keberangkatan WHERE stasiun_keberangkatan = 'Bekasi' AND kedatangan = 'Jakarta';

 --9. Hapus keberangkatan jam 18.30
 DELETE FROM keberangkatan WHERE boarding_time = '18.30';

 -- 10. KOSONGKAN TABEL (HAPUS SEMUA)
 DELETE FROM keberangkatan;
