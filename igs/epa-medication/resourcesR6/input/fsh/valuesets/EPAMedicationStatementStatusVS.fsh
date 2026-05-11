ValueSet: EPAMedicationStatementStatusVS
Id: epa-medication-statement-status-vs
Title: "ePA MedicationStatement Status Value Set"
Description: "ePA MedicationStatement Status Value Set"
* insert Meta-VS
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* $hl7-medication-statement-status-cs#entered-in-error
  * insert Designation(de-DE, [[inkorrekt]])
* $hl7-medication-statement-status-cs#unknown
  * insert Designation(de-DE, [[offen]])
* $hl7-medication-statement-status-cs#intended
  * insert Designation(de-DE, [[geplant]])

* insert ExpansionTimestamp

// expansion of explicitly defined codes
* insert ExpansionNoDisplay($hl7-medication-statement-status-cs, entered-in-error)
* insert ExpansionDesignation(de-DE, [[inkorrekt]])

* insert ExpansionNoDisplay($hl7-medication-statement-status-cs, unknown)
* insert ExpansionDesignation(de-DE, [[offen]])

* insert ExpansionNoDisplay($hl7-medication-statement-status-cs, intended)
* insert ExpansionDesignation(de-DE, [[geplant]])
