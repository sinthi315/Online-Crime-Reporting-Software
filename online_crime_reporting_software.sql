CREATE TABLE `reports` (
`id` INT( 100 ) NOT NULL AUTO_INCREMENT ,
`reporting_period` TIME NOT NULL ,
`tips_line` TEXT NOT NULL ,
`offense_name` VARCHAR( 20 ) NULL ,
`incident_type` VARCHAR( 25 ) NOT NULL ,
`admin_phoneNo` INT( 20 )  NOT NULL ,
`email` VARCHAR( 25 )   NOT NULL ,
`program_no` INT( 100 )   NOT NULL ,
`country_name` VARCHAR( 20 )  NOT NULL ,
`city_name` VARCHAR( 20 )  NOT NULL ,
`state_name` VARCHAR( 20 )  NOT NULL ,
`postal_code` INT( 10 )  NOT NULL ,
`population` INT( 100 ) NOT NULL ,
`report_date` DATETIME NOT NULL ,
`date_of_inception` DATETIME NOT NULL ,
PRIMARY KEY ( `id` )
) TYPE = MYISAM ;

INSERT  INTO  reports
VALUES ( 1,  '09:56:00',  ' We should be aware about this',  'theft',  'theft by an addicted',  +880172596248,  's_admin@yahoo.com', 100,  'US',  'State Vila',  'State Vila', 1205, 20000,  '2007-06-01 04:44:55',  '2007-05-01 03:22:34'  );

INSERT  INTO  reports
VALUES ( 2,  '10:00:00',  ' we should be aware our women word',  'suicide',  'committed by self',  +8802849048,  's_sharmin@gmail.com', 300,  'Canada',  'torento',  'State Vila', 1300, 3000000,  '2010-03-06 04:44:55',  '2010-01-01 03:22:34'  );


CREATE TABLE `cities` (
`country_name` VARCHAR( 20 )  NOT NULL ,
`city_name` VARCHAR( 20 ) NOT NULL
);

INSERT INTO cities VALUES ('Canada', 'torento');
INSERT INTO cities VALUES ( 'US', 'State Vila');

CREATE TABLE `countries` (
`country_name` VARCHAR( 20 ) NOT NULL ,
`country_code` INT( 50 )  NOT NULL
);

INSERT INTO countries VALUES ('Canada',1300);
INSERT INTO countries VALUES ('US',1205);

CREATE TABLE `incident` (
`incident_type` VARCHAR( 25 )  NOT NULL ,
`incident_code` INT( 10 )  NOT NULL ,
`incident_area` VARCHAR( 20 )  NOT NULL ,
`incident_date` DATETIME NOT NULL ,
PRIMARY KEY ( `incident_type` )
);

INSERT INTO  incident VALUES ('theft',100,'State Vila','2007-05-01 03:22:34' );
INSERT INTO  incident VALUES ('suicide',300,'State Vila','2010-01-01 03:22:34' );

CREATE TABLE `daily_stats` (
`entry_date` DATETIME  NOT NULL ,
`receivedcall_no` INT( 20 )  NOT NULL ,
`rewardsdeclined_no` INT( 100 ) NOT NULL ,
`forfeitures_no` INT( 100 ) NOT NULL ,
`restitutions_no` INT( 100 ) NOT NULL ,
`prosecutions_no` INT( 100 ) NOT NULL ,
`convictions_no` INT( 100 ) NOT NULL
);

INSERT INTO daily_stats VALUES ('2007-05-01 03:22:34',+88017279048,1200,2300,1500,3990,3400);
INSERT INTO daily_stats VALUES ('2010-01-01 03:22:34',+8801720598379,1300,14500,15300,392390,34200);

CREATE TABLE `dispositions` (
`information_no` INT( 100 ) NOT NULL AUTO_INCREMENT ,
`offense_name` VARCHAR( 20 ) NOT NULL ,
`call_date` DATETIME NOT NULL ,
`agency_name` VARCHAR( 20 ) NOT NULL ,
`other_disposition` TEXT NOT NULL ,
`reward_amount` INT( 100 ) NOT NULL ,
`date_approved` DATETIME NOT NULL ,
`reward_paid_date` DATETIME NOT NULL ,
`location_paid` VARCHAR( 15 ) NOT NULL ,
`notes` TEXT NOT NULL ,
PRIMARY KEY ( `information_no` )
) TYPE = MYISAM ;

INSERT  INTO dispositions VALUES ( 100,  'theft',  '2007-05-01 03:22:34',  'OSCE',  'none', 2000,  '2007-07-01 03:22:34',  '2012-03-01 03:22:34',  'Canada',  'it is done by Mr. xxx'  );


CREATE TABLE `arrests` (
`id` INT( 100 ) NOT NULL AUTO_INCREMENT ,
`offense_name` VARCHAR( 20 )  NOT NULL ,
`arrests_firstname` VARCHAR( 10 )  NOT NULL ,
`arrests_lastname` VARCHAR( 10 )  NOT NULL ,
`arrests_alias` VARCHAR( 10 )  NOT NULL ,
`arrest_charge` INT( 10 )  NOT NULL ,
`arrest_date` DATETIME  NOT NULL ,
`arresting_officer` VARCHAR( 20 )  NOT NULL ,
`agency_name` VARCHAR( 20 )  NOT NULL ,
`arrest_indictmentDate` DATETIME  NOT NULL ,
`final_disposition` VARCHAR( 10 )  NOT NULL ,
PRIMARY KEY ( `id` )
) TYPE = MYISAM ;

INSERT INTO arrests VALUES(1,'theft','Monsur','Ali','Monsur',10000,'2007-05-02 04:22:34','Barbar','OSCE','2007-05-01 03:22:34','Finish');
INSERT  INTO arrests VALUES ( 2,  'suicide',  'Jenny',  'Alias',  'Amena', 0,  '2007-05-02 04:22:34',  'Barbar',  'OSCE',  '2007-05-01 03:22:34',  'Finish'  );

CREATE TABLE `cases_cleard` (
`case_no` INT( 100 ) NOT NULL AUTO_INCREMENT ,
`offense_name` VARCHAR( 20 )  NOT NULL ,
`incident_type` VARCHAR( 25 ) NOT NULL ,
`agency_name` VARCHAR( 20 ) NOT NULL ,
`victims_name` VARCHAR( 20 ) NOT NULL ,
`address` TEXT NOT NULL ,
`country_name` VARCHAR( 20 )NOT NULL ,
`city_name` VARCHAR( 20 )  NOT NULL ,
`state_name` VARCHAR( 20 )  NOT NULL ,
`postal_code` INT( 10 )  NOT NULL ,
`date_cleared` DATETIME  NOT NULL ,
`date_recovered` DATETIME  NOT NULL ,
`recovered_property` INT( 100 ) NOT NULL ,
`recovered_narcotics` INT( 100 )  NOT NULL ,
PRIMARY KEY ( `case_no` )
) TYPE = MYISAM ;

INSERT INTO cases_cleard VALUES (1,'theft','theft by an addicted','OSCE','Jeny','24-state villa,US','US','State Vila','State Vila',1205,'2007-09-01 04:44:55','2007-10-01 04:44:55',122,10);
INSERT  INTO cases_cleard VALUES ( 2,  'suicide',  'committed by self',  'OSCE',  'jenifer',  '49,block-b,torento,Canada',  'Canada',  'torento',  'State Vila', 1300,  '2010-04-06 04:44:55',  '2010-05-06 04:44:55', 3, 0  );


CREATE TABLE `event_log` (
`date` DATETIME  NOT NULL ,
`user_name` VARCHAR( 20 )  NOT NULL ,
`reboot_number` INT( 10 )  NOT NULL ,
`error_number` INT( 10 )  NOT NULL ,
`system_message` TEXT NOT NULL ,
`method` TEXT NOT NULL ,
`code` INT( 10 )  NOT NULL
);

INSERT INTO event_log VALUES ('2007-09-01 04:44:55','modon',10,20,'you r failure','try again',120);
INSERT INTO event_log VALUES ('2010-04-06 04:44:55','sokhina',11,40,'you r failure','try again',130);


CREATE TABLE `information` (
`information_no` INT( 100 ) NOT NULL AUTO_INCREMENT ,
`reporting_period` DATETIME  NOT NULL ,
`CS_contact` VARCHAR( 10 ) NOT NULL ,
PRIMARY KEY ( `information_no` )
) TYPE = MYISAM ;

INSERT INTO information VALUES(100,'2007-06-01 04:44:55','kuddus');


CREATE TABLE `informant` (
`information_no` INT( 100 ) NOT NULL AUTO_INCREMENT ,
`report_date` DATETIME  NOT NULL ,
`CS_contact` VARCHAR( 10 )  NOT NULL ,
`referred_to` VARCHAR( 20 )  NOT NULL ,
`2ndreferred_to` VARCHAR( 20 )  NOT NULL ,
`incident_type` VARCHAR( 25 )  NOT NULL ,
`incident_code` INT( 10 )  NOT NULL ,
`incident_area` VARCHAR( 20 )  NOT NULL ,
`incident_date` DATETIME  NOT NULL ,
`time_occured` TIME NOT NULL ,
`official_summary` TEXT NOT NULL ,
`nameof_other_witnesses` VARCHAR( 20 ) NOT NULL ,
`details` TEXT NOT NULL ,
PRIMARY KEY ( `information_no` )
) TYPE = MYISAM ;

INSERT INTO informant VALUES (100,'2007-06-01 04:44:55','kuddus','Shofik','Rofik','theft',100,'State Vila','2007-05-01 03:22:34','03:22:34','theft by kuddus who is an addicted','Shokhina','She is .....');


CREATE TABLE `informant_info` (
`information_no` INT( 100 ) NOT NULL AUTO_INCREMENT ,
`informant_name` VARCHAR( 20 )  NOT NULL ,
`address` TEXT NOT NULL ,
`city_name` VARCHAR( 20 ) NOT NULL ,
`state_name` VARCHAR( 20 ) NOT NULL ,
`postal_code` INT( 10 ) NOT NULL ,
`entry_date` DATETIME NOT NULL ,
`details` TEXT NOT NULL ,
`other_agency` VARCHAR( 20 )  NOT NULL ,
`action_taken` TEXT NOT NULL ,
PRIMARY KEY ( `information_no` )
) TYPE = MYISAM ;

INSERT INTO informant_info VALUES (100,'kuddus','24-state villa,US','State Vila','State Vila',1205,'2007-05-01 03:22:34','...','none','...');


CREATE TABLE `cs_statistics` (
`reporting_period` TIME  NOT NULL ,
`numberofsuspect_arrested` INT( 50 )  NOT NULL ,
`numberofoffenses_cleared` INT( 50 ) NOT NULL ,
`receivedcall_no` INT( 20 )NOT NULL ,
`code` INT( 10 ) NOT NULL ,
`reward_amount` INT( 100 )  NOT NULL ,
`reward_paid_date` DATETIME  NOT NULL ,
`recovered_property` INT( 100 )  NOT NULL ,
`recovered_narcotics` INT( 100 ) NOT NULL ,
`reporting_officer` VARCHAR( 20 )  NOT NULL ,
`offense_name` VARCHAR( 20 )  NOT NULL
);

INSERT INTO cs_statistics VALUES ('09:56:00',12,3,+88017279048,120,2000,'2012-03-01 03:22:34',122,10,'Boyati','theft');


CREATE TABLE `offenses` (
`id` INT( 100 ) NOT NULL AUTO_INCREMENT ,
`offense_name` VARCHAR( 20 )  NOT NULL ,
`case_no` INT( 100 )  NOT NULL ,
`receivedcall_no` INT( 20 )  NOT NULL ,
PRIMARY KEY ( `id` )
) TYPE = MYISAM ;

INSERT INTO offenses VALUES (1,'theft',1,+88017279048);


CREATE TABLE `suspect` (
`id` INT( 100 ) NOT NULL AUTO_INCREMENT primary key,
`first_name` VARCHAR( 10 )  NOT NULL ,
`last_name` VARCHAR( 10 )  NOT NULL ,
`suspect_alias` VARCHAR( 10 )  NOT NULL ,
`address` TEXT NOT NULL ,
`city_name` VARCHAR( 20 )  NOT NULL ,
`state_name` VARCHAR( 20 )  NOT NULL ,
`postal_code` INT( 10 )  NOT NULL ,
`home_phone` INT( 20 )  NOT NULL
)TYPE = MYISAM ;

INSERT INTO suspect VALUES (1,'Shofik','Rahman','Rofik','24-state villa,US','State Vila','State Vila',1205,+88023948578);

CREATE TABLE `suspect_employee` (
`id` INT( 100 ) NOT NULL AUTO_INCREMENT ,
`employer` VARCHAR( 50 )  NOT NULL ,
`address` TEXT NOT NULL ,
`city_name` VARCHAR( 20 )  NOT NULL ,
`state_name` VARCHAR( 20 )  NOT NULL ,
`postal_code` INT( 10 )  NOT NULL ,
`work_phone` INT( 20 )  NOT NULL ,
PRIMARY KEY ( `id` )
) TYPE = MYISAM ;

INSERT  INTO suspect_employee VALUES ( 1,  'officer',  '24-state villa,US',  'State Vila',  'State Vila', 1205 ,  +88029374908755  ) ;


CREATE TABLE `suspect_description` (
`id` INT( 100 ) NOT NULL AUTO_INCREMENT ,
`race` VARCHAR( 20 )  NOT NULL ,
`sex` VARCHAR( 6 )  NOT NULL ,
`age` INT( 2 )  NOT NULL ,
`height` VARCHAR( 6 )  NOT NULL ,
`weight` INT( 3 )  NOT NULL ,
`hair_color` VARCHAR( 10 ) NOT NULL ,
`eye_color` VARCHAR( 10 )  NOT NULL ,
`marks` VARCHAR( 10 )  NOT NULL ,
`other_description` TEXT NOT NULL ,
PRIMARY KEY ( `id` )
) TYPE = MYISAM ;


INSERT  INTO suspect_description VALUES ( 1,  'none',  'Male', 20,  '5.9', 60,  'black',  'black',  'none',  'none'  ) ;


CREATE TABLE `suspect_miscellaneous` (
`id` INT( 100 ) NOT NULL AUTO_INCREMENT ,
`voilence_potential` VARCHAR( 15 )  NOT NULL ,
`gang` VARCHAR( 10 ) NOT NULL ,
`known_associates` VARCHAR( 10 )  NOT NULL ,
`known_hangouts` VARCHAR( 50 )  NOT NULL ,
`remarks` TEXT NOT NULL ,
PRIMARY KEY ( `id` )
) TYPE = MYISAM ;

INSERT INTO suspect_miscellaneous VALUES (1,'none','none','none','none','none');


CREATE TABLE `agency` (
`agency_name` VARCHAR( 20 )  NOT NULL ,
`other_agency` VARCHAR( 20 ) NOT NULL
);

INSERT INTO agency VALUES ( 'OSCE', 'none');


CREATE TABLE `case_facts` (
`case_no` INT( 100 ) NOT NULL AUTO_INCREMENT ,
`case_facts` TEXT NOT NULL ,
PRIMARY KEY ( `case_no` )
) TYPE = MYISAM ;

INSERT INTO case_facts VALUES (1,'...');
INSERT INTO case_facts VALUES (2,'...');


CREATE TABLE `login_history` (
`user_name` VARCHAR( 20 )  NOT NULL ,
`login` VARCHAR( 1 )  NOT NULL ,
`logout` VARCHAR( 1 )  NOT NULL ,
`logout_type` VARCHAR( 20 )  NOT NULL
);

INSERT  INTO login_history VALUES ('modon', 'y',' n',  'system loss' );
INSERT  INTO login_history VALUES ('sokhina', 'n',' y',  'no error' );


CREATE TABLE `user_properties` (
`user_name` VARCHAR( 20 )  NOT NULL ,
`password` VARCHAR( 32 )  NOT NULL ,
`first_name` VARCHAR( 10 )  NOT NULL ,
`last_name` VARCHAR( 10 )  NOT NULL ,
`last_login` DATETIME  NOT NULL ,
`user_phone_no` INT( 20 )  NOT NULL ,
`secured_item` INT( 20 ) NOT NULL ,
`user_notes` TEXT NOT NULL
);

INSERT INTO  `user_properties` VALUES ('modon','12345','Abdul','Modon','2007-05-01 03:22:34',+882147483647,1234,'...');
INSERT INTO  `user_properties` VALUES ('sokhina','6789','Sokhina','Khatun','2010-03-06 04:44:55',+8802849048,56787,'...');


CREATE TABLE `dates` (
`date` DATETIME  NOT NULL ,
`report_date` DATETIME  NOT NULL ,
`date_of_inception` DATETIME  NOT NULL ,
`incident_date` DATETIME  NOT NULL ,
`call_date` DATETIME  NOT NULL ,
`date_approved` DATETIME  NOT NULL ,
`reward_paid_date` DATETIME  NOT NULL ,
`entry_date` DATETIME  NOT NULL ,
`date_cleared` DATETIME  NOT NULL ,
`date_recovered` DATETIME  NOT NULL
);

INSERT INTO dates VALUES ('2007-09-01 04:44:55','2007-06-01 04:44:55',  '2007-05-01 03:22:34','2007-05-01 03:22:34' ,'2007-05-01 03:22:34','2007-07-01 03:22:34',  '2012-03-01 03:22:34','2007-05-01 03:22:34','2007-09-01 04:44:55','2007-10-01 04:44:55');


CREATE TABLE `phone_directory` (
`admin_phoneNo` INT( 20 )  NOT NULL ,
`receivedcall_no` INT( 20 )  NOT NULL ,
`home_phone` INT( 20 )  NOT NULL ,
`work_phone` INT( 20 )  NOT NULL ,
`user_phone_no` INT( 20 )  NOT NULL
);


INSERT INTO phone_directory VALUES (+880172596248,+88017279048,+88023948578,+88029374908755 ,+882147483647);









