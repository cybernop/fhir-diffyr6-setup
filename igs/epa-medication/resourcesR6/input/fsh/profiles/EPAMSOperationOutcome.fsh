RuleSet: EPAMSOperationOutcometInstanceMeta
* insert InstanceMetaProfile(EPAMSOperationOutcomeR6, 1.3.1)


Profile: EPAMSOperationOutcomeR6
Parent: TIOperationOutcome
Id: epa-ms-operation-outcome
Title: "EPA Medication Service Operation Outcome"
Description: "Das Operation Outcome-Profil für den Medication Service der ePA."
* insert Meta
// preserve the version
* ^version = "1.3.1"
* ^date = "2026-03-20"
* ^status = #active

* issue MS
  * severity MS
  * code MS
  * details 1..1 MS
  * details from EPAMSOperationOutcomeDetailsVS
  // AUTO-DISABLED (SUSHI R6): * details insert CodeableConceptMS
  * diagnostics MS
