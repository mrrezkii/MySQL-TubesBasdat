-- Insert Actor (Without Foreign Key)
INSERT INTO PPIC
VALUES("PPIC001", "123abc123", "Muhammad"),
("PPIC002", "qwerty12345", "Rezki"),
("PPIC003", "123yeey23", "Ananda");

INSERT INTO Bagian_Pembelian
VALUES("PEMB001", "123abc123", "Dicky"),
("PEMB002", "qwerty12345", "Adriansyah"),
("PEMB003", "123yeey23", "DA");

INSERT INTO Bagian_Gudang
VALUES("GUDA001", "123abc123", "Anindya"),
("GUDA002", "qwerty12345", "Prameswari"),
("GUDA003",  "123yeey23", "Putri");

INSERT INTO SPGSPB
VALUES("PGPB001", "123abc123", "Muhammad"),
("PGPB002", "qwerty12345", "Rezki"),
("PGPB003", "123yeey23", "Ananda");

INSERT INTO Sales
VALUES("SALE001", "123abc123", "Dicky"),
("SALE002", "qwerty12345", "Adriansyah"),
("SALE003", "123yeey23", "DA");

INSERT INTO Bagian_Keuangan
VALUES("UANG001", "123abc123", "Anindya"),
("UANG002", "qwerty12345", "Prameswari"),
("UANG003",  "123yeey23", "Putri");

INSERT INTO Bagian_Kasir
VALUES("KASI001", "123abc123", "Muhammad"),
("KASI002", "qwerty12345", "Rezki"),
("KASI003", "123yeey23", "Ananda");

INSERT INTO Manager_DCMDS
VALUES("MANA001", "123abc123", "Dicky"),
("MANA002", "qwerty12345", "Adriansyah"),
("MANA003", "123yeey23", "DA");

-- Insert Entity
INSERT INTO Bahan_Baku
VALUES("BB0001", "Super", "Bahan Baku Jadi", 1000, "PPIC001"),
("BB0002", "Tounge", "Bahan Baku Belum Jadi", 2300, "PPIC001"),
("BB0003", "Eyestray", "Bahan Baku Jadi", 23424, "PPIC001"),
("BB0004", "Shoe Laces", "Bahan Baku Belum Jadi", 24341, "PPIC001"),
("BB0005", "Counter", "Bahan Baku Jadi", 5321, "PPIC001"),
("BB0006", "Insole", "Bahan Baku Belum Jadi", 2000, "PPIC001"),
("BB0007", "Midsole", "Bahan Baku Jadi", 100, "PPIC001"),
("BB0008", "Outsole", "Bahan Baku Belum Jadi", 50, "PPIC001"),
("BB0009", "Toecap", "Bahan Baku Jadi", 1, "PPIC001");

INSERT INTO Supplier
VALUES("AD123", "PT. Artifa Jaya Indonesia", "Jl. M.H. Thamrin No.1, Kb. Melati, Kec. Menteng", 02123580001),
("AD124", "PT. Ploria Indonesia", "Jalan Metro Pondok Indah Kav. IV, RT.1/RW.16, Pd. Pinang, Kec. Kby. Lama", 02121994828);

INSERT INTO Purchase_Order
VALUES("PO0001", "AD123", "BB0001", "2021-01-02", "Suede", "Hitam", 2, 5, 200000, 600000, "PEMB001"),
("PO0002", "AD123", "BB0002", "2021-05-05", "Suede", "Hitam", 4, 1, 300000, 800000, "PEMB001"),
("PO0003", "AD124", "BB0002", "2021-01-01", "Kulit", "Hitam", 5, 3, 400000, 300000, "PEMB003"),
("PO0004", "AD124", "BB0004", "2021-03-12", "Kanvas", "Hitam", 1, 2, 500000, 100000, "PEMB001"),
("PO0005", "AD123", "BB0006", "2021-11-01", "Kanvas", "Hitam", 3, 4, 600000, 400000, "PEMB001"),
("PO0006", "AD124", "BB0004", "2021-02-04", "Kulit", "Hitam", 1, 1, 300000, 600000, "PEMB003");

INSERT INTO Transport
VALUES("TR0001", "Budi", "B 8491 KN", "Fuso"),
("TR0002", "Samsul", "B 8274 PK", "Tronton"),
("TR0003", "Jaka", "B 9814 FT", "Fuso"),
("TR0004", "Yudi", "B 2591 JL", "Colt Diesel Engkel"),
("TR0005", "Ilham", "B 7651 AB", "Tronton");

INSERT INTO Sepatu
VALUES("SE0001", "BB0006", "Sepatu A", 40, "Putih", "Laki-laki", "Lari", 1000, "GUDA001"),
("SE0002", "BB0005", "Sepatu B", 38, "Kuning", "Laki-laki", "Futsal", 200, "GUDA002"),
("SE0003", "BB0004", "Sepatu C", 35, "Merah", "Perempuan", "Lari", 4300, "GUDA003"),
("SE0004", "BB0003", "Sepatu D", 45, "Putih", "Laki-laki", "Basket", 1042, "GUDA001"),
("SE0005", "BB0002", "Sepatu E", 31, "Merah", "Perempuan", "Futsal", 4321, "GUDA002");

INSERT INTO Warehouse
VALUES("WH001", "Shinta", "Gandaria City", "Counter"),
("WH002", "Jojo", "Kediri", "Counter"),
("WH003", "Rezki", "Magetan", "Counter"),
("WH004", "Satrio", "Bekasi", "Counter"),
("WH005", "Ananda", "Batam", "Counter"),
("WH006", "Rohman", "Bandung", "Counter");

INSERT INTO Delivery_Order
VALUES("DO001", "SE0001", "WH001", "2021-06-23", "Sepatu A", "Putih", 40, 100, 200000, "SALE001"),
("DO002", "SE0002", "WH002", "2021-05-12", "Sepatu B", "Warna", 38, 80, 300000, "SALE002"),
("DO003", "SE0003", "WH003", "2021-06-30", "Sepatu C", "Merah", 42, 490, 400000, "SALE001"),
("DO004", "SE0004", "WH004", "2021-01-01", "Sepatu D", "Tosa", 39, 565, 100000, "SALE002");

INSERT INTO Surat_Jalan
VALUES("SU001", "DO001", "TR0004", "Abdul", "Matahari Kediri", "GUDA001"),
("SU002", "DO003", "TR0003", "Beth", "Matahari Magetan", "GUDA002"),
("SU003", "DO003", "TR0001", "Do", "Matahari Surabaya", "GUDA002"),
("SU004", "DO001", "TR0002", "Nin", "Matahari Tulungagung", "GUDA003"),
("SU005", "DO004", "TR0005", "Dik", "Matahari Jember", "GUDA001");

INSERT INTO Sales_Order
VALUES("SO001", "SE0001", 12, 30000, 600000, "KASI001"),
("SO002", "SE0002", 10, 10000, 100000, "KASI003"),
("SO003", "SE0003", 9, 20000, 180000, "KASI001"),
("SO004", "SE0004", 2, 10000, 200000, "KASI002");

INSERT INTO Laporan_Penjualan
VALUES("LP001", "SO001", "Papar", "Counter", "UANG001"),
("LP002", "SO002", "Kras", "Counter", "UANG002"),
("LP003", "SO003", "Ngajuk", "Counter", "UANG003"),
("LP004", "SO004", "Primbon", "Counter", "UANG001");

INSERT INTO Laporan_Pengiriman
VALUES("LPI001", "DO001", "Papar", "Counter", "MANA002"),
("LPI002", "DO002", "Kras", "Counter", "MANA001"),
("LPI003", "DO003", "Ngajuk", "Counter", "MANA001"),
("LPI004", "DO004", "Primbon", "Counter", "MANA003");

INSERT INTO Laporan_Stok
VALUES("LS001", "PGPB001", "SE0002", 5),
("LS002", "PGPB003", "SE0005", 3),
("LS003", "PGPB002", "SE0001", 1),
("LS004", "PGPB001", "SE0004", 3),
("LS005", "PGPB002", "SE0003", 11);

-- Select all table
SELECT * FROM PPIC;

SELECT * FROM Bagian_Pembelian;

SELECT * FROM Bagian_Gudang;

SELECT * FROM SPGSPB;

SELECT * FROM Sales;

SELECT * FROM Bagian_Keuangan;

SELECT * FROM Bagian_Kasir;

SELECT * FROM Manager_DCMDS;

SELECT * FROM Bahan_Baku;

SELECT * FROM Supplier;

SELECT * FROM Purchase_Order;

SELECT * FROM Transport;

SELECT * FROM Sepatu;

SELECT * FROM Warehouse;

SELECT * FROM Delivery_Order;

SELECT * FROM Surat_Jalan;

SELECT * FROM Sales_Order;

SELECT * FROM Laporan_Penjualan;

SELECT * FROM Laporan_Pengiriman;

SELECT * FROM Laporan_Stok;