--------------------------------------------------------
--  File created - Thursday-November-06-2014   
--------------------------------------------------------
DROP TABLE "CALLS";
DROP TABLE "COMPANY_CALLER";
DROP TABLE "CUSTOMERS";
DROP TABLE "MANAGERS";
DROP TABLE "POSTCODES";
DROP TABLE "SHIFT_TIME";
DROP TABLE "SHIFTS";
DROP TABLE "STAFF";
DROP TABLE "STAFF_LEVEL";
--------------------------------------------------------
--  DDL for Table CALLS
--------------------------------------------------------

  CREATE TABLE "CALLS" 
   (	"CALL_REF" VARCHAR2(10), 
	"DATES" VARCHAR2(50), 
	"TIME" VARCHAR2(10), 
	"COMPANY_REF" VARCHAR2(10), 
	"DETAIL" VARCHAR2(150), 
	"TAKEN_BY" VARCHAR2(10), 
	"ASSIGNED_TO" VARCHAR2(10), 
	"STATUS" VARCHAR2(10), 
	"COMPANY_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table COMPANY_CALLER
--------------------------------------------------------

  CREATE TABLE "COMPANY_CALLER" 
   (	"COMPANY_REF" VARCHAR2(10), 
	"CALLER" VARCHAR2(50), 
	"COMPANY_ID" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table CUSTOMERS
--------------------------------------------------------

  CREATE TABLE "CUSTOMERS" 
   (	"COMPANY_REF" NUMBER, 
	"COMPANY" VARCHAR2(40), 
	"CONTACT_FORENAME" VARCHAR2(20), 
	"CONTACT_SURNAME" VARCHAR2(20), 
	"POSTCODE" VARCHAR2(15), 
	"TELEPHONE" NUMBER, 
	"CALLERS" VARCHAR2(100)
   ) ;
--------------------------------------------------------
--  DDL for Table MANAGERS
--------------------------------------------------------

  CREATE TABLE "MANAGERS" 
   (	"MANAGER_ID" VARCHAR2(3), 
	"FIRST_NAME" VARCHAR2(20), 
	"LAST_NAME" VARCHAR2(20)
   ) ;
--------------------------------------------------------
--  DDL for Table POSTCODES
--------------------------------------------------------

  CREATE TABLE "POSTCODES" 
   (	"POSTCODE" VARCHAR2(8), 
	"CITY" VARCHAR2(40), 
	"ADDRESS" VARCHAR2(40)
   ) ;
--------------------------------------------------------
--  DDL for Table SHIFT_TIME
--------------------------------------------------------

  CREATE TABLE "SHIFT_TIME" 
   (	"SHIFT" VARCHAR2(5), 
	"STARTS" NUMBER, 
	"ENDS" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table SHIFTS
--------------------------------------------------------

  CREATE TABLE "SHIFTS" 
   (	"DATES" VARCHAR2(20), 
	"SHIFT" VARCHAR2(5), 
	"MANAGER_ID" VARCHAR2(3), 
	"OPERATOR" VARCHAR2(3), 
	"ENGINEER1" VARCHAR2(3), 
	"ENGINEER2" VARCHAR2(3), 
	"SHIFT_ID" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table STAFF
--------------------------------------------------------

  CREATE TABLE "STAFF" 
   (	"STAFF_ID" VARCHAR2(3), 
	"FIRST_NAME" VARCHAR2(20), 
	"LAST_NAME" VARCHAR2(20), 
	"LEVELS" NUMBER
   ) ;
--------------------------------------------------------
--  DDL for Table STAFF_LEVEL
--------------------------------------------------------

  CREATE TABLE "STAFF_LEVEL" 
   (	"LEVELS" NUMBER, 
	"MANAGER" VARCHAR2(1), 
	"ENGINEER" VARCHAR2(1), 
	"OPERATOR" VARCHAR2(1)
   ) ;
REM INSERTING into CALLS
SET DEFINE OFF;
Insert into CALLS (CALL_REF,DATES,TIME,COMPANY_REF,DETAIL,TAKEN_BY,ASSIGNED_TO,STATUS,COMPANY_ID) values ('1363','19/08/2014','1058','119','How can I fill a task analysis in Microsoft Powerpoint ? ','MM1','MW1','Closed',127);
Insert into CALLS (CALL_REF,DATES,TIME,COMPANY_REF,DETAIL,TAKEN_BY,ASSIGNED_TO,STATUS,COMPANY_ID) values ('1373','19/08/2014','1249','141','How can I mine a accessibility in Oracle ? ','MM1','MW1','Closed',137);
Insert into CALLS (CALL_REF,DATES,TIME,COMPANY_REF,DETAIL,TAKEN_BY,ASSIGNED_TO,STATUS,COMPANY_ID) values ('1375','19/08/2014','1254','133','How can I grab a callout in MySQL ? ','MM1','MW1','Closed',139);
Insert into CALLS (CALL_REF,DATES,TIME,COMPANY_REF,DETAIL,TAKEN_BY,ASSIGNED_TO,STATUS,COMPANY_ID) values ('1380','19/08/2014','1401','115','How can I permit a task-based documentation in Microsoft Excel ? ','AB2','EB1','Closed',144);
Insert into CALLS (CALL_REF,DATES,TIME,COMPANY_REF,DETAIL,TAKEN_BY,ASSIGNED_TO,STATUS,COMPANY_ID) values ('1383','19/08/2014','1417','100','How can I appreciate a jargon in Adobe PhotoShop ? ','AB2','EB1','Closed',147);
Insert into CALLS (CALL_REF,DATES,TIME,COMPANY_REF,DETAIL,TAKEN_BY,ASSIGNED_TO,STATUS,COMPANY_ID) values ('1339','19/08/2014','0908','107','Im trying to plug a graphic in Camtasia Studio but the pop-up window is too splendid','MM1','MW1','Closed',103);
Insert into CALLS (CALL_REF,DATES,TIME,COMPANY_REF,DETAIL,TAKEN_BY,ASSIGNED_TO,STATUS,COMPANY_ID) values ('1340','19/08/2014','0912','125','How can I wipe a house style in Camtasia Studio ? ','MM1','MW1','Closed',104);
Insert into CALLS (CALL_REF,DATES,TIME,COMPANY_REF,DETAIL,TAKEN_BY,ASSIGNED_TO,STATUS,COMPANY_ID) values ('1349','19/08/2014','0949','114','Im trying to enjoy a EasyEnglish in Oracle but the screen capture is too half','MM1','MW1','Closed',113);
Insert into CALLS (CALL_REF,DATES,TIME,COMPANY_REF,DETAIL,TAKEN_BY,ASSIGNED_TO,STATUS,COMPANY_ID) values ('1351','19/08/2014','0954','112','Im trying to prefer a user analysis in MySQL but the browse sequence is too majestic','MM1','MW1','Closed',115);
Insert into CALLS (CALL_REF,DATES,TIME,COMPANY_REF,DETAIL,TAKEN_BY,ASSIGNED_TO,STATUS,COMPANY_ID) values ('1356','19/08/2014','1018','108','How can I bore a litho printing in MySQL ? ','MM1','MW1','Closed',120);
Insert into CALLS (CALL_REF,DATES,TIME,COMPANY_REF,DETAIL,TAKEN_BY,ASSIGNED_TO,STATUS,COMPANY_ID) values ('1357','19/08/2014','1021','144','How can I grab a controlled vocabulary in MySQL ? ','MM1','MW1','Closed',121);
Insert into CALLS (CALL_REF,DATES,TIME,COMPANY_REF,DETAIL,TAKEN_BY,ASSIGNED_TO,STATUS,COMPANY_ID) values ('1358','19/08/2014','1023','105','How can I prevent a end matter in Adobe Acrobat ? ','MM1','MW1','Closed',122);
REM INSERTING into COMPANY_CALLER
SET DEFINE OFF;
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('120','Evie Patel','1');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('142','Alfie Butler','2');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('132','Conor Lawson','3');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('143','Emily Cooper','4');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('127','Ashley Hill','5');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('137','David Davies','6');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('115','Alexis Best','8');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('135','Grace Wright','9');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('140','Joshua Wood','10');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('100','Noah Anderson','11');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('105','Noah Williams','12');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('149','Adam Harrison','13');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('116','Alfie Elrick','14');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('123','Amelia Best','17');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('110','Ashley Best','18');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('109','Chloe Harris','19');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('128','Chloe Walker','20');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('113','Emily Wright','21');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('133','Alexis Gritten','22');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('117','Amelia Roberts','23');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('101','Sophie Johnson','24');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('148','Hannah Brandom','27');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('112','Nicholas Wilson','29');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('146','Elizabeth Hall','30');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('114','Alexander Bell','31');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('131','Isabella Elrick','32');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('125','Christopher Martin','33');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('108',' Ava Best','34');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('144','Luke Lee','35');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('138','Ava Lewis','38');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('130','John Elrick','39');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('119','Ava Harrison','41');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('122','Luke Hughes','44');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('111','Lily Morgan','47');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('141','Ryan Davies','51');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('103','Evie Lawson','54');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('136','Daniel Lodge','56');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('124','Ava Elrick','58');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('106',' Ava Phillips','63');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('102','Grace Scott','64');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('107','Noah Roberts','66');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('147','Andrew Cooper','79');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('104','Ethan Phillips','80');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('121','Oliver Parker','81');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('139','Logan Robinson','82');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('134','Grace Harrison','83');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('118','Christopher Thompson','111');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('126','Luke McConnell','203');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('129','Oliver Ellis','204');
Insert into COMPANY_CALLER (COMPANY_REF,CALLER,COMPANY_ID) values ('145','Alexis Patel','205');
REM INSERTING into CUSTOMERS
SET DEFINE OFF;
Insert into CUSTOMERS (COMPANY_REF,COMPANY,CONTACT_FORENAME,CONTACT_SURNAME,POSTCODE,TELEPHONE,CALLERS) values (147,'Shaped Logistics','Andrew','Cooper','PL14 1FY',1297122202,'Andrew Cooper, Christopher Gritten');
Insert into CUSTOMERS (COMPANY_REF,COMPANY,CONTACT_FORENAME,CONTACT_SURNAME,POSTCODE,TELEPHONE,CALLERS) values (144,'Snowless Logistics','Luke','Lee','DE19 3UT',1291288810,'Luke Lee, David Gritten');
Insert into CUSTOMERS (COMPANY_REF,COMPANY,CONTACT_FORENAME,CONTACT_SURNAME,POSTCODE,TELEPHONE,CALLERS) values (122,'Snowless Traders','Luke','Hughes','TF47 5BS',1174403286,'Luke Hughes, David Hopgood');
Insert into CUSTOMERS (COMPANY_REF,COMPANY,CONTACT_FORENAME,CONTACT_SURNAME,POSTCODE,TELEPHONE,CALLERS) values (104,'Somebody Logistics','Ethan','Phillips','HX16 1IF',1013707879,'Ethan Phillips, Elizabeth Baker');
Insert into CUSTOMERS (COMPANY_REF,COMPANY,CONTACT_FORENAME,CONTACT_SURNAME,POSTCODE,TELEPHONE,CALLERS) values (121,'Sprightlier Logistics','Oliver','Parker','BB40 4PK',1167376116,'Oliver Parker, Elizabeth Lawson');
Insert into CUSTOMERS (COMPANY_REF,COMPANY,CONTACT_FORENAME,CONTACT_SURNAME,POSTCODE,TELEPHONE,CALLERS) values (139,'Stoker Traders','Logan','Robinson','BT30 1RQ',1239424132,'Logan Robinson, Elizabeth Lee');
Insert into CUSTOMERS (COMPANY_REF,COMPANY,CONTACT_FORENAME,CONTACT_SURNAME,POSTCODE,TELEPHONE,CALLERS) values (127,'Sylvite Group','Ashley','Hill','NR24 8RL',1189708942,'Ashley Hill, Elizabeth Watson');
Insert into CUSTOMERS (COMPANY_REF,COMPANY,CONTACT_FORENAME,CONTACT_SURNAME,POSTCODE,TELEPHONE,CALLERS) values (137,'Take Group','David','Davies','WA17 9RW',1222475899,'David Davies, Emily Johnson');
Insert into CUSTOMERS (COMPANY_REF,COMPANY,CONTACT_FORENAME,CONTACT_SURNAME,POSTCODE,TELEPHONE,CALLERS) values (113,'Tetraneuris Shipping','Isabella','Hall','DE15 2FY',1076912545,'Isabella Hall, Emily Wright');
Insert into CUSTOMERS (COMPANY_REF,COMPANY,CONTACT_FORENAME,CONTACT_SURNAME,POSTCODE,TELEPHONE,CALLERS) values (103,'Train Services','Sean','Roberts','HP38 6DU',1012979358,'Sean Roberts, Evie Lawson');
Insert into CUSTOMERS (COMPANY_REF,COMPANY,CONTACT_FORENAME,CONTACT_SURNAME,POSTCODE,TELEPHONE,CALLERS) values (120,'Variform Traders','Ryan','oConnor','TN49 4YR',1162621897,'Ryan oConnor, Evie Patel');
Insert into CUSTOMERS (COMPANY_REF,COMPANY,CONTACT_FORENAME,CONTACT_SURNAME,POSTCODE,TELEPHONE,CALLERS) values (115,'Whale Shipping','Alexis','Best','NE41 6ZY',1106754312,'Alexis Best, Evie Walker');
REM INSERTING into MANAGERS
SET DEFINE OFF;
Insert into MANAGERS (MANAGER_ID,FIRST_NAME,LAST_NAME) values ('LB1','Logan','Butler');
Insert into MANAGERS (MANAGER_ID,FIRST_NAME,LAST_NAME) values ('AE1','Ava','Ellis');
REM INSERTING into POSTCODES
SET DEFINE OFF;
Insert into POSTCODES (POSTCODE,CITY,ADDRESS) values ('PL14 1FY','Plymouth','34 Confusion Mews  ');
Insert into POSTCODES (POSTCODE,CITY,ADDRESS) values ('DE19 3UT','Derby','85 Shun Drive  ');
Insert into POSTCODES (POSTCODE,CITY,ADDRESS) values ('TF47 5BS','Telford','99 Ting Oval ');
Insert into POSTCODES (POSTCODE,CITY,ADDRESS) values ('HX16 1IF','Hull','93 Calculated Oval ');
Insert into POSTCODES (POSTCODE,CITY,ADDRESS) values ('BB40 4PK','Blackburn','16 Basso Hill ');
Insert into POSTCODES (POSTCODE,CITY,ADDRESS) values ('BT30 1RQ','Canterbury','101 Peridiastole Pathway ');
Insert into POSTCODES (POSTCODE,CITY,ADDRESS) values ('NR24 8RL','Norwich','73 Shift Avenue ');
Insert into POSTCODES (POSTCODE,CITY,ADDRESS) values ('WA17 9RW','Warrington','45 Prejudicial Square ');
Insert into POSTCODES (POSTCODE,CITY,ADDRESS) values ('DE15 2FY','Derby','47 Judge Green ');
Insert into POSTCODES (POSTCODE,CITY,ADDRESS) values ('HP38 6DU','Hemel Hempstead','30 Crizzel Parkway ');
Insert into POSTCODES (POSTCODE,CITY,ADDRESS) values ('TN49 4YR','Tonbridge','100 Poetize Dell ');
Insert into POSTCODES (POSTCODE,CITY,ADDRESS) values ('NE41 6ZY','Newport','88 Demotic Row ');
REM INSERTING into SHIFT_TIME
SET DEFINE OFF;
Insert into SHIFT_TIME (SHIFT,STARTS,ENDS) values ('Early',800,1400);
Insert into SHIFT_TIME (SHIFT,STARTS,ENDS) values ('Late',1400,2000);
REM INSERTING into SHIFTS
SET DEFINE OFF;
Insert into SHIFTS (DATES,SHIFT,MANAGER_ID,OPERATOR,ENGINEER1,ENGINEER2,SHIFT_ID) values ('18/08/2014','Early','LB1','AW1','AE1','JE1',1);
Insert into SHIFTS (DATES,SHIFT,MANAGER_ID,OPERATOR,ENGINEER1,ENGINEER2,SHIFT_ID) values ('18/08/2014','Late','AE1','IM1','AL1','BJ1',2);
Insert into SHIFTS (DATES,SHIFT,MANAGER_ID,OPERATOR,ENGINEER1,ENGINEER2,SHIFT_ID) values ('19/08/2014','Early','AE1','MM1','MW1',null,3);
Insert into SHIFTS (DATES,SHIFT,MANAGER_ID,OPERATOR,ENGINEER1,ENGINEER2,SHIFT_ID) values ('19/08/2014','Late','AE1','AB2','EB1',null,4);
Insert into SHIFTS (DATES,SHIFT,MANAGER_ID,OPERATOR,ENGINEER1,ENGINEER2,SHIFT_ID) values ('20/08/2014','Early','LB1','AB1','DJ1','JP1',5);
Insert into SHIFTS (DATES,SHIFT,MANAGER_ID,OPERATOR,ENGINEER1,ENGINEER2,SHIFT_ID) values ('20/08/2014','Late','LB1','JE1','AB2','BJ1',6);
Insert into SHIFTS (DATES,SHIFT,MANAGER_ID,OPERATOR,ENGINEER1,ENGINEER2,SHIFT_ID) values ('21/08/2014','Early','LB1','NS1','AE1','MB1',7);
Insert into SHIFTS (DATES,SHIFT,MANAGER_ID,OPERATOR,ENGINEER1,ENGINEER2,SHIFT_ID) values ('21/08/2014','Late','LB1','HP1','EH1','AL1',8);
Insert into SHIFTS (DATES,SHIFT,MANAGER_ID,OPERATOR,ENGINEER1,ENGINEER2,SHIFT_ID) values ('22/08/2014','Early','LB1','EB2','ME1','MM1',9);
Insert into SHIFTS (DATES,SHIFT,MANAGER_ID,OPERATOR,ENGINEER1,ENGINEER2,SHIFT_ID) values ('22/08/2014','Late','LB1','ME2','AB2','DJ1',10);
REM INSERTING into STAFF
SET DEFINE OFF;
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('AB1','Anthony','Butler',1);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('AB2','Alexis','Butler',3);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('AE1','Ava','Ellis',7);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('AL1','Alexander','Lawson',3);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('AW1','Alyssa','White',1);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('BJ1','Briony','Jones',2);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('DJ1','David','Jones',2);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('EB1','Emily','Butler',3);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('EB2','Emily','Best',5);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('EH1','Ethan','Hopgood',3);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('HP1','Hannah','Penrice',3);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('IL1','Isabella','Lawson',1);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('IM1','Isabella','McConnell',1);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('JE1','Joseph','Elrick',3);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('JL1','Joshua','Lawson',2);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('JP1','James','Penrice',3);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('LB1','Logan','Butler',4);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('MB1','Michael','Best',3);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('ME1','Mia','Ellis',3);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('ME2','Mia','Edmond',1);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('MM1','Madison','McConnell',3);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('MW1','Michael','White',3);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('NL1','Natalie','Lodge',3);
Insert into STAFF (STAFF_ID,FIRST_NAME,LAST_NAME,LEVELS) values ('NS1','Noah','Smith',1);
REM INSERTING into STAFF_LEVEL
SET DEFINE OFF;
Insert into STAFF_LEVEL (LEVELS,MANAGER,ENGINEER,OPERATOR) values (1,null,'Y',null);
Insert into STAFF_LEVEL (LEVELS,MANAGER,ENGINEER,OPERATOR) values (3,null,'Y','Y');
Insert into STAFF_LEVEL (LEVELS,MANAGER,ENGINEER,OPERATOR) values (7,'Y','Y','Y');
Insert into STAFF_LEVEL (LEVELS,MANAGER,ENGINEER,OPERATOR) values (2,null,null,'Y');
Insert into STAFF_LEVEL (LEVELS,MANAGER,ENGINEER,OPERATOR) values (5,'Y','Y',null);
Insert into STAFF_LEVEL (LEVELS,MANAGER,ENGINEER,OPERATOR) values (4,'Y',null,null);
--------------------------------------------------------
--  DDL for Index CALLS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CALLS_PK" ON "CALLS" ("CALL_REF") 
  ;
--------------------------------------------------------
--  DDL for Index COMPANY_CALLER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COMPANY_CALLER_PK" ON "COMPANY_CALLER" ("COMPANY_REF") 
  ;
--------------------------------------------------------
--  DDL for Index COMPANY_CALLER_PK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "COMPANY_CALLER_PK1" ON "COMPANY_CALLER" ("COMPANY_ID") 
  ;
--------------------------------------------------------
--  DDL for Index CUSTOMERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CUSTOMERS_PK" ON "CUSTOMERS" ("COMPANY_REF") 
  ;
--------------------------------------------------------
--  DDL for Index MANAGERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MANAGERS_PK" ON "MANAGERS" ("MANAGER_ID") 
  ;
--------------------------------------------------------
--  DDL for Index POSTCODES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "POSTCODES_PK" ON "POSTCODES" ("POSTCODE") 
  ;
--------------------------------------------------------
--  DDL for Index SHIFT_TIME_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHIFT_TIME_PK" ON "SHIFT_TIME" ("SHIFT") 
  ;
--------------------------------------------------------
--  DDL for Index SHIFTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHIFTS_PK" ON "SHIFTS" ("SHIFT_ID") 
  ;
--------------------------------------------------------
--  DDL for Index STAFF_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "STAFF_PK" ON "STAFF" ("STAFF_ID") 
  ;
--------------------------------------------------------
--  DDL for Index LEVELS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LEVELS_PK" ON "STAFF_LEVEL" ("LEVELS") 
  ;
--------------------------------------------------------
--  Constraints for Table CALLS
--------------------------------------------------------

  ALTER TABLE "CALLS" ADD CONSTRAINT "CALLS_PK" PRIMARY KEY ("CALL_REF") ENABLE;
  ALTER TABLE "CALLS" MODIFY ("CALL_REF" NOT NULL ENABLE);
  ALTER TABLE "CALLS" MODIFY ("DATES" NOT NULL ENABLE);
  ALTER TABLE "CALLS" MODIFY ("TIME" NOT NULL ENABLE);
  ALTER TABLE "CALLS" MODIFY ("COMPANY_REF" NOT NULL ENABLE);
  ALTER TABLE "CALLS" MODIFY ("DETAIL" NOT NULL ENABLE);
  ALTER TABLE "CALLS" MODIFY ("TAKEN_BY" NOT NULL ENABLE);
  ALTER TABLE "CALLS" MODIFY ("ASSIGNED_TO" NOT NULL ENABLE);
  ALTER TABLE "CALLS" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "CALLS" MODIFY ("COMPANY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMPANY_CALLER
--------------------------------------------------------

  ALTER TABLE "COMPANY_CALLER" ADD CONSTRAINT "COMPANY_ID_PK" PRIMARY KEY ("COMPANY_ID") ENABLE;
  ALTER TABLE "COMPANY_CALLER" MODIFY ("COMPANY_REF" NOT NULL ENABLE);
  ALTER TABLE "COMPANY_CALLER" MODIFY ("CALLER" NOT NULL ENABLE);
  ALTER TABLE "COMPANY_CALLER" MODIFY ("COMPANY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "CUSTOMERS" MODIFY ("COMPANY_REF" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMERS" MODIFY ("COMPANY" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMERS" MODIFY ("CONTACT_FORENAME" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMERS" MODIFY ("CONTACT_SURNAME" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMERS" MODIFY ("POSTCODE" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMERS" MODIFY ("TELEPHONE" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMERS" MODIFY ("CALLERS" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMERS" ADD CONSTRAINT "COMPANY_REF_PK" PRIMARY KEY ("COMPANY_REF") ENABLE;
--------------------------------------------------------
--  Constraints for Table MANAGERS
--------------------------------------------------------

  ALTER TABLE "MANAGERS" ADD CONSTRAINT "MANAGERS_PK" PRIMARY KEY ("MANAGER_ID") ENABLE;
  ALTER TABLE "MANAGERS" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "MANAGERS" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "MANAGERS" MODIFY ("MANAGER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table POSTCODES
--------------------------------------------------------

  ALTER TABLE "POSTCODES" MODIFY ("POSTCODE" NOT NULL ENABLE);
  ALTER TABLE "POSTCODES" MODIFY ("CITY" NOT NULL ENABLE);
  ALTER TABLE "POSTCODES" MODIFY ("ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "POSTCODES" ADD CONSTRAINT "POSTCODES_PK" PRIMARY KEY ("POSTCODE") ENABLE;
--------------------------------------------------------
--  Constraints for Table SHIFT_TIME
--------------------------------------------------------

  ALTER TABLE "SHIFT_TIME" ADD CONSTRAINT "SHIFT_TIME_PK" PRIMARY KEY ("SHIFT") ENABLE;
  ALTER TABLE "SHIFT_TIME" MODIFY ("ENDS" NOT NULL ENABLE);
  ALTER TABLE "SHIFT_TIME" MODIFY ("STARTS" NOT NULL ENABLE);
  ALTER TABLE "SHIFT_TIME" MODIFY ("SHIFT" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SHIFTS
--------------------------------------------------------

  ALTER TABLE "SHIFTS" MODIFY ("DATES" NOT NULL ENABLE);
  ALTER TABLE "SHIFTS" MODIFY ("SHIFT" NOT NULL ENABLE);
  ALTER TABLE "SHIFTS" MODIFY ("MANAGER_ID" NOT NULL ENABLE);
  ALTER TABLE "SHIFTS" MODIFY ("OPERATOR" NOT NULL ENABLE);
  ALTER TABLE "SHIFTS" MODIFY ("ENGINEER1" NOT NULL ENABLE);
  ALTER TABLE "SHIFTS" MODIFY ("SHIFT_ID" NOT NULL ENABLE);
  ALTER TABLE "SHIFTS" ADD CONSTRAINT "SHIFTS_PK" PRIMARY KEY ("SHIFT_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table STAFF
--------------------------------------------------------

  ALTER TABLE "STAFF" MODIFY ("STAFF_ID" NOT NULL ENABLE);
  ALTER TABLE "STAFF" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "STAFF" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "STAFF" MODIFY ("LEVELS" NOT NULL ENABLE);
  ALTER TABLE "STAFF" ADD CONSTRAINT "STAFF_PK" PRIMARY KEY ("STAFF_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table STAFF_LEVEL
--------------------------------------------------------

  ALTER TABLE "STAFF_LEVEL" ADD CONSTRAINT "LEVELS_PK" PRIMARY KEY ("LEVELS") ENABLE;
  ALTER TABLE "STAFF_LEVEL" MODIFY ("LEVELS" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CALLS
--------------------------------------------------------

  ALTER TABLE "CALLS" ADD CONSTRAINT "CALLS_FK1" FOREIGN KEY ("COMPANY_ID")
	  REFERENCES "CUSTOMERS" ("COMPANY_REF") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "CUSTOMERS" ADD CONSTRAINT "POSTCODE_FK1" FOREIGN KEY ("POSTCODE")
	  REFERENCES "POSTCODES" ("POSTCODE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SHIFTS
--------------------------------------------------------

  ALTER TABLE "SHIFTS" ADD CONSTRAINT "MANAGER_ID_FK2" FOREIGN KEY ("MANAGER_ID")
	  REFERENCES "MANAGERS" ("MANAGER_ID") ENABLE;
  ALTER TABLE "SHIFTS" ADD CONSTRAINT "SHIFT_FK1" FOREIGN KEY ("SHIFT")
	  REFERENCES "SHIFT_TIME" ("SHIFT") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STAFF
--------------------------------------------------------

  ALTER TABLE "STAFF" ADD CONSTRAINT "LEVELS_FK1" FOREIGN KEY ("LEVELS")
	  REFERENCES "STAFF_LEVEL" ("LEVELS") ENABLE;
