CodeSystem: EPAMSOperationOutcomeDetailsCS
Id: epa-ms-operation-outcome-details
Title: "EPA Medication Service OperationOutcome Code System"
Description: "EPA Medication Service Operation Outcome Code System"
* insert Meta-CS
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* #MEDSVC_NO_VALID_STRUCTURE "Invalid Data Structure in Medication Service"
* #MEDSVC_PRESCRIPTION_NO_EXIST "Prescription Not Found in Medication Service"
* #MEDSVC_PRESCRIPTION_DUPLICATE "Duplicate Prescription Detected in Medication Service"
* #MEDSVC_PRESCRIPTION_STATUS "Operation Not Permitted on Current Prescription Status"
* #MEDSVC_DISPENSATION_NO_EXIST "Dispensation Not Found in Medication Service"
* #MEDSVC_DISPENSATION_STATUS "Operation Not Permitted on Current Dispensation Status"
* #MEDSVC_OPERATION_SUCCESS "Operation Successfully Completed in Medication Service"
* #MEDSVC_PARAMETERS_REFERENCE_NO_EXIST "Unresolved Reference in Parameters"

* #MEDSVC_STATUS_INVALID "Invalid Status in Parameters"
* #MEDSVC_STATEMENT_NO_EXIST "MedicationStatement Not Found"
* #MEDSVC_PARAMETERS_INVALID_CONTENT "Provided content not allowed"
* #MEDSVC_DOSAGE_INVALID "Invalid dosage structure or content"
* #MEDSVC_EMP_CHRONOLOGY_ID_MISMATCH "Mismatch between acknowledged and current eMP chronology ID"
* #MEDSVC_OPERATION_OUTSIDE_BATCH "The operation can only be executed within a batch context"
* #MEDSVC_ALREADY_LINKED "Already linked to another instance"
* #MEDSVC_EMP_ENTRY_ALREADY_EXISTS "eMP entry already exists"
* #MEDSVC_EMP_NO_EXIST "eMP does not exist"
