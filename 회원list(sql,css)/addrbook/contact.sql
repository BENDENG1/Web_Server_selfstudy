CREATE TABLE 'contact' (
  'ab_id' int(11) NOT NULL AUTO_INCREMENT,
  'ab_firstname' varchar(15) NOT NULL,
  'ab_lastname' varchar(15) DEFAULT NULL,
  'ab_email' varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ab_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;