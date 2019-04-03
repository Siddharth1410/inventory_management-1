CREATE TABLE IF NOT EXISTS Users {
  UserID INT NOT NULL AUTO_INCREMENT,
  Username VARCHAR(32) NOT NULL,
  PasswordHash CHAR(64) NOT NULL,
  Salt CHAR(64) NOT NULL,
  AccessLevel INT NOT NULL
}

CREATE TABLE IF NOT EXISTS Bins (
  BinID INT NOT NULL AUTO_INCREMENT,
  Name VARCHAR(32) NOT NULL,
  Description VARCHAR(256) NOT NULL,
  PRIMARY KEY (BinID)
);

CREATE TABLE IF NOT EXISTS Items (
  UPC BIGINT NOT NULL,
  Bin INT NOT NULL,
  Quantity INT NOT NULL,
  FOREIGN KEY (bin) REFERENCES Bins(BinID) ON DELETE CASCADE,
  PRIMARY KEY (upc, bin)
);

CREATE TABLE IF NOT EXISTS ItemMeta (
  UPC BIGINT NOT NULL,
  Name VARCHAR(32),
  Description VARCHAR(256)
);