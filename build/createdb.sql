DROP DATABASE IF EXISTS ezban;
CREATE DATABASE ezban;
USE ezban;
CREATE TABLE user (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(16) NOT NULL UNIQUE,
disabled BIT(1) NOT NULL, 
created TIMESTAMP,
passwd VARCHAR(60),
api_key VARCHAR(60),
last_login TIMESTAMP
) ENGINE=INNODB;

CREATE TABLE banranges (
id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
StartIP INT UNSIGNED,
EndIP INT UNSIGNED,
Description VARCHAR(255),
InfoURL VARCHAR(255),
Expires BIT(1),
created TIMESTAMP,
days_to_ban INT,
user_id INT UNSIGNED,
INDEX user_id_index (user_id),
FOREIGN KEY (user_id)
	REFERENCES user(id)
) ENGINE=INNODB;
