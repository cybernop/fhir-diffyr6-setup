Extension: EPAMedicationTypeExtension
Id: epa-medication-type-extension
Title: "Medication Type"
Description: "Extension for EPAMedicationR6 types"
Context: Medication
* insert Meta
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* value[x] only Coding
* valueCoding 1.. MS
* valueCoding from TIMedicationTypeVS
