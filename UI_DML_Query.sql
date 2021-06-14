-- Login
SELECT username, password FROM PPIC
WHERE username = "PPIC001";

SELECT username, password FROM Bagian_Pembelian
WHERE username = "PEMB001";

SELECT username, password FROM Bagian_Gudang
WHERE username = "GUDA001";

SELECT username, password FROM SPGSPB
WHERE username = "PGPB001";

SELECT username, password FROM Sales
WHERE username = "SALE001";

SELECT username, password FROM Bagian_Keuangan
WHERE username = "UANG001";

SELECT username, password FROM Bagian_Kasir
WHERE username = "KASI001";

SELECT username, password FROM Manager_DCMDS
WHERE username = "DCMD001";

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
VALUES("BB00011", "Super", "Bahan Baku Belum Jadi", 1000, "PPIC001");

SELECT bb.id_bahan_baku, bb.nama_bahan_baku, bb.kategori_bahan_baku, bb.jumlah_stok, PPIC.nama_ppic
FROM Bahan_Baku bb JOIN PPIC
ON bb.username_ppic = PPIC.username;

UPDATE Bahan_Baku
SET nama_bahan_baku = "Mantapp", kategori_bahan_baku = "Bahan Baku Belum Jadi", jumlah_stok = 100
WHERE id_bahan_baku = "BB0001";

-- Bagian Gudang - Update Stok
SELECT pp.id_purchase_order, pp.id_supplier, pp.id_bahan_baku, pp.tanggal_surat, pp.material_desctiption, pp.warna, pp.unit, pp.qty, pp.unit_price, pp.total_harga, pem.nama_staff_pembelian
FROM Purchase_Order pp JOIN Bagian_Pembelian pem
ON pp.username_staff_pembelian = pem.username;

UPDATE Purchase_Order
SET qty = 10
WHERE id_purchase_order = "PO0001";