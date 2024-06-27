OPTIONS (SKIP=1)
LOAD DATA
infile "procedures.csv" "str '\n'"
append into table T_PATIENT_PROCEDURE
fields terminated by ','
OPTIONALLY ENCLOSED BY '"' AND '"'
TRAILING NULLCOLS
(
    PROCEDURE_DATE DATE 'yyyy-mm-dd',
    PATIENT_ID char,
    ENCOUNTER_ID char,
    PROCEDURE_CODE char,
    PROCEDURE_DESCRIPTION char,
    BASE_COST char,
    REASON_CODE char,
    REASON_DESCRIPTION char
)