OPTIONS (SKIP=1)
LOAD DATA
infile "imaging_studies.csv" "str '\n'"
append into table T_PATIENT_IMAGING_STUDY
fields terminated by ','
OPTIONALLY ENCLOSED BY '"' AND '"'
TRAILING NULLCOLS
(
    IMAGING_STUDY_ID char,
    IMAGING_STUDY_DATE DATE 'yyyy-mm-dd',
    PATIENT_ID char,
    ENCOUNTER_ID char,
    BODYSITE_CODE char,
    BODYSITE_DESCRIPTION char,
    MODALITY_CODE char,
    MODALITY_DESCRIPTION char,
    SOP_CODE char,
    SOP_DESCRIPTION char
)