ValueSet: EPAProvenanceParticipantTypeVS
Id: epa-provenance-participant-type-vs
Title: "EPA Provenance Participant Type ValueSet"
Description: "Dieses Valueset enthält die Codes zur Beschreibung von Art der Beteiligung."
* insert Meta-VS

// preserve the version of this resource
* ^version = "1.2.0"
* ^date = "2025-09-12"
* ^status = #active


* $provenance-participant-type#author "Author"

* ^expansion.timestamp = "2025-06-02"

* ^expansion.contains[+].system = $provenance-participant-type
* ^expansion.contains[=].code = #author
* ^expansion.contains[=].display = "Author"
