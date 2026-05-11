ValueSet: EPAMedicationStatementContextCodeVS
Id: epa-medicationstatement-context-code
Title: "ePA MedicationStatement Context Codes"
Description: "Codes that define the context of an EPAMedicationStatementR6"
* insert Meta-VS
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* ContextCodeCS#PRESCRIPTION
  * insert Designation(de-DE, [[Verschreibung]])
* ContextCodeCS#MANUAL
  * insert Designation(de-DE, [[Nachtrag]])

* insert ExpansionTimestamp

// expansion of explicitly defined codes
* insert ExpansionCanonical(ContextCodeCS, PRESCRIPTION, [[Prescription]])
* insert ExpansionDesignation(de-DE, [[Verschreibung]])

* insert ExpansionCanonical(ContextCodeCS, MANUAL, [[Manual Entry]])
* insert ExpansionDesignation(de-DE, [[Nachtrag]])
