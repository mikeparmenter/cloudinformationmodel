CREATE SCHEMA IF NOT EXISTS PARTY_ENTITY_GROUP;

CREATE TABLE PARTY_ENTITY_GROUP.UNCATEGORIZED_PARTY (
  CREATION_REASON VARCHAR(500),
  ID VARCHAR(36) UNIQUE NOT NULL,
  UNCATEGORIZED_PARTY_LABEL VARCHAR(500) NOT NULL,
  ORIGINAL_SOURCE_RECORD VARCHAR(500),
  ORIGINAL_SOURCE_SYSTEM VARCHAR(500),
  PARTY_TYPE VARCHAR(500) NOT NULL,
  GLOBAL_PARTY VARCHAR(500),
  NO_MERGE_REASON VARCHAR(500),
  PRIMARY KEY (ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.PERSON_LANGUAGE (
  ID VARCHAR(36) UNIQUE NOT NULL,
  SPOKEN_PROFICIENCY_LEVEL VARCHAR(500),
  WRITTEN_PROFICIENCY_LEVEL VARCHAR(500),
  PRIMARY KEY (ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.PERSON_EDUCATION (
  ID VARCHAR(36) UNIQUE NOT NULL,
  EDUCATION_LEVEL VARCHAR(500) NOT NULL,
  EDUCATION_NAME VARCHAR(500) NOT NULL,
  GRADUATION_DATE DATE NOT NULL,
  INSTITUTION_NAME VARCHAR(500) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.INDIVIDUAL (
  HAS_ALCOHOL_ABUSE_HISTORY BOOLEAN,
  HIGHEST_EDUCATION_LEVEL VARCHAR(500),
  PERSON_HEIGHT INTEGER,
  MAILING_NAME VARCHAR(500),
  SURGERIES_LAST5_YEARS_COUNT INTEGER,
  DO_NOT_TRACK_UPDATE_DATE DATE,
  WEDDING_ANNIVERSARY_DATE DATE,
  MINOR_CITATION_COUNT INTEGER,
  MAIN_DIETARY_HABIT_TYPE VARCHAR(500),
  PERSON_HEIGHT_UNIT_OF_MEASURE VARCHAR(500),
  FIRST_NAME VARCHAR(500),
  PERSON_NAME VARCHAR(500) NOT NULL,
  PHOTO_UR_L VARCHAR(500),
  IS_HIGH_RISK_HOBBY BOOLEAN,
  DO_NOT_PROCESS_FROM_UPDATE_DATE DATE,
  MILITARY_SERVICE VARCHAR(500),
  MARITAL_STATUS VARCHAR(500),
  DO_NOT_MARKET_FROM_UPDATE_DATE DATE,
  SHOULD_FORGET BOOLEAN,
  ID VARCHAR(36) UNIQUE NOT NULL,
  MAIN_DISABILITY_TYPE VARCHAR(500),
  CONSUMER_CREDIT_SCORE_PROVIDER_NAME VARCHAR(500),
  IS_TOBACCO_CONSUME BOOLEAN,
  WEB_SITE_UR_L VARCHAR(500),
  SECOND_LAST_NAME VARCHAR(500),
  ORDERING_NAME VARCHAR(500),
  HOSPITALIZATIONS_LAST5_YEARS_COUNT INTEGER,
  DEPENDENT_COUNT INTEGER,
  CONVICTIONS_COUNT INTEGER,
  IS_GOOD_DRIVER BOOLEAN,
  PRIMARY_HOBBY VARCHAR(500),
  MAIN_PERSONAL_VALUE_TYPE VARCHAR(500),
  IS_ALCOHOL_CONSUMER BOOLEAN,
  TAX_BRACKET_RANGE VARCHAR(500),
  CHILDREN_COUNT INTEGER,
  IS_GOOD_STUDENT BOOLEAN,
  MAIN_LIFE_ATTITUDE_TYPE VARCHAR(500),
  NET_WORTH INTEGER,
  PERSON_WEIGHT INTEGER,
  BIRTH_DATE DATE,
  RELIGION VARCHAR(500),
  SEND_INDIVIDUAL_DATA BOOLEAN,
  DEATH_DATE DATE,
  DO_EXTRACT_MY_DATA_UPDATE_DATE DATE,
  BIRTH_PLACE VARCHAR(500),
  OVER_AGE_NUMBER INTEGER,
  DO_FORGET_ME_FROM_UPDATE_DATE DATE,
  PERSON_WEIGHT_UNIT_OF_MEASURE VARCHAR(500),
  MAIN_LIFE_STYLE_TYPE VARCHAR(500),
  GENDER VARCHAR(500),
  HAS_DRUG_ABUSE_HISTORY BOOLEAN,
  SALUTATION VARCHAR(500),
  MOTHERS_MAIDEN_NAME VARCHAR(500),
  DO_NOT_TRACK_LOCATION_UPDATE_DATE DATE,
  ETHNICITY VARCHAR(500),
  MAIN_PERSONALITY_TYPE VARCHAR(500),
  EMPLOYED_SINCE_DATE DATE,
  OFFICIAL_NAME VARCHAR(500),
  IS_HIGH_RISK_OCCUPATION BOOLEAN,
  RESIDENCE_CAPTURE_METHOD VARCHAR(500),
  DO_NOT_PROFILE_FROM_UPDATE_DATE DATE,
  NAME_SUFFIX VARCHAR(500),
  IS_DRUG_CONSUMER BOOLEAN,
  IS_HOME_OWNER BOOLEAN,
  DO_NOT_PROCESS_REASON VARCHAR(500),
  OCCUPATION_TYPE VARCHAR(500),
  DEATH_PLACE VARCHAR(500),
  INFLUENCER_RATING INTEGER,
  MILITARY_STATUS VARCHAR(500),
  CONSUMER_CREDIT_SCORE INTEGER,
  YEARLY_INCOME INTEGER,
  PREFERRED_NAME VARCHAR(500),
  PERSON_LIFE_STAGE VARCHAR(500),
  YEARLY_INCOME_RANGE VARCHAR(500),
  MAJOR_CITATION_COUNT INTEGER,
  MIDDLE_NAME VARCHAR(500),
  RESIDENCE_COUNTRY_NAME VARCHAR(500),
  LAST_NAME VARCHAR(500),
  OCCUPATION VARCHAR(500),
  CURRENT_EMPLOYER_NAME VARCHAR(500),
  PARTY_TYPE VARCHAR(500) NOT NULL,
  GLOBAL_PARTY VARCHAR(500),
  NO_MERGE_REASON VARCHAR(500),
  PRIMARY KEY (ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.PERSON_EMPLOYMENT (
  EMPLOYMENT_STATUS VARCHAR(500) NOT NULL,
  POSITION_TEXT VARCHAR(500) NOT NULL,
  EMPLOYER_ADDRESS_LINE3 VARCHAR(500),
  END_DATE DATE NOT NULL,
  START_DATE DATE NOT NULL,
  OCCUPATION_TEXT VARCHAR(500) NOT NULL,
  ID VARCHAR(36) UNIQUE NOT NULL,
  EMPLOYER_NAME VARCHAR(500) NOT NULL,
  EMPLOYER_ADDRESS_LINE4 VARCHAR(500),
  EMPLOYER_ADDRESS_LINE1 VARCHAR(500) NOT NULL,
  ANNUAL_INCOME INTEGER NOT NULL,
  EMPLOYER_CITY_NAME VARCHAR(500),
  EMPLOYER_ADDRESS_LINE2 VARCHAR(500),
  EMPLOYER_POSTAL_CODE_TEXT VARCHAR(500),
  EMPLOYER_PHONE_NUMBER VARCHAR(500) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.PARTY_IDENTIFICATION (
  EXPIRY_DATE DATE,
  PARTY_IDENTIFICATION_TYPE VARCHAR(500) NOT NULL,
  VERIFIED_DATE DATE,
  ISSUED_BY_AUTHORITY VARCHAR(500),
  ISSUED_AT_LOCATION VARCHAR(500),
  ISSUED_DATE DATE,
  PARTY_ROLE VARCHAR(500),
  ID VARCHAR(36) UNIQUE NOT NULL,
  NAME VARCHAR(500) NOT NULL,
  IDENTIFICATION_NUMBER VARCHAR(500) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.PARTY_RELATED_PARTY (
  RELATED_FROM_DATE DATE NOT NULL,
  ID VARCHAR(36) UNIQUE NOT NULL,
  RELATED_TO_DATE DATE NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.PARTY_ADDITIONAL_NAME (
  ID VARCHAR(36) UNIQUE NOT NULL,
  ADDITIONAL_NAME_TYPE VARCHAR(500) NOT NULL,
  NAME VARCHAR(500) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.PARTY_RELATIONSHIP_TYPE (
  IS_BIDIRECTIONAL BOOLEAN NOT NULL,
  ID VARCHAR(36) UNIQUE NOT NULL,
  PARTY_ROLE VARCHAR(500) NOT NULL,
  RELATED_PARTY_ROLE VARCHAR(500) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.HOUSEHOLD (
  HOUSEHOLD_MEMBER_COUNT INTEGER,
  HOUSEHOLD_FORMED_DATE DATE,
  ID VARCHAR(36) UNIQUE NOT NULL,
  NAME VARCHAR(500) NOT NULL,
  HOUSEHOLD_DISSOLVED_DATE DATE,
  PARTY_TYPE VARCHAR(500) NOT NULL,
  GLOBAL_PARTY VARCHAR(500),
  NO_MERGE_REASON VARCHAR(500),
  PRIMARY KEY (ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.PERSON_LIFE_EVENT (
  ID VARCHAR(36) UNIQUE NOT NULL,
  PERSON_LIFE_EVENT_DATE_TIME TIME NOT NULL,
  PERSON_LIFE_EVENT_TYPE VARCHAR(500) NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.PARTY (
  PARTY_TYPE VARCHAR(500) NOT NULL,
  ID VARCHAR(36) UNIQUE NOT NULL,
  GLOBAL_PARTY VARCHAR(500),
  NO_MERGE_REASON VARCHAR(500),
  PRIMARY KEY (ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.INTERNAL_BUSINESS_UNIT (
  ID VARCHAR(36) UNIQUE NOT NULL,
  BUSINESS_UNIT_TYPE VARCHAR(500) NOT NULL,
  NAME VARCHAR(500) NOT NULL,
  PARTY_TYPE VARCHAR(500) NOT NULL,
  GLOBAL_PARTY VARCHAR(500),
  NO_MERGE_REASON VARCHAR(500),
  PRIMARY KEY (ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.UNCATEGORIZED_PARTY_PRIMARY_ACCOUNT_JOIN (
  UNCATEGORIZED_PARTY_ID  VARCHAR(36) NOT NULL,
  ACCOUNT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(UNCATEGORIZED_PARTY_ID) REFERENCES PARTY_ENTITY_GROUP.UNCATEGORIZED_PARTY(ID),
  FOREIGN KEY(ACCOUNT_ID) REFERENCES ACCOUNT_ENTITY_GROUP.ACCOUNT(ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.PERSON_LANGUAGE_INDIVIDUAL_JOIN (
  PERSON_LANGUAGE_ID  VARCHAR(36) NOT NULL,
  INDIVIDUAL_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PERSON_LANGUAGE_ID) REFERENCES PARTY_ENTITY_GROUP.PERSON_LANGUAGE(ID),
  FOREIGN KEY(INDIVIDUAL_ID) REFERENCES PARTY_ENTITY_GROUP.INDIVIDUAL(ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.PERSON_EDUCATION_INDIVIDUAL_JOIN (
  PERSON_EDUCATION_ID  VARCHAR(36) NOT NULL,
  INDIVIDUAL_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PERSON_EDUCATION_ID) REFERENCES PARTY_ENTITY_GROUP.PERSON_EDUCATION(ID),
  FOREIGN KEY(INDIVIDUAL_ID) REFERENCES PARTY_ENTITY_GROUP.INDIVIDUAL(ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.INDIVIDUAL_PRIMARY_HOUSEHOLD_JOIN (
  INDIVIDUAL_ID  VARCHAR(36) NOT NULL,
  HOUSEHOLD_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(INDIVIDUAL_ID) REFERENCES PARTY_ENTITY_GROUP.INDIVIDUAL(ID),
  FOREIGN KEY(HOUSEHOLD_ID) REFERENCES PARTY_ENTITY_GROUP.HOUSEHOLD(ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.INDIVIDUAL_PRIMARY_ACCOUNT_JOIN (
  INDIVIDUAL_ID  VARCHAR(36) NOT NULL,
  ACCOUNT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(INDIVIDUAL_ID) REFERENCES PARTY_ENTITY_GROUP.INDIVIDUAL(ID),
  FOREIGN KEY(ACCOUNT_ID) REFERENCES ACCOUNT_ENTITY_GROUP.ACCOUNT(ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.PERSON_EMPLOYMENT_EMPLOYER_CONTACT_POINT_ADDRESS_JOIN (
  PERSON_EMPLOYMENT_ID  VARCHAR(36) NOT NULL,
  CONTACT_POINT_ADDRESS_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PERSON_EMPLOYMENT_ID) REFERENCES PARTY_ENTITY_GROUP.PERSON_EMPLOYMENT(ID),
  FOREIGN KEY(CONTACT_POINT_ADDRESS_ID) REFERENCES CONTACT_POINT_ENTITY_GROUP.CONTACT_POINT_ADDRESS(ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.PERSON_EMPLOYMENT_INDIVIDUAL_JOIN (
  PERSON_EMPLOYMENT_ID  VARCHAR(36) NOT NULL,
  INDIVIDUAL_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PERSON_EMPLOYMENT_ID) REFERENCES PARTY_ENTITY_GROUP.PERSON_EMPLOYMENT(ID),
  FOREIGN KEY(INDIVIDUAL_ID) REFERENCES PARTY_ENTITY_GROUP.INDIVIDUAL(ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.PARTY_IDENTIFICATION_PARTY_JOIN (
  PARTY_IDENTIFICATION_ID  VARCHAR(36) NOT NULL,
  PARTY_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PARTY_IDENTIFICATION_ID) REFERENCES PARTY_ENTITY_GROUP.PARTY_IDENTIFICATION(ID),
  FOREIGN KEY(PARTY_ID) REFERENCES PARTY_ENTITY_GROUP.PARTY(ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.PARTY_RELATED_PARTY_PARTY_RELATIONSHIP_TYPE_JOIN (
  PARTY_RELATED_PARTY_ID  VARCHAR(36) NOT NULL,
  PARTY_RELATIONSHIP_TYPE_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PARTY_RELATED_PARTY_ID) REFERENCES PARTY_ENTITY_GROUP.PARTY_RELATED_PARTY(ID),
  FOREIGN KEY(PARTY_RELATIONSHIP_TYPE_ID) REFERENCES PARTY_ENTITY_GROUP.PARTY_RELATIONSHIP_TYPE(ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.PARTY_RELATED_PARTY_RELATED_PARTY_JOIN (
  PARTY_RELATED_PARTY_ID  VARCHAR(36) NOT NULL,
  PARTY_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PARTY_RELATED_PARTY_ID) REFERENCES PARTY_ENTITY_GROUP.PARTY_RELATED_PARTY(ID),
  FOREIGN KEY(PARTY_ID) REFERENCES PARTY_ENTITY_GROUP.PARTY(ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.PARTY_RELATED_PARTY_PARTY_JOIN (
  PARTY_RELATED_PARTY_ID  VARCHAR(36) NOT NULL,
  PARTY_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PARTY_RELATED_PARTY_ID) REFERENCES PARTY_ENTITY_GROUP.PARTY_RELATED_PARTY(ID),
  FOREIGN KEY(PARTY_ID) REFERENCES PARTY_ENTITY_GROUP.PARTY(ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.PARTY_ADDITIONAL_NAME_PARTY_JOIN (
  PARTY_ADDITIONAL_NAME_ID  VARCHAR(36) NOT NULL,
  PARTY_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PARTY_ADDITIONAL_NAME_ID) REFERENCES PARTY_ENTITY_GROUP.PARTY_ADDITIONAL_NAME(ID),
  FOREIGN KEY(PARTY_ID) REFERENCES PARTY_ENTITY_GROUP.PARTY(ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.HOUSEHOLD_PRIMARY_ACCOUNT_JOIN (
  HOUSEHOLD_ID  VARCHAR(36) NOT NULL,
  ACCOUNT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(HOUSEHOLD_ID) REFERENCES PARTY_ENTITY_GROUP.HOUSEHOLD(ID),
  FOREIGN KEY(ACCOUNT_ID) REFERENCES ACCOUNT_ENTITY_GROUP.ACCOUNT(ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.PERSON_LIFE_EVENT_INDIVIDUAL_JOIN (
  PERSON_LIFE_EVENT_ID  VARCHAR(36) NOT NULL,
  INDIVIDUAL_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PERSON_LIFE_EVENT_ID) REFERENCES PARTY_ENTITY_GROUP.PERSON_LIFE_EVENT(ID),
  FOREIGN KEY(INDIVIDUAL_ID) REFERENCES PARTY_ENTITY_GROUP.INDIVIDUAL(ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.PARTY_PRIMARY_ACCOUNT_JOIN (
  PARTY_ID  VARCHAR(36) NOT NULL,
  ACCOUNT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(PARTY_ID) REFERENCES PARTY_ENTITY_GROUP.PARTY(ID),
  FOREIGN KEY(ACCOUNT_ID) REFERENCES ACCOUNT_ENTITY_GROUP.ACCOUNT(ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.INTERNAL_BUSINESS_UNIT_PARENT_INTERNAL_BUSINESS_UNIT_JOIN (
  INTERNAL_BUSINESS_UNIT_ID_LEFT  VARCHAR(36) NOT NULL,
  INTERNAL_BUSINESS_UNIT_ID_RIGHT VARCHAR(36) NOT NULL,
  FOREIGN KEY(INTERNAL_BUSINESS_UNIT_ID_LEFT) REFERENCES PARTY_ENTITY_GROUP.INTERNAL_BUSINESS_UNIT(ID),
  FOREIGN KEY(INTERNAL_BUSINESS_UNIT_ID_RIGHT) REFERENCES PARTY_ENTITY_GROUP.INTERNAL_BUSINESS_UNIT(ID)
);

CREATE TABLE PARTY_ENTITY_GROUP.INTERNAL_BUSINESS_UNIT_PRIMARY_ACCOUNT_JOIN (
  INTERNAL_BUSINESS_UNIT_ID  VARCHAR(36) NOT NULL,
  ACCOUNT_ID VARCHAR(36) NOT NULL,
  FOREIGN KEY(INTERNAL_BUSINESS_UNIT_ID) REFERENCES PARTY_ENTITY_GROUP.INTERNAL_BUSINESS_UNIT(ID),
  FOREIGN KEY(ACCOUNT_ID) REFERENCES ACCOUNT_ENTITY_GROUP.ACCOUNT(ID)
);