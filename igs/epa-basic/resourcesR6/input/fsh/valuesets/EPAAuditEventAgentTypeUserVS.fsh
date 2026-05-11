ValueSet: EPAAuditEventAgentTypeUserVS
Id: epa-audit-event-agent-type-user-vs
Title: "EPA AuditEvent Agent Type User"
Description: "EPA agent type (user) for AuditEvent"
* insert Meta-VS

// preserve the version of this resource
* ^version = "1.2.0"
* ^date = "2025-09-12"
* ^status = #active


* $v3-role-class#PROV "healthcare provider"
* $v3-ParticipationType#CST "custodian"
* $v3-role-class#PAT "patient"
* $v3-role-class#PAYOR "invoice payor"
* EPAAuditEventAgentTypeClientCS#OMBUDSOFFICE "Ombuds Office"


* ^expansion.timestamp = "2025-05-27"

* ^expansion.contains[+].system = $v3-role-class
* ^expansion.contains[=].code = #PROV
* ^expansion.contains[=].display = "healthcare provider"

* ^expansion.contains[+].system = $v3-ParticipationType
* ^expansion.contains[=].code = #CST
* ^expansion.contains[=].display = "custodian"

* ^expansion.contains[+].system = $v3-role-class
* ^expansion.contains[=].code = #PAT
* ^expansion.contains[=].display = "patient"

* ^expansion.contains[+].system = $v3-role-class
* ^expansion.contains[=].code = #PAYOR
* ^expansion.contains[=].display = "invoice payor"

* ^expansion.contains[+].system = Canonical(EPAAuditEventAgentTypeClientCS)
* ^expansion.contains[=].code = #OMBUDSOFFICE
* ^expansion.contains[=].display = "Ombuds Office"