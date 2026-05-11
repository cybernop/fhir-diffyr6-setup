ValueSet: EPAAuditEventTypeVS
Id: epa-auditevent-type-vs
Title: "EPA AuditEvent Type"
Description: "Types of AuditEvents in the ePA context"
* insert Meta-VS

// preserve the version of this resource
* ^version = "1.2.0"
* ^date = "2025-09-12"
* ^status = #active


* $audit-event-type#rest "RESTful Operation"
* $audit-event-type#document "A Document Operation"
* $audit-event-type#object "An Operation on other Objects"
* $dicom-dcm|01#110106 "Export"

* ^expansion.timestamp = "2025-05-27"

* ^expansion.contains[+].system = $audit-event-type
* ^expansion.contains[=].code = #rest
* ^expansion.contains[=].display = "RESTful Operation"

* ^expansion.contains[+].system = $audit-event-type
* ^expansion.contains[=].code = #document
* ^expansion.contains[=].display = "A Document Operation"

* ^expansion.contains[+].system = $audit-event-type
* ^expansion.contains[=].code = #object
* ^expansion.contains[=].display = "An Operation on other Objects"

* ^expansion.contains[+].system = $dicom-dcm
* ^expansion.contains[=].version = "01"
* ^expansion.contains[=].code = #110106
* ^expansion.contains[=].display = "Export"