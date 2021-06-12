CREATE DATABASE db_tomkins_panel;

USE db_tomkins_panel;

CREATE TABLE PPIC(
    username VARCHAR(11) PRIMARY KEY NOT NULL,
    password VARCHAR(11) NOT NULL,
    nama VARCHAR(11) NOT NULL 
);

CREATE TABLE Bagian_Pembelian(
    username VARCHAR(11) PRIMARY KEY NOT NULL,
    password VARCHAR(11) NOT NULL,
    nama VARCHAR(11) NOT NULL 
);

CREATE TABLE Bagian_Gudang(
    username VARCHAR(11) PRIMARY KEY NOT NULL,
    password VARCHAR(11) NOT NULL,
    nama VARCHAR(11) NOT NULL 
);

CREATE TABLE SPGSPB(
    username VARCHAR(11) PRIMARY KEY NOT NULL,
    password VARCHAR(11) NOT NULL,
    nama VARCHAR(11) NOT NULL 
);

CREATE TABLE Sales(
    username VARCHAR(11) PRIMARY KEY NOT NULL,
    password VARCHAR(11) NOT NULL,
    nama VARCHAR(11) NOT NULL 
);

CREATE TABLE Bagian_Keuangan(
    username VARCHAR(11) PRIMARY KEY NOT NULL,
    password VARCHAR(11) NOT NULL,
    nama VARCHAR(11) NOT NULL 
);

CREATE TABLE Bagian_Kasir(
    username VARCHAR(11) PRIMARY KEY NOT NULL,
    password VARCHAR(11) NOT NULL,
    nama VARCHAR(11) NOT NULL 
);

CREATE TABLE Manager_DCMDS(
    username VARCHAR(11) PRIMARY KEY NOT NULL,
    password VARCHAR(11) NOT NULL,
    nama VARCHAR(11) NOT NULL 
);
