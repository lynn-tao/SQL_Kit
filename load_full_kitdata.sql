DROP TABLE IF EXISTS FullKitData;

CREATE TABLE FullKitData (
  stamp_time VARCHAR(255) NOT NULL PRIMARY KEY,
  student VARCHAR(255) NOT NULL,
  parent VARCHAR(255),
  email VARCHAR(255),
  parent_email VARCHAR(255),
  school VARCHAR(255),
  elementary_kits VARCHAR(255),
  middle_kits VARCHAR(255),
  address VARCHAR(255)
);

INSERT OR IGNORE INTO FullKitData(stamp_time,student,parent,email,parent_email,school,elementary_kits,middle_kits,address) 
VALUES
(...);
