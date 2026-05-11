CodeSystem: EPAAuditEventSourceTypeCS
Id: epa-auditevent-sourcetype-cs
Title: "EPA AuditEvent Source Type"
Description: "Ereignisquellen für AuditEvents im ePA-Kontext"
* insert Meta-CS

// preserve the version of this resource
* ^version = "1.2.0"
* ^date = "2025-09-12"
* ^status = #active

* #CDMGMT "Consent Decision Management"
  * ^designation[0].language = #de
  * ^designation[0].value = "Consent Decision Management"

* #ENTITMGMT "Entitlement Management"
  * ^designation[0].language = #de
  * ^designation[0].value = "Entitlement Management"

* #DEVICEMGMT "Device Management"
  * ^designation[0].language = #de
  * ^designation[0].value = "Device Management"

* #HRRSVC "Health Record Relocation Service"
  * ^designation[0].language = #de
  * ^designation[0].value = "Health Record Relocation Service"

* #XDSSVC "XDS Document Service"
  * ^designation[0].language = #de
  * ^designation[0].value = "XDS Document Service"

* #MEDICATIONSVC "Medication Service"
  * ^designation[0].language = #de
  * ^designation[0].value = "Medication Service"

* #CONMGMT "Constraint Management"
  * ^designation[0].language = #de
  * ^designation[0].value = "Constraint Management"

* #AUDITSVC "AuditEvent Service"
  * ^designation[0].language = #de
  * ^designation[0].value = "AuditEvent Service"

* #DATASUBSVC "Data Submission Service"
  * ^designation[0].language = #de
  * ^designation[0].value = "Data Submission Service"

* #MHDSVC "MHD Service"
  * ^designation[0].language = #de
  * ^designation[0].value = "MHD Service"

* #PATSVC "Patient Service"
  * ^designation[0].language = #de
  * ^designation[0].value = "Patient Service"

* #PUSHNOTMGMT "Push Notification Management"
  * ^designation[0].language = #de
  * ^designation[0].value = "Push Notification Management"
