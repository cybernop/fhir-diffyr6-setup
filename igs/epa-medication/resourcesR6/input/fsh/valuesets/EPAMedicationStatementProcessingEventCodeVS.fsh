ValueSet: EPAMedicationStatementProcessingEventCodeVS
Id: epa-medicationstatement-processing-event-code
Title: "EPA MedicationStatement Processing Codes"
Description: "Codes that define events that occur during processing of an EMPMedicationStatement"
* insert Meta-VS
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* include codes from system EPAMedicationStatementProcessingEventCodeCS

* insert ExpansionTimestamp

// expansion of EPAMedicationStatementProcessingEventCodeCS
* insert ExpansionCanonical(EPAMedicationStatementProcessingEventCodeCS, LINKING_NOT_SUCCESSFUL, [[eMP linking not successful]])
* insert ExpansionDesignation(de-DE, [[Fehlerhafte eMP Zuordnung]])

* insert ExpansionCanonical(EPAMedicationStatementProcessingEventCodeCS, UNLINKING_NOT_SUCCESSFUL, [[eMP unlinking not successful]])
* insert ExpansionDesignation(de-DE, [[Fehlerhafte Aufhebung der eMP-Verknüpfung]])
