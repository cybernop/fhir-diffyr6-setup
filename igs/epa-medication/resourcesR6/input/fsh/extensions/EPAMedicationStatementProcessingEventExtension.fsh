Extension: EPAMedicationStatementProcessingEventExtension
Id: epa-medicationstatement-processing-event-extension
Description: "Bildet ein Ereignis ab, das wärend der Verarbeitung auftritt."
* insert Meta
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* ^context[+].type = #element
* ^context[=].expression = "MedicationStatement"
* extension contains 
  event 1..1 MS and
  dateTime 1..1 MS
* extension[event]
  * value[x] only code
  * valueCode 1..1 MS
  * valueCode from EPAMedicationStatementProcessingEventCodeVS (required)
    * ^short = "Verarbeitungsereignis"
* extension[dateTime]
  * value[x] only dateTime
  * valueDateTime 1..1 MS
    * ^short = "Zeitpunkt"

// * value[x] only code
// * valueCode from EPAMedicationStatementProcessingEventCodeVS (required)
//   * ^short = "Verarbeitungsereignis"
