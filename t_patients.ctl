OPTIONS (SKIP=1)
LOAD DATA
infile "patients.csv" "str '\n'"
append into table T_PATIENT
fields terminated by ','
OPTIONALLY ENCLOSED BY '"' AND '"'
TRAILING NULLCOLS
( 
   PATIENT_ID           char
 , BIRTHDATE            DATE 'yyyy-mm-dd'
 , DEATHDATE            DATE 'yyyy-mm-dd'
 , SSN                  char
 , DRIVERS              char
 , PASSPORT             char
 , PREFIX               char
 , FIRST_NAME           char
 , LAST_NAME            char
 , SUFFIX               char
 , MAIDEN_NAME          char
 , MARITAL_STATUS       char
 , RACE                 char
 , ETHNICITY            char
 , GENDER               char
 , BIRTH_PLACE          char
 , ADDRESS              char
 , CITY                 char
 , STATE                char
 , COUNTY               char
 , ZIP                  char
 , LAT                  char
 , LON                  char
 , HEALTHCARE_EXPENSES  char
 , HEALTHCARE_COVERAGE  char
)
