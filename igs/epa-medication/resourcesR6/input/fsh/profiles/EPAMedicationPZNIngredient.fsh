RuleSet: EPAMedicationPZNIngredientInstanceMeta
* insert InstanceMetaProfile(EPAMedicationPZNIngredientR6, 1.0.6-2)


Profile: EPAMedicationPZNIngredientR6
Parent: Medication
Id: epa-medication-pzn-ingredient
Title: "EPA Medication PZN Ingredient"
Description: "Defines the medication resource for a PZN ingredient of a compounding medication for the Medication Service in the ePA system. These profiles are intended to inherit from EPAMedicationR6, but due to tooling issues, this inheritance cannot currently be implemented."
//TODO: as soon as the snapshotgenerator can deal with contained child-profiles remove the following insert statement and inherit from EPAMedicationR6
* insert epaMedicationElements
// preserve the version
* ^version = "1.3.2"
* ^date = "2026-03-20"
* ^status = #active

* contained ..0
* extension[type]
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionCodingMS
  * valueCoding from TIMedicationTypeProductVS

* code
  * coding[pzn] 1..
* ingredient
  // AUTO-DISABLED (SUSHI R6): * itemReference ..0
    // AUTO-DISABLED (SUSHI R6): * ^short = "Medication Ingredients can't have child Medications"
* batch MS
  * lotNumber MS
