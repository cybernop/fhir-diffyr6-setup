ValueSet: EPAAuditEventServiceTypeVS
Id: epa-auditevent-service-type-vs
Title: "EPA AuditEvent Service Type"
Description: "Services für AuditEvents im ePA-Kontext"
* insert Meta-VS

// preserve the version of this resource
* ^version = "1.2.0"
* ^date = "2025-09-12"
* ^status = #active


* include codes from system EPAAuditEventSourceTypeCS

* ^expansion.timestamp = "2025-09-12"

* ^expansion.contains[+].system = Canonical(EPAAuditEventSourceTypeCS)
* ^expansion.contains[=].code = #CDMGMT
* ^expansion.contains[=].display = "Consent Decision Management"
* ^expansion.contains[=].designation[0].language = #de
* ^expansion.contains[=].designation[0].value = "Consent Decision Management"

* ^expansion.contains[+].system = Canonical(EPAAuditEventSourceTypeCS)
* ^expansion.contains[=].code = #ENTITMGMT
* ^expansion.contains[=].display = "Entitlement Management"
* ^expansion.contains[=].designation[0].language = #de
* ^expansion.contains[=].designation[0].value = "Entitlement Management"

* ^expansion.contains[+].system = Canonical(EPAAuditEventSourceTypeCS)
* ^expansion.contains[=].code = #DEVICEMGMT
* ^expansion.contains[=].display = "Device Management"
* ^expansion.contains[=].designation[0].language = #de
* ^expansion.contains[=].designation[0].value = "Device Management"

* ^expansion.contains[+].system = Canonical(EPAAuditEventSourceTypeCS)
* ^expansion.contains[=].code = #HRRSVC
* ^expansion.contains[=].display = "Health Record Relocation Service"
* ^expansion.contains[=].designation[0].language = #de
* ^expansion.contains[=].designation[0].value = "Health Record Relocation Service"

* ^expansion.contains[+].system = Canonical(EPAAuditEventSourceTypeCS)
* ^expansion.contains[=].code = #XDSSVC
* ^expansion.contains[=].display = "XDS Document Service"
* ^expansion.contains[=].designation[0].language = #de
* ^expansion.contains[=].designation[0].value = "XDS Document Service"

* ^expansion.contains[+].system = Canonical(EPAAuditEventSourceTypeCS)
* ^expansion.contains[=].code = #MEDICATIONSVC
* ^expansion.contains[=].display = "Medication Service"
* ^expansion.contains[=].designation[0].language = #de
* ^expansion.contains[=].designation[0].value = "Medication Service"

* ^expansion.contains[+].system = Canonical(EPAAuditEventSourceTypeCS)
* ^expansion.contains[=].code = #CONMGMT
* ^expansion.contains[=].display = "Constraint Management"
* ^expansion.contains[=].designation[0].language = #de
* ^expansion.contains[=].designation[0].value = "Constraint Management"

* ^expansion.contains[+].system = Canonical(EPAAuditEventSourceTypeCS)
* ^expansion.contains[=].code = #AUDITSVC
* ^expansion.contains[=].display = "AuditEvent Service"
* ^expansion.contains[=].designation[0].language = #de
* ^expansion.contains[=].designation[0].value = "AuditEvent Service"

* ^expansion.contains[+].system = Canonical(EPAAuditEventSourceTypeCS)
* ^expansion.contains[=].code = #DATASUBSVC
* ^expansion.contains[=].display = "Data Submission Service"
* ^expansion.contains[=].designation[0].language = #de
* ^expansion.contains[=].designation[0].value = "Data Submission Service"

* ^expansion.contains[+].system = Canonical(EPAAuditEventSourceTypeCS)
* ^expansion.contains[=].code = #MHDSVC
* ^expansion.contains[=].display = "MHD Service"
* ^expansion.contains[=].designation[0].language = #de
* ^expansion.contains[=].designation[0].value = "MHD Service"

* ^expansion.contains[+].system = Canonical(EPAAuditEventSourceTypeCS)
* ^expansion.contains[=].code = #PATSVC
* ^expansion.contains[=].display = "Patient Service"
* ^expansion.contains[=].designation[0].language = #de
* ^expansion.contains[=].designation[0].value = "Patient Service"

* ^expansion.contains[+].system = Canonical(EPAAuditEventSourceTypeCS)
* ^expansion.contains[=].code = #PUSHNOTMGMT
* ^expansion.contains[=].display = "Push Notification Management"
* ^expansion.contains[=].designation[0].language = #de
* ^expansion.contains[=].designation[0].value = "Push Notification Management"
