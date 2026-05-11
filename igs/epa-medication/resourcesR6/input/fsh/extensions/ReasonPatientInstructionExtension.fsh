Extension: ReasonPatientInstructionExtension
Id: reason-patient-instruction-extension
Description: "Patientenverständliche Beschreibung des Grundes"
* insert Meta
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"

* value[x] only string
* valueString 1..1
  * ^short = "Reason"
