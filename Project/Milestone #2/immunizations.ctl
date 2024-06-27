OPTIONS (SKIP=1)
LOAD DATA
infile "immunizations.csv" "str '\n'"
append into table T_PATIENT_IMMUNIZATION
fields terminated by ','
OPTIONALLY ENCLOSED BY '"' AND '"'
TRAILING NULLCOLS
(
    IMMUNIZATION_DATE DATE 'yyyy-mm-dd',
    PATIENT_ID char,
    ENCOUNTER_ID char,
    IMMUNIZATION_CODE char,
    IMMUNIZATION_DESCRIPTION char,
    BASE_COST char
)