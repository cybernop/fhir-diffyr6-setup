RuleSet: EMPMedicationInstanceMeta
* insert InstanceMetaProfile(EMPMedicationR6, 1.3.0)


Profile: EMPMedicationR6
Parent: EPAMedicationR6
Id: emp-medication
Title: "eMP Medication"
Description: "Defines the medication resource for the Medication Service in the ePA system in the eMP context."
* insert Meta-With-Versioning
// preserve the version
* ^version = "1.3.2"
* ^date = "2026-03-20"
* ^status = #active

* extension MS
* extension contains
  ContextExtension named context 1..1 MS

* extension[context]
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionCodeMS
  * valueCode = #EMP
