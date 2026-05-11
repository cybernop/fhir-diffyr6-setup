ValueSet: EPAAuditEventAgentTypeClientVS
Id: epa-audit-event-agent-type-client-vs
Title: "EPA AuditEvent Agent Type Client"
Description: "EPA agent type (client) for AuditEvent"
* insert Meta-VS

// preserve the version of this resource
* ^version = "1.2.0"
* ^date = "2025-09-12"
* ^status = #active


* $dicom-dcm#110150 "Application"

* ^expansion.timestamp = "2025-05-27"

* ^expansion.contains[+].system = $dicom-dcm
* ^expansion.contains[=].code = #110150
* ^expansion.contains[=].display = "Application"