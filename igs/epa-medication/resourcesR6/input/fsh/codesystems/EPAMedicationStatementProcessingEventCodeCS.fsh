CodeSystem: EPAMedicationStatementProcessingEventCodeCS
Id: epa-medicationstatement-processing-event-code
Title: "EPA MedicationStatement Processing Codes"
Description: "Codes that define events that occur during processing of an EMPMedicationStatement"
* insert Meta-CS
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

// * ^valueSet = Canonical(EPAMedicationStatementProcessingEventCodeVS)

* #LINKING_NOT_SUCCESSFUL "eMP linking not successful" "MedicationStatement could not be linked to an eMP-Entry successfully"
  * ^designation.language = #de-DE
  * ^designation.value = "Fehlerhafte eMP Zuordnung"

* #UNLINKING_NOT_SUCCESSFUL "eMP unlinking not successful" "MedicationStatement could not be unlinked from an eMP-Entry successfully"
  * ^designation.language = #de-DE
  * ^designation.value = "Fehlerhafte Aufhebung der eMP-Verknüpfung"