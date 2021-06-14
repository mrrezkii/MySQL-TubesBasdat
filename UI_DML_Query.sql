-- Login
SELECT * FROM PPIC
WHERE username = "PPIC001" and password = "123abc123";

SELECT * FROM Bagian_Pembelian
WHERE username = "PEMB001" and password = "123abc123";

SELECT * FROM Bagian_Gudang
WHERE username = "GUDA001" and password = "123abc123";

SELECT * FROM SPGSPB
WHERE username = "PGPB001" and password = "123abc123";

SELECT * FROM Sales
WHERE username = "SALE001" and password = "123abc123";

SELECT * FROM Bagian_Keuangan
WHERE username = "UANG001" and password = "123abc123";

SELECT * FROM Bagian_Kasir
WHERE username = "KASI001" and password = "123abc123";

SELECT *FROM Manager_DCMDS
WHERE username = "DCMD001" and password = "123abc123";

-- Get name
SELECT nama_ppic FROM PPIC
WHERE username = "PPIC001";

SELECT nama_staff_pembelian FROM Bagian_Pembelian
WHERE username = "PEMB001";

SELECT nama_staff_gudang FROM Bagian_Gudang
WHERE username = "GUDA001";

SELECT nama_spgspb FROM SPGSPB
WHERE username = "PGPB001";

SELECT nama_sales FROM Sales
WHERE username = "SALE001";

SELECT nama_staff_keuangan FROM Bagian_Keuangan
WHERE username = "UANG001";

SELECT nama_kasir FROM Bagian_Kasir
WHERE username = "KASI001";

SELECT nama_manager FROM Manager_DCMDS
WHERE username = "DCMD001";

-- PPIC - Laporan bahan baku
INSERT INTO Bahan_Baku
VALUES("BB0010", "Super", "Bahan Baku Belum Jadi", 980, "PPIC001");

SELECT bb.id_bahan_baku, bb.nama_bahan_baku, bb.kategori_bahan_baku, bb.jumlah_stok, PPIC.nama_ppic
FROM Bahan_Baku bb JOIN PPIC
ON bb.username_ppic = PPIC.username
ORDER BY bb.id_bahan_baku ASC;

SELECT bb.id_bahan_baku, bb.nama_bahan_baku, bb.kategori_bahan_baku, bb.jumlah_stok, PPIC.nama_ppic
FROM Bahan_Baku bb JOIN PPIC
ON bb.username_ppic = PPIC.username
ORDER BY bb.id_bahan_baku DESC;

SELECT bb.id_bahan_baku, bb.nama_bahan_baku, bb.kategori_bahan_baku, bb.jumlah_stok
FROM Bahan_Baku bb JOIN PPIC
WHERE bb.id_bahan_baku = "BB0010"
LIMIT 1;

UPDATE Bahan_Baku
SET nama_bahan_baku = "Mantapp", kategori_bahan_baku = "Bahan Baku Belum Jadi", jumlah_stok = 100
WHERE id_bahan_baku = "BB0010";

DELETE FROM Bahan_Baku WHERE id_bahan_baku = "BB0010";

-- Bagian Gudang - Update Stok
SELECT pp.id_purchase_order, pp.id_supplier, pp.id_bahan_baku, pp.tanggal_surat, pp.material_desctiption, pp.warna, pp.unit, pp.qty, pp.unit_price, pp.total_harga, pem.nama_staff_pembelian
FROM Purchase_Order pp JOIN Bagian_Pembelian pem
ON pp.username_staff_pembelian = pem.username
ORDER BY pp.id_purchase_order ASC;

SELECT pp.id_purchase_order, pp.id_supplier, pp.id_bahan_baku, pp.tanggal_surat, pp.material_desctiption, pp.warna, pp.unit, pp.qty, pp.unit_price, pp.total_harga, pem.nama_staff_pembelian
FROM Purchase_Order pp JOIN Bagian_Pembelian pem
ON pp.username_staff_pembelian = pem.username
ORDER BY pp.id_purchase_order DESC;

SELECT pp.id_purchase_order, pp.id_supplier, pp.id_bahan_baku, pp.tanggal_surat, pp.material_desctiption, pp.warna, pp.unit, pp.qty, pp.unit_price, pp.total_harga
FROM Purchase_Order pp JOIN Bagian_Pembelian pem
ON pp.username_staff_pembelian = pem.username
WHERE pp.id_purchase_order = "PO0001"
LIMIT 1;

UPDATE Purchase_Order
SET qty = 10
WHERE id_purchase_order = "PO0001";

-- Bagian Gudang - Membuat Surat Jalan
INSERT INTO Surat_Jalan
VALUES("SU0010", "DO001", "TR0004", "Abdul", "Matahari Kediri", "GUDA001");

SELECT sj.no_surat_jalan, sj.no_do, sj.no_transport, sj.nama_pemilik, sj.nama_counter, gud.nama_staff_gudang
FROM Surat_Jalan sj JOIN Bagian_Gudang gud
ON sj.username_staff_gudang = gud.username
ORDER BY sj.no_surat_jalan ASC;

SELECT sj.no_surat_jalan, sj.no_do, sj.no_transport, sj.nama_pemilik, sj.nama_counter, gud.nama_staff_gudang
FROM Surat_Jalan sj JOIN Bagian_Gudang gud
ON sj.username_staff_gudang = gud.username
ORDER BY sj.no_surat_jalan DESC;

-- Bagian Keuangan - Laporan Penjualan
INSERT INTO Laporan_Penjualan
VALUES("LP010", "SO001", "Papar", "Counter", "UANG001");

SELECT lp.id_laporan_penjualan, lp.id_sales_order, lp.lokasi, lp.jenis_cabang, keu.nama_staff_keuangan
FROM Laporan_Penjualan lp JOIN Bagian_Keuangan keu
ON lp.username_staff_keuangan = keu.username
ORDER BY lp.id_laporan_penjualan ASC;

SELECT lp.id_laporan_penjualan, lp.id_sales_order, lp.lokasi, lp.jenis_cabang, keu.nama_staff_keuangan
FROM Laporan_Penjualan lp JOIN Bagian_Keuangan keu
ON lp.username_staff_keuangan = keu.username
ORDER BY lp.id_laporan_penjualan DESC;

SELECT lp.id_laporan_penjualan, lp.id_sales_order, lp.lokasi, lp.jenis_cabang
FROM Laporan_Penjualan lp JOIN Bagian_Keuangan keu
ON lp.username_staff_keuangan = keu.username
WHERE lp.id_laporan_penjualan = "LP010"
LIMIT 1;

UPDATE Laporan_Penjualan
SET lokasi = "Kediri", jenis_cabang = "Counterr"
WHERE id_laporan_penjualan = "LP010";

DELETE FROM Laporan_Penjualan WHERE id_laporan_penjualan = "LP010";

-- Bagian Kasir - Membuat Sales Order
INSERT INTO Sales_Order
VALUES("SO010", "SE0001", 12, 30000, 600000, "KASI001");

SELECT so.id_sales_order, so.id_sepatu, so.qty, so.harga, so.total_harga, kasir.nama_kasir
FROM Sales_Order so JOIN Bagian_Kasir kasir
ON so.username_kasir = kasir.username
ORDER BY so.id_sales_order ASC;

SELECT so.id_sales_order, so.id_sepatu, so.qty, so.harga, so.total_harga, kasir.nama_kasir
FROM Sales_Order so JOIN Bagian_Kasir kasir
ON so.username_kasir = kasir.username
ORDER BY so.id_sales_order DESC;

SELECT so.id_sales_order, so.id_sepatu, so.qty, so.harga, so.total_harga
FROM Sales_Order so JOIN Bagian_Kasir kasir
ON so.username_kasir = kasir.username
WHERE so.id_sales_order = "SO010"
LIMIT 1;

UPDATE Sales_Order
SET qty = 20
WHERE id_sales_order = "SO010";

DELETE FROM Sales_Order WHERE id_sales_order = "SO010";

-- Bagian SPG/SPB - Laporan Stok Harian
INSERT INTO Laporan_Stok
VALUES("LS0010", "PGPB001", "SE0002", 5);

SELECT ls.id_laporan_stok, pgpb.nama_spgspb, sp.nama_sepatu, ls.qty
FROM Laporan_Stok ls 
JOIN SPGSPB pgpb on ls.username_spgspb = pgpb.username
JOIN Sepatu sp ON ls.id_sepatu = sp.id_sepatu
ORDER BY ls.id_laporan_stok ASC;

SELECT ls.id_laporan_stok, pgpb.nama_spgspb, sp.nama_sepatu, ls.qty
FROM Laporan_Stok ls 
JOIN SPGSPB pgpb on ls.username_spgspb = pgpb.username
JOIN Sepatu sp ON ls.id_sepatu = sp.id_sepatu
ORDER BY ls.id_laporan_stok DESC;

SELECT ls.id_laporan_stok, pgpb.nama_spgspb, sp.nama_sepatu, ls.qty
FROM Laporan_Stok ls 
JOIN SPGSPB pgpb on ls.username_spgspb = pgpb.username
JOIN Sepatu sp ON ls.id_sepatu = sp.id_sepatu
WHERE ls.id_laporan_stok  = "LS0010"
LIMIT 1;
 
UPDATE Laporan_Stok
SET qty = 23
WHERE id_laporan_stok = "LS0010";

DELETE FROM Laporan_Stok WHERE id_laporan_stok = "LS0010";

-- Bagian Pembelian - Purchase Order
INSERT INTO Purchase_Order
VALUES("PO0010", "AD123", "BB0001", "2021-01-02", "Suede", "Hitam", 2, 5, 200000, 600000, "PEMB001");

SELECT pp.id_purchase_order, pp.id_supplier, pp.id_bahan_baku, pp.tanggal_surat, pp.material_desctiption, pp.warna, pp.unit, pp.qty, pp.unit_price, pp.total_harga, pem.nama_staff_pembelian
FROM Purchase_Order pp JOIN Bagian_Pembelian pem
ON pp.username_staff_pembelian = pem.username
ORDER BY pp.id_purchase_order ASC;

SELECT pp.id_purchase_order, pp.id_supplier, pp.id_bahan_baku, pp.tanggal_surat, pp.material_desctiption, pp.warna, pp.unit, pp.qty, pp.unit_price, pp.total_harga, pem.nama_staff_pembelian
FROM Purchase_Order pp JOIN Bagian_Pembelian pem
ON pp.username_staff_pembelian = pem.username
ORDER BY pp.id_purchase_order DESC;

SELECT pp.id_purchase_order, pp.id_supplier, pp.id_bahan_baku, pp.tanggal_surat, pp.material_desctiption, pp.warna, pp.unit, pp.qty, pp.unit_price, pp.total_harga
FROM Purchase_Order pp JOIN Bagian_Pembelian pem
ON pp.username_staff_pembelian = pem.username
WHERE pp.id_purchase_order = "PO0010"
LIMIT 1;

UPDATE Purchase_Order
SET warna = "Tosca"
WHERE id_purchase_order = "PO0010";

DELETE FROM Purchase_Order WHERE id_purchase_order = "PO0010";

-- Manager DCMDS - Laporan Pengiriman
INSERT INTO Laporan_Pengiriman
VALUES("LPI0010", "DO001", "Ngadiluwih", "Counter", "MANA002");

-- Manager DCMDS - History Pengiriman
SELECT lp.id_laporan_pengiriman, lp.no_do, lp.lokasi, lp.jenis_cabang, manager.nama_manager
FROM Laporan_Pengiriman lp JOIN Manager_DCMDS manager
on lp.username_manager = manager.username
ORDER BY lp.id_laporan_pengiriman ASC;

SELECT lp.id_laporan_pengiriman, lp.no_do, lp.lokasi, lp.jenis_cabang, manager.nama_manager
FROM Laporan_Pengiriman lp JOIN Manager_DCMDS manager
on lp.username_manager = manager.username
ORDER BY lp.id_laporan_pengiriman DESC;

-- Sales - Mengecek Stok Sepatu
SELECT sp.id_sepatu, bb.nama_bahan_baku, sp.nama_sepatu, sp.ukuran, sp.warna, sp.gender, sp.jenis_sepatu, sp.qty
FROM Sepatu sp JOIN Bahan_Baku bb
ON sp.id_bahan_baku = bb.id_bahan_baku
ORDER BY sp.id_sepatu ASC;

SELECT sp.id_sepatu, bb.nama_bahan_baku, sp.nama_sepatu, sp.ukuran, sp.warna, sp.gender, sp.jenis_sepatu, sp.qty
FROM Sepatu sp JOIN Bahan_Baku bb
ON sp.id_bahan_baku = bb.id_bahan_baku
ORDER BY sp.id_sepatu DESC;

-- Sales - Membuat Delivery Order
INSERT INTO Delivery_Order
VALUES("DO001", "SE0001", "WH001", "2021-06-23", "Sepatu A", "Putih", 40, 100, 200000, "SALE001");

SELECT do.no_do, sp.nama_sepatu, wr.nama_owner, do.tanggal_surat, sp.warna, sp.ukuran, do.harga, sales.nama_sales
FROM Delivery_Order do
JOIN Sepatu sp ON do.id_sepatu = sp.id_sepatu
JOIN Warehouse wr ON do.id_warehouse = wr.id_warehouse
JOIN Sales sales ON do.username_staff_sales = sales.username
ORDER BY do.no_do ASC;

SELECT do.no_do, sp.nama_sepatu, wr.nama_owner, do.tanggal_surat, sp.warna, sp.ukuran, do.harga, sales.nama_sales
FROM Delivery_Order do
JOIN Sepatu sp ON do.id_sepatu = sp.id_sepatu
JOIN Warehouse wr ON do.id_warehouse = wr.id_warehouse
JOIN Sales sales ON do.username_staff_sales = sales.username
ORDER BY do.no_do DESC;

SELECT do.no_do, sp.nama_sepatu, wr.nama_owner, do.tanggal_surat, sp.warna, sp.ukuran, do.harga, sales.nama_sales
FROM Delivery_Order do
JOIN Sepatu sp ON do.id_sepatu = sp.id_sepatu
JOIN Warehouse wr ON do.id_warehouse = wr.id_warehouse
JOIN Sales sales ON do.username_staff_sales = sales.username
WHERE do.no_do = "DO001"
LIMIT 1;

UPDATE Delivery_Order
SET tanggal_surat = "2021-04-21"
WHERE no_do = "DO001";

DELETE FROM Delivery_Order WHERE no_do = "DO001";