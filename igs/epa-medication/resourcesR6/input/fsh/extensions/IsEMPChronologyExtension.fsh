Extension: IsEMPChronologyExtension
Id: is-emp-chronology-extension
Description: "Definiert, ob die Provenance ein eMP-Chronologieeintrag ist."
* insert Meta
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* ^context[+].type = #element
* ^context[=].expression = "Provenance"

* value[x] only boolean
* valueBoolean 1..1
  * ^short = "Gibt an, ob diese Provenance-Instanz ein eMP-Chronologieeintrag ist."
