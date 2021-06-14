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
