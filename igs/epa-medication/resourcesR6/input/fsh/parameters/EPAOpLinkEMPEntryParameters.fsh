Profile: EPAOpLinkEMPEntryParametersR6
Parent: Parameters
Id: epa-op-link-emp-entry-parameters
Title: "EPA Operation Link eMP Parameters"
Description: "EPA Operation Link eMP Parameters"
* insert Meta

* parameter 1..2 MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #closed
* parameter contains
  acknowledgedChronologyId 0..1 MS and
  medicationPlanIdentifier 1..1 MS
* parameter[acknowledgedChronologyId]
  * name MS
  * name = "acknowledgedChronologyId" //EMPChronologyProvenance.id
  * value[x] 1..1 MS
  * value[x] only id
  * resource 0..0
  * part 0..0
* parameter[medicationPlanIdentifier]
  * name MS
  * name = "medicationPlanIdentifier"
  * value[x] 1..1 MS
  * value[x] only MedicationPlanIdentifier
  * valueIdentifier MS
  // AUTO-DISABLED (SUSHI R6): * valueIdentifier insert IdentifierMS
  * resource 0..0
  * part 0..0 


Profile: EPAOpLinkEMPEntryOutputParametersR6
Parent: Parameters
Id: epa-op-link-emp-entry-output-parameters
Title: "EPA Operation Link eMP Output Parameters"
Description: "EPA Operation Link eMP Output Parameters"
* insert Meta

* parameter 3..4 MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #closed
* parameter contains
  medicationStatement 1..1 MS and
  empEntry 1..1 MS and
  relatedActivity 1..1 MS and
  relatedChronology 0..1 MS
* parameter[medicationStatement]
  * name MS
  * name = "medicationStatement"
  * value[x] 0..0 
  * resource 1..1 MS
  * resource only EPAMedicationStatementR6
  * part 0..0
* parameter[empEntry]
  * name MS
  * name = "empEntry"
  * value[x] 0..0 
  * resource 1..1 MS
  * resource only EMPMedicationRequestR6
  * part 0..0 
* parameter[relatedActivity]
  * name MS
  * name = "relatedActivity"
  * value[x] 0..0 
  * resource 1..1 MS
  * resource only EPAActivityProvenance
  * part 0..0 
* parameter[relatedChronology]
  * name MS
  * name = "relatedChronology"
  * value[x] 0..0 
  * resource 1..1 MS
  * resource only EMPChronologyProvenanceR6
  * part 0..0 
