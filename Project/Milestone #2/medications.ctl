OPTIONS (SKIP=1)
LOAD DATA
infile "medications.csv" "str '\n'"
append into table T_PATIENT_MEDICATION
fields terminated by ','
OPTIONALLY ENCLOSED BY '"' AND '"'
TRAILING NULLCOLS
(
    MEDICATION_START DATE 'yyyy-mm-dd',
    MEDICATION_STOP DATE 'yyyy-mm-dd',
    PATIENT_ID char,
    PAYER_ID char,
    ENCOUNTER_ID char,
    MEDICATION_CODE char,
    MEDICATION_DESCRIPTION char,
    BASE_COST char,
    PAYER_COVERAGE char,
    MEDICATION_DISPENSES char,
    TOTAL_COST char,
    REASON_CODE char,
    REASON_DESCRIPTION char
)