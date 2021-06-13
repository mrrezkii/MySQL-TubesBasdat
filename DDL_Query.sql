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

-- Create Actor
CREATE TABLE Bahan_Baku(
    id_bahan_baku VARCHAR(11) PRIMARY KEY NOT NULL,
    nama_bahan_baku VARCHAR(11) NOT NULL,
    kategori_bahan_baku VARCHAR(25) NOT NULL,
    jumlah_stok INT(11) NOT NULL,
    username_ppic VARCHAR(11) NOT NULL
);

CREATE TABLE Supplier(
    id_supplier VARCHAR(11) PRIMARY KEY NOT NULL,
    nama_supplier VARCHAR(25) NOT NULL,
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
    total_harga INT(11) NOT NULL,
    username_staff_pembelian VARCHAR(11) NOT NULL
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
    username_staff_gudang VARCHAR(11) NOT NULL
);

CREATE TABLE Warehouse(
    id_warehouse VARCHAR(11) PRIMARY KEY NOT NULL,
    nama_owner VARCHAR(25) NOT NULL,
    lokasi VARCHAR(25) NOT NULL,
    jenis_cabang VARCHAR(25) NOT NULL
);

CREATE TABLE Delivery_Order(
    no_do VARCHAR(11) PRIMARY KEY NOT NULL,
    id_sepatu VARCHAR(11) NOT NULL,
    id_warehouse VARCHAR(11) NOT NULL,
    tanggal_surat DATE NOT NULL,
    nama_sepatu VARCHAR(24) NOT NULL,
    warna_sepatu VARCHAR(11) NOT NULL,
    ukuran INT(2) NOT NULL,
    total_qty INT(11) NOT NULL,
    harga INT(11) NOT NULL,
    username_staff_sales VARCHAR(11) NOT NULL
);

CREATE TABLE Surat_Jalan(
    no_surat_jalan VARCHAR(11) PRIMARY KEY NOT NULL,
    no_do VARCHAR(11) NOT NULL,
    no_transport VARCHAR(11) NOT NULL,
    nama_pemilik VARCHAR(25) NOT NULL,
    nama_counter VARCHAR(25) NOT NULL,
    username_staff_gudang VARCHAR(11) NOT NULL
);

CREATE TABLE Sales_Order(
    id_sales_order VARCHAR(11) PRIMARY KEY NOT NULL,
    id_sepatu VARCHAR(11) NOT NULL,
    qty INT(11) NOT NULL,
    harga INT(11) NOT NULL,
    total_harga INT(11) NOT NULL,
    username_kasir VARCHAR(11) NOT NULL
);

CREATE TABLE Laporan_Penjualan(
    id_laporan_penjualan VARCHAR(11) PRIMARY KEY NOT NULL,
    id_sales_order VARCHAR(11) NOT NULL,
    lokasi VARCHAR(25) NOT NULL,
    jenis_cabang VARCHAR(25) NOT NULL,
    username_staff_keuangan VARCHAR(11) NOT NULL
);

CREATE TABLE Laporan_Pengiriman(
    id_laporan_pengiriman VARCHAR(11) PRIMARY KEY NOT NULL,
    no_do VARCHAR(11) NOT NULL,
    lokasi VARCHAR(25) NOT NULL,
    jenis_cabang VARCHAR(25) NOT NULL,
    username_manager VARCHAR(11) NOT NULL
);

CREATE TABLE Laporan_Stok(
    id_laporan_stok VARCHAR(11) PRIMARY KEY NOT NULL,
    username_spgspb VARCHAR(11) NOT NULL,
    id_sepatu VARCHAR(11) NOT NULL,
    qty INT(11) NOT NULL
);

-- Alter relation between table
ALTER TABLE Bahan_Baku
ADD CONSTRAINT fk_bahanbaku_ppic
FOREIGN KEY (username_ppic) REFERENCES PPIC(username);

ALTER TABLE Sepatu
ADD CONSTRAINT fk_sepatu_bahanbaku
FOREIGN KEY (id_bahan_baku) REFERENCES Bahan_Baku(id_bahan_baku);

ALTER TABLE Sepatu
ADD CONSTRAINT fk_sepatu_bagiangudang
FOREIGN KEY (username_staff_gudang) REFERENCES Bagian_Gudang(username);

ALTER TABLE Sales_Order
ADD CONSTRAINT fk_salesorder_sepatu
FOREIGN KEY (id_sepatu) REFERENCES Sepatu(id_sepatu);

ALTER TABLE Sales_Order
ADD CONSTRAINT fk_salesorder_bagiankasir
FOREIGN KEY (username_kasir) REFERENCES Bagian_Kasir(username);

ALTER TABLE Surat_Jalan
ADD CONSTRAINT fk_suratjalan_bagiangudang
FOREIGN KEY (username_staff_gudang) REFERENCES Bagian_Gudang(username);

ALTER TABLE Surat_Jalan
ADD CONSTRAINT fk_suratjalan_deliveryorder
FOREIGN KEY (no_do) REFERENCES Delivery_Order(no_do);

ALTER TABLE Surat_Jalan
ADD CONSTRAINT fk_suratjalan_transport
FOREIGN KEY (no_transport) REFERENCES Transport(no_transport);

ALTER TABLE Laporan_Penjualan
ADD CONSTRAINT fk_laporanpenjualan_bagiankeuangan
FOREIGN KEY (username_staff_keuangan) REFERENCES Bagian_Keuangan(username);

ALTER TABLE Purchase_Order
ADD CONSTRAINT fk_purchaseorder_supplier
FOREIGN KEY (id_supplier) REFERENCES Supplier(id_supplier);

ALTER TABLE Purchase_Order
ADD CONSTRAINT fk_purchaseorder_bahanbaku
FOREIGN KEY (id_bahan_baku) REFERENCES Bahan_Baku(id_bahan_baku);

ALTER TABLE Purchase_Order
ADD CONSTRAINT fk_purchaseorder_bagianpembelian
FOREIGN KEY (username_staff_pembelian) REFERENCES Bagian_Pembelian(username);

ALTER TABLE Delivery_Order
ADD CONSTRAINT fk_deliveryorder_sepatu
FOREIGN KEY (id_sepatu) REFERENCES Sepatu(id_sepatu);

ALTER TABLE Delivery_Order
ADD CONSTRAINT fk_deliveryorder_sales
FOREIGN KEY (username_staff_sales) REFERENCES Sales(username);

ALTER TABLE Delivery_Order
ADD CONSTRAINT fk_deliveryorder_warehouse
FOREIGN KEY (id_warehouse) REFERENCES Warehouse(id_warehouse);

ALTER TABLE Laporan_Pengiriman
ADD CONSTRAINT fk_laporanpengiriman_managerdcmds
FOREIGN KEY (username_manager) REFERENCES Manager_DCMDS(username);

ALTER TABLE Laporan_Pengiriman
ADD CONSTRAINT fk_laporanpengiriman_deliveryorder
FOREIGN KEY (no_do) REFERENCES Delivery_Order(no_do);

ALTER TABLE Laporan_Stok
ADD CONSTRAINT fk_laporanstok_spgspb
FOREIGN KEY (username_spgspb) REFERENCES SPGSPB(username);

ALTER TABLE Laporan_Stok
ADD CONSTRAINT fk_laporanstok_sepatu
FOREIGN KEY (id_sepatu) REFERENCES Sepatu(id_sepatu);