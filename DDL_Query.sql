-- Initial Database
CREATE DATABASE db_tomkins_panel;

USE db_tomkins_panel;

-- Create Actor
CREATE TABLE PPIC(
    username VARCHAR(11) PRIMARY KEY NOT NULL,
    password VARCHAR(11) NOT NULL,
    nama_ppic VARCHAR(11) NOT NULL 
);

CREATE TABLE Bagian_Pembelian(
    username VARCHAR(11) PRIMARY KEY NOT NULL,
    password VARCHAR(11) NOT NULL,
    nama_staff_pembelian VARCHAR(11) NOT NULL 
);

CREATE TABLE Bagian_Gudang(
    username VARCHAR(11) PRIMARY KEY NOT NULL,
    password VARCHAR(11) NOT NULL,
    nama_staff_gudang VARCHAR(11) NOT NULL 
);

CREATE TABLE SPGSPB(
    username VARCHAR(11) PRIMARY KEY NOT NULL,
    password VARCHAR(11) NOT NULL,
    nama_spgspb VARCHAR(11) NOT NULL 
);

CREATE TABLE Sales(
    username VARCHAR(11) PRIMARY KEY NOT NULL,
    password VARCHAR(11) NOT NULL,
    nama_sales VARCHAR(11) NOT NULL 
);

CREATE TABLE Bagian_Keuangan(
    username VARCHAR(11) PRIMARY KEY NOT NULL,
    password VARCHAR(11) NOT NULL,
    nama_staff_keuangan VARCHAR(11) NOT NULL 
);

CREATE TABLE Bagian_Kasir(
    username VARCHAR(11) PRIMARY KEY NOT NULL,
    password VARCHAR(11) NOT NULL,
    nama_kasir VARCHAR(11) NOT NULL 
);

CREATE TABLE Manager_DCMDS(
    username VARCHAR(11) PRIMARY KEY NOT NULL,
    password VARCHAR(11) NOT NULL,
    nama_manager VARCHAR(11) NOT NULL 
);

CREATE TABLE Bahan_Baku(
    id_bahan_baku VARCHAR(11) PRIMARY KEY NOT NULL,
    nama_bahan_baku VARCHAR(11) NOT NULL,
    kategori_bahan_baku VARCHAR(25) NOT NULL,
    jumlah_stok INT(11) NOT NULL,
);

CREATE TABLE Supplier(
    id_supplier VARCHAR(11) PRIMARY KEY NOT NULL,
    nama VARCHAR(25) NOT NULL,
    alamat TEXT NOT NULL,
    no_telp INT(13) NOT NULL 
);

-- Create Actor
CREATE TABLE Bahan_Baku(
    id_bahan_baku VARCHAR(11) PRIMARY KEY NOT NULL,
    nama_bahan_baku VARCHAR(11) NOT NULL,
    kategori_bahan_baku VARCHAR(25) NOT NULL,
    jumlah_stok INT(11) NOT NULL,
);

CREATE TABLE Supplier(
    id_supplier VARCHAR(11) PRIMARY KEY NOT NULL,
    nama VARCHAR(25) NOT NULL,
    alamat TEXT NOT NULL,
    no_telp INT(13) NOT NULL 
);

CREATE TABLE Purchase_Order(
    id_purchase_order VARCHAR(11) PRIMARY KEY NOT NULL,
    id_supplier VARCHAR(11) NOT NULL,
    id_bahan_baku VARCHAR(11) NOT NULL,
    tanggal_surat DATE NOT NULL,
    material_desctiption TEXT NOT NULL,
    warna VARCHAR(11) NOT NULL,
    unit INT(11) NOT NULL,
    qty INT(11) NOT NULL,
    unit_price INT(11) NOT NULL,
    total INT(11) NOT NULL,
);

CREATE TABLE Transport(
    no_transport VARCHAR(11) PRIMARY KEY NOT NULL,
    nama_pengemudi VARCHAR(25) NOT NULL,
    no_polisi VARCHAR(11) NOT NULL,
    jenis VARCHAR(25) NOT NULL
);

CREATE TABLE Sepatu(
    id_sepatu VARCHAR(11) PRIMARY KEY NOT NULL,
    id_bahan_baku VARCHAR(11) NOT NULL,
    nama_sepatu VARCHAR(24) NOT NULL,
    ukuran INT(2) NOT NULL ,
    warna VARCHAR(11) NOT NULL,
    gender VARCHAR(11) NOT NULL,
    jenis_sepatu VARCHAR(11) NOT NULL,
    qty INT(11) NOT NULL,
);

CREATE TABLE Warehouse(
    id_warehouse VARCHAR(11) PRIMARY KEY NOT NULL,
    nama_owner VARCHAR(25) NOT NULL,
    lokasi VARCHAR(25) NOT NULL,
    jenis_cabang VARCHAR(25) NOT NULL,
);

CREATE TABLE Delivery_Order(
    no_do VARCHAR(11) PRIMARY KEY NOT NULL,
    id_sepatu VARCHAR(11) NOT NULL,
    id_warehouse VARCHAR(11) NOT NULL,
    staf_sales VARCHAR(11) NOT NULL,
    tanggal_surat DATE NOT NULL,
    nama_sepatu VARCHAR(24) NOT NULL,
    warna_sepatu VARCHAR(11) NOT NULL,
    ukuran INT(2) NOT NULL,
    total_qty INT(11) NOT NULL,
    harga INT(11) NOT NULL,
);

CREATE TABLE Surat_Jalan(
    no_surat_jalan VARCHAR(11) PRIMARY KEY NOT NULL,
    nama_owner VARCHAR(25) NOT NULL,
    lokasi VARCHAR(25) NOT NULL,
    jenis_cabang VARCHAR(25) NOT NULL,
);

CREATE TABLE Sales_Order(
    id_sales_order VARCHAR(11) PRIMARY KEY NOT NULL,
    id_sepatu VARCHAR(11) NOT NULL,
    qty INT(11) NOT NULL,
    harga INT(11) NOT NULL,
    total_harga INT(11) NOT NULL,
);

CREATE TABLE Laporan_Penjualan(
    id_laporan_penjualan VARCHAR(11) PRIMARY KEY NOT NULL,
    id_sales_order VARCHAR(11) NOT NULL,
    lokasi VARCHAR(25) NOT NULL,
    jenis_cabang VARCHAR(25) NOT NULL,
);

CREATE TABLE Laporan_Pengiriman(
    id_laporan_pengiriman VARCHAR(11) PRIMARY KEY NOT NULL,
    no_do VARCHAR(11) NOT NULL,
    lokasi VARCHAR(25) NOT NULL,
    jenis_cabang VARCHAR(25) NOT NULL,
);