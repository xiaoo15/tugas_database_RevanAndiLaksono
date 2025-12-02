# 🚌 Tugas Praktik Akhir Database - Manajemen Bus

**Nama:** Revan Andi Laksono
**Kelas:** XII RPL  
**Jurusan:** Rekayasa Perangkat Lunak  
**Mata Pelajaran:** Basis Data (Database)

---

## 📖 Deskripsi Project
Repository ini berisi *source code* database untuk sistem manajemen tiket dan armada bus. Project ini dikerjakan sepenuhnya menggunakan **MySQL Command Line (CMD)** tanpa bantuan GUI (phpMyAdmin), sesuai dengan standar kompetensi siswa RPL.

Project ini mencakup implementasi:
- **DDL (Data Definition Language):** `CREATE`, `ALTER`, `DROP`.
- **DML (Data Manipulation Language):** `INSERT`, `UPDATE`, `DELETE`.
- **Complex Queries:** Penggunaan `WHERE`, `LIKE`, `AND/OR`, `BETWEEN`, dan filter Tanggal.

---

## 🗂️ Struktur Database
Nama Database: **`db_table_bus`**

Terdapat 4 tabel utama dalam sistem ini:

### 1. `daftar_bus`
Menyimpan data armada bus, fasilitas, dan harga tiket.
- **Kolom:** `id_bus`, `nama_bus`, `tujuan`, `jadwal`, `harga`, `nama_sopir`.
- **Fitur Tambahan:** Kolom `kelas_bus` (AC/Ekonomi) dan `kapasitas` (jumlah kursi).

### 2. `info_bus`
Menyimpan status *real-time* posisi dan aktivitas bus.
- **Kolom:** `kode_bus` (Primary Key), `nama_sopir`, `terakhir_dilihat`, `warna_bus`, `aktivitas_bus` (Delay, OTW, Sampai).

### 3. `keberangkatan`
*(Sebelumnya bernama tabel penumpang)* Menyimpan data jadwal keberangkatan, tiket, dan kursi penumpang.
- **Kolom:** `id`, `nama_depan`, `nama_belakang`, `stasiun_keberangkatan`, `kedatangan`, `boarding_time`, `nomor_kursi`.
- **Fitur Tambahan:** Kolom `tanggal` untuk filter data keberangkatan > 1 Desember 2025.

### 4. `penumpang`
*(Sebelumnya bernama tabel data_medis)* Menyimpan data personal dan riwayat kesehatan penumpang (untuk keperluan darurat/asuransi).
- **Kolom:** `id`, `nama`, `jenis_kelamin`, `usia`, `riwayat_penyakit`.

---

## 🛠️ List Perintah MySQL yang Digunakan
Berikut adalah rangkuman perintah yang digunakan dalam penyelesaian tugas ini:

1.  **Membuat Database & Tabel**
    ```sql
    CREATE DATABASE db_revan_project;
    CREATE TABLE nama_tabel (...);
    ```

2.  **Manipulasi Data (CRUD)**
    ```sql
    INSERT INTO ... VALUES ...;
    SELECT * FROM ... WHERE ...;
    UPDATE ... SET ... WHERE ...;
    DELETE FROM ... WHERE ...;
    ```

3.  **Tantangan (Challenges)**
    - **Filter Lanjut:** Menggunakan `LIKE 'G%'` (pola huruf), `BETWEEN` (rentang harga), dan operator logika `AND`.
    - **Modifikasi Struktur:** Menggunakan `ALTER TABLE` untuk menambah kolom tanggal dan kapasitas.
    - **Query Tanggal:** `WHERE tanggal > '2025-12-01'`.

---

## 📸 Screenshots Pengerjaan
Bukti pengerjaan via CMD tersimpan dalam folder `screenshot/`:

1.  **Login & Create Database:** `screenshot/01_login_create.png`
2.  **Insert Data:** `screenshot/02_insert_data.png`
3.  **Hasil Select & Filter:** `screenshot/03_select_query.png`
4.  **Proses Update & Delete:** `screenshot/04_update_delete.png`

*(Pastikan folder `screenshot` sudah di-upload ke repository ini)*

---

## 🚀 Cara Import Database
Jika ingin menjalankan project ini di komputer lokal:

1.  Buka CMD / Terminal.
2.  Masuk ke MySQL: `mysql -u root -p`
3.  Buat database kosong: `create database db_revan_project;`
4.  Exit dari MySQL.
5.  Import file SQL:
    ```bash
    mysql -u root -p db_revan_project < tugas_akhir_revan_full.sql
    ```

---
**Copyright © 2025 Revan - XII RPL**