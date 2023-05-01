CREATE DATABASE IF NOT EXISTS Redlock;
USE Redlock;

CREATE TABLE IF NOT EXISTS users (
  ID INT(11) NOT NULL AUTO_INCREMENT,
  Nama VARCHAR(50) NOT NULL,
  Alamat VARCHAR(50) NOT NULL,
  Jabatan VARCHAR(50) NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO users (Nama, Alamat, Jabatan) VALUES ('John Doe', 'Jakarta', 'Manager');
INSERT INTO users (Nama, Alamat, Jabatan) VALUES ('Jane Smith', 'Surabaya', 'Staff');
INSERT INTO users (Nama, Alamat, Jabatan) VALUES ('Bob Johnson', 'Bandung', 'Director');