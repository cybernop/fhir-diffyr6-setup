ValueSet: EPAActivityProvenanceTypeVS
Id: epa-activity-provenance-type-vs
Title: "EPA Activity Provenance Type ValueSet"
Description: "Dieses Valueset enthält die Codes zur Beschreibung von Art der Aktivität."
* insert Meta-VS

// preserve the version of this resource
* ^version = "1.2.0"
* ^date = "2025-09-12"
* ^status = #active


* $v3-DataOperation#CREATE "create"
* $v3-DataOperation#UPDATE "revise"

// TODO: Wird später für zeitversetztes Löschen einer FHIR-Instanz beim status entered-in-error
* $v3-DataOperation#DELETE "delete"

* ^expansion.timestamp = "2025-06-02"

* ^expansion.contains[+].system = $v3-DataOperation
* ^expansion.contains[=].code = #CREATE
* ^expansion.contains[=].display = "create"

* ^expansion.contains[+].system = $v3-DataOperation
* ^expansion.contains[=].code = #UPDATE
* ^expansion.contains[=].display = "revise"

* ^expansion.contains[+].system = $v3-DataOperation
* ^expansion.contains[=].code = #DELETE
* ^expansion.contains[=].display = "delete"

