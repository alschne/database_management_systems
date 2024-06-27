OPTIONS (SKIP=1)
LOAD DATA
infile "allergies.csv" "str '\n'"
append into table T_PATIENT_ALLERGY
fields terminated by ','
OPTIONALLY ENCLOSED BY '"' AND '"'
TRAILING NULLCOLS
(
    ALERGY_START DATE  'yyyy-mm-dd',
    ALLERGY_STOP DATE  'yyyy-mm-dd',
    PATIENT_ID char,
    ENCOUNTER_ID char,
    ALLERGY_CODE char,
    ALLERGY_DESCRIPTION char
)