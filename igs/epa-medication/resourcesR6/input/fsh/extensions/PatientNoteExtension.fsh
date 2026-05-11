Extension: PatientNoteExtension
Id: patient-note-extension
Description: "Extension für einen Hinweis für den Patienten"
* insert Meta
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"

* value[x] only Annotation
* valueAnnotation 1..1
  * ^short = "Hinweis für den Patienten"