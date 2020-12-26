SET sql_mode = '';

create table if not exists properties (
  id integer not null auto_increment,
  application varchar(20),
  profile varchar(200),
  label varchar(200) default 'master',
  property_key varchar(200),
  property_value varchar(2000),
  UNIQUE KEY UQ_properties (application, profile, label, property_key),
  PRIMARY KEY (id)
) engine=innodb;