CREATE DATABASE Redlock;

USE Redlock;

CREATE TABLE users (
  ID INT NOT NULL AUTO_INCREMENT,
  Nama VARCHAR(255) NOT NULL,
  Alamat VARCHAR(255) NOT NULL,
  Jabatan VARCHAR(255) NOT NULL,
  PRIMARY KEY (ID)
);

INSERT into users values("1", "Timothy Gilbert", "Ruby Utara", "Ketua Kelas");
INSERT into users values("2", "Ryan Ganteng", "Jelambar Banjir", "Babu Kelas");
INSERT into users values("3", "Bryan Bencong", "Kalideres Luap", "Piket Kelas");
