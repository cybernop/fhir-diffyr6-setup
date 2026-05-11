Extension: IsEMPExtension
Id: is-emp-extension
Description: "Definiert ob etwas einen Bezug zum eMP hat"
* insert Meta
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* ^context[+].type = #element
* ^context[=].expression = "MedicationStatement.basedOn"

* value[x] only boolean
* valueBoolean 1..1
  * ^short = "Hat es einen eMP Bezug?"
