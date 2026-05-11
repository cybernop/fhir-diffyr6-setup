Extension: EPAHealthcareFacilityTypeExtension
Id: epa-healthcare-facility-type-extension
Title: "EPAHealthcareFacilityType Extension"
Description: "EPAHealthcareFacilityType Extension"
* insert Meta

// preserve the version of this resource
* ^version = "1.2.0"
* ^date = "2025-09-12"
* ^status = #active

* ^context[+].type = #element
* ^context[=].expression = "AuditEvent.agent"

* value[x] only Coding
* valueCoding from EPAStructuralRoleofHealthcareProfessionalVS
* valueCoding 1.. MS
  * system MS
  * code MS
  * display MS
