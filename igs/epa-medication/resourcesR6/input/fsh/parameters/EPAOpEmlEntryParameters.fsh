Profile: EPAOpAddEmlEntryInputParametersR6
Parent: Parameters
Id: epa-op-add-eml-entry-input-parameters
Title: "EPA Operation addEMLEntry Input-Parameters"
Description: "EPA Operation addEMLEntry Input-Parameters"
* insert Meta

* parameter 2..2 MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #closed
* parameter contains
  medicationStatement 1..1 MS and
  medication 1..1 MS
* parameter[medicationStatement]
  * name MS
  * name = "medicationStatement"
  * value[x] 0..0 
  * resource 1..1 MS
  * resource only EPAMedicationStatementR6
  * part 0..0 
* parameter[medication]
  * name MS
  * name = "medication"
  * value[x] 0..0
  * resource 1..1 MS
  * resource only EPAMedicationR6
  * part 0..0


Profile: EPAOpEmlEntryOutputParametersR6
Parent: Parameters
Id: epa-op-eml-entry-output-parameters
Title: "EPA Operation EMLEntry Output-Parameters"
Description: "EPA Operation EMLEntry Output-Parameters"
* insert Meta

* parameter 1..3 MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #closed
* parameter contains
  medicationStatement 0..1 MS and
  medication 0..1 MS and
  relatedActivity 1..1 MS
* parameter[medicationStatement]
  * name MS
  * name = "medicationStatement"
  * value[x] 0..0 
  * resource 1..1 MS
  * resource only EPAMedicationStatementR6
  * part 0..0 
* parameter[medication]
  * name MS
  * name = "medication"
  * value[x] 0..0
  * resource 1..1 MS
  * resource only EPAMedicationR6
  * part 0..0
* parameter[relatedActivity]
  * name MS
  * name = "relatedActivity"
  * value[x] 0..0 
  * resource 1..1 MS
  * resource only EPAActivityProvenance
  * part 0..0 
