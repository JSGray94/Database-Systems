--------------------------------------------------------
--  File created - Thursday-November-06-2014   
--------------------------------------------------------
DROP TABLE "CALLS";
DROP TABLE "COMPANY_CALLER";
DROP TABLE "CUSTOMERS";
DROP TABLE "STAFF_LEVEL";
DROP TABLE "MANAGERS";
DROP TABLE "POSTCODES";
DROP TABLE "SHIFT_TIME";
DROP TABLE "SHIFTS";
DROP TABLE "STAFF";
--------------------------------------------------------
--  DDL for Table CALLS
--------------------------------------------------------

  CREATE TABLE "CALLS" 
   (	"CALL_REF" VARCHAR2(4), 
	"DATES" DATE, 
	"TIME" VARCHAR2(4), 
	"COMPANY_REF" VARCHAR2(3), 
	"DETAIL" VARCHAR2(50), 
	"TAKEN_BY" VARCHAR2(3), 
	"ASSIGNED_TO" VARCHAR2(3), 
	"STATUS" VARCHAR2(7)
   ) ;
--------------------------------------------------------
--  DDL for Table COMPANY_CALLER
--------------------------------------------------------

  CREATE TABLE "COMPANY_CALLER" 
   (	"COMPANY_REF" VARCHAR2(3), 
	"CALLER" VARCHAR2(25)
   ) ;
--------------------------------------------------------
--  DDL for Table CUSTOMERS
--------------------------------------------------------

  CREATE TABLE "CUSTOMERS" 
   (	"COMPANY_REF" NUMBER, 
	"COMPANY" VARCHAR2(40), 
	"CONTACT_FORENAME" VARCHAR2(20), 
	"CONTACT_SURNAME" VARCHAR2(20), 
	"POSTCODE" VARCHAR2(8), 
	"TELEPHONE" NUMBER, 
	"CALLERS" VARCHAR2(100)
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
   (	"DATES" DATE, 
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
REM INSERTING into CALLS
SET DEFINE OFF;
REM INSERTING into COMPANY_CALLER
SET DEFINE OFF;
REM INSERTING into CUSTOMERS
SET DEFINE OFF;
REM INSERTING into STAFF_LEVEL
SET DEFINE OFF;
REM INSERTING into MANAGERS
SET DEFINE OFF;
REM INSERTING into POSTCODES
SET DEFINE OFF;
REM INSERTING into SHIFT_TIME
SET DEFINE OFF;
REM INSERTING into SHIFTS
SET DEFINE OFF;
REM INSERTING into STAFF
SET DEFINE OFF;
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
--  DDL for Index CUSTOMERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CUSTOMERS_PK" ON "CUSTOMERS" ("COMPANY_REF") 
  ;
--------------------------------------------------------
--  DDL for Index LEVELS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "LEVELS_PK" ON "STAFF_LEVEL" ("LEVELS") 
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
--  Constraints for Table CALLS
--------------------------------------------------------

  ALTER TABLE "CALLS" ADD CONSTRAINT "CALLS_PK" PRIMARY KEY ("CALL_REF") ENABLE;
  ALTER TABLE "CALLS" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "CALLS" MODIFY ("ASSIGNED_TO" NOT NULL ENABLE);
  ALTER TABLE "CALLS" MODIFY ("TAKEN_BY" NOT NULL ENABLE);
  ALTER TABLE "CALLS" MODIFY ("DETAIL" NOT NULL ENABLE);
  ALTER TABLE "CALLS" MODIFY ("COMPANY_REF" NOT NULL ENABLE);
  ALTER TABLE "CALLS" MODIFY ("TIME" NOT NULL ENABLE);
  ALTER TABLE "CALLS" MODIFY ("DATES" NOT NULL ENABLE);
  ALTER TABLE "CALLS" MODIFY ("CALL_REF" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMPANY_CALLER
--------------------------------------------------------

  ALTER TABLE "COMPANY_CALLER" ADD CONSTRAINT "COMPANY_CALLER_PK" PRIMARY KEY ("COMPANY_REF") ENABLE;
  ALTER TABLE "COMPANY_CALLER" MODIFY ("CALLER" NOT NULL ENABLE);
  ALTER TABLE "COMPANY_CALLER" MODIFY ("COMPANY_REF" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CUSTOMERS
--------------------------------------------------------

  ALTER TABLE "CUSTOMERS" ADD CONSTRAINT "COMPANY_REF_PK" PRIMARY KEY ("COMPANY_REF") ENABLE;
  ALTER TABLE "CUSTOMERS" MODIFY ("CALLERS" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMERS" MODIFY ("TELEPHONE" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMERS" MODIFY ("POSTCODE" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMERS" MODIFY ("CONTACT_SURNAME" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMERS" MODIFY ("CONTACT_FORENAME" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMERS" MODIFY ("COMPANY" NOT NULL ENABLE);
  ALTER TABLE "CUSTOMERS" MODIFY ("COMPANY_REF" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STAFF_LEVEL
--------------------------------------------------------

  ALTER TABLE "STAFF_LEVEL" ADD CONSTRAINT "LEVELS_PK" PRIMARY KEY ("LEVELS") ENABLE;
  ALTER TABLE "STAFF_LEVEL" MODIFY ("LEVELS" NOT NULL ENABLE);
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

  ALTER TABLE "POSTCODES" ADD CONSTRAINT "POSTCODES_PK" PRIMARY KEY ("POSTCODE") ENABLE;
  ALTER TABLE "POSTCODES" MODIFY ("ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "POSTCODES" MODIFY ("CITY" NOT NULL ENABLE);
  ALTER TABLE "POSTCODES" MODIFY ("POSTCODE" NOT NULL ENABLE);
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

  ALTER TABLE "SHIFTS" ADD CONSTRAINT "SHIFTS_PK" PRIMARY KEY ("SHIFT_ID") ENABLE;
  ALTER TABLE "SHIFTS" MODIFY ("SHIFT_ID" NOT NULL ENABLE);
  ALTER TABLE "SHIFTS" MODIFY ("ENGINEER1" NOT NULL ENABLE);
  ALTER TABLE "SHIFTS" MODIFY ("OPERATOR" NOT NULL ENABLE);
  ALTER TABLE "SHIFTS" MODIFY ("MANAGER_ID" NOT NULL ENABLE);
  ALTER TABLE "SHIFTS" MODIFY ("SHIFT" NOT NULL ENABLE);
  ALTER TABLE "SHIFTS" MODIFY ("DATES" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STAFF
--------------------------------------------------------

  ALTER TABLE "STAFF" ADD CONSTRAINT "STAFF_PK" PRIMARY KEY ("STAFF_ID") ENABLE;
  ALTER TABLE "STAFF" MODIFY ("LEVELS" NOT NULL ENABLE);
  ALTER TABLE "STAFF" MODIFY ("LAST_NAME" NOT NULL ENABLE);
  ALTER TABLE "STAFF" MODIFY ("FIRST_NAME" NOT NULL ENABLE);
  ALTER TABLE "STAFF" MODIFY ("STAFF_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CALLS
--------------------------------------------------------

  ALTER TABLE "CALLS" ADD CONSTRAINT "COMPANY_REF_FK1" FOREIGN KEY ("COMPANY_REF")
	  REFERENCES "COMPANY_CALLER" ("COMPANY_REF") ENABLE;
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
