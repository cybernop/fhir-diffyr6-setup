RuleSet: EPAMedicationPharmaceuticalProductInstanceMeta
* insert InstanceMetaProfile(EPAMedicationPharmaceuticalProductR6, 1.3.0)


Profile: EPAMedicationPharmaceuticalProductR6
Parent: Medication
Id: epa-medication-pharmaceutical-product
Title: "EPA Pharmaceutical Product Medication"
Description: "Defines the medication resource for a component of a 'Kombipackung' for the Medication Service in the ePA system. These profiles are intended to inherit from EPAMedicationR6, but due to tooling issues, this inheritance cannot currently be implemented."
//TODO: as soon as the snapshotgenerator can deal with contained child-profiles remove the following insert statement and inherit from EPAMedicationR6
* insert epaMedicationElements
// preserve the version
* ^version = "1.3.1"
* ^date = "2026-03-20"
* ^status = #active

* contained ..0
* extension[type]
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionCodingMS
  * valueCoding from TIMedicationTypePharmaceuticalProductVS


* code
  * coding[pzn] 0..0
* ingredient
  // AUTO-DISABLED (SUSHI R6): * itemReference 0..0
    // AUTO-DISABLED (SUSHI R6): * ^short = "Medication Pharmaceutical Product can't have child Medications"
