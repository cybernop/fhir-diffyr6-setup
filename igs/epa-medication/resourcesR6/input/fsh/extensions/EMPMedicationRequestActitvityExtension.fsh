Extension: EMPMedicationRequestActitvityExtension
Id: emp-medicationrequest-activity-extension
Description: "Bildet eine Aktivität in bezug auf ein EMPMedicationRequestR6 ab"
* insert Meta
// preserve the version
* ^version = "1.3.1"
* ^date = "2026-03-20"
* ^status = #active

* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"

* extension ^slicing.rules = #closed
* extension contains
    reference 1..1 and
    addedOn 1..1

* extension[reference]
  * obeys epa-no-history-reference
  * value[x] only Reference(EPAMedicationStatementR6)
  * valueReference 1..1
    * ^short = "Referenz zu der Resource, die aus der Aktivität resultiert"
* extension[addedOn]
  * value[x] only dateTime
  * valueDateTime 1..1
    * ^short = "Zeitpunkt, zu dem diese Referenz in den eMP-Eintrag aufgenommen wurde"
