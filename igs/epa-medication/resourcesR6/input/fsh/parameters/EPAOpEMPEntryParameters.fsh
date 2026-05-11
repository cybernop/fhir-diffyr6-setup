Profile: EPAOpAddEMPEntryInputParametersR6
Parent: Parameters
Id: epa-op-add-emp-entry-input-parameters
Title: "EPA Operation addEMPEntry Input-Parameters"
Description: "EPA Operation addEMPEntry Input-Parameters"
* insert Meta

* parameter 2..3 MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #closed
* parameter contains
  acknowledgedChronologyId 0..1 MS and
  empEntry 1..1 MS and
  medication 1..1 MS
* parameter[acknowledgedChronologyId]
  * name MS
  * name = "acknowledgedChronologyId" //EMPChronologyProvenance.id
  * value[x] 1..1 MS
  * value[x] only id
  * resource 0..0
  * part 0..0 
* parameter[medication]
  * name MS
  * name = "medication"
  * value[x] 0..0
  * resource 0..0
  * part 1..1 MS
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "name"
    * ^slicing.rules = #closed
  * part contains
    resource 0..1 MS and
    reference 0..1 MS
  * part[resource]
    * name MS
    * name = "resource"
    * value[x] 0..0
    * resource 1..1 MS
    * resource only EMPMedicationR6
    * part 0..0 
  * part[reference]
    * obeys epa-no-history-reference
    * name MS
    * name = "reference"
    * value[x] 1..1 MS
    * value[x] only Reference
    * valueReference MS
    // AUTO-DISABLED (SUSHI R6): * valueReference insert ReferenceMS
    * resource 0..0
    * part 0..0 
* parameter[empEntry]
  * name MS
  * name = "empEntry"
  * value[x] 0..0 
  * resource 1..1 MS
  * resource only EMPMedicationRequestR6
  * part 0..0 


Profile: EPAOpUpdateEMPEntryInputParametersR6
Parent: Parameters
Id: epa-op-update-emp-entry-input-parameters
Title: "EPA Operation UpdateEMPEntry Input-Parameters"
Description: "EPA Operation UpdateEMPEntry Input-Parameters"
* insert Meta

* parameter 2..3 MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #closed
* parameter contains
  acknowledgedChronologyId 0..1 MS and
  medicationPlanIdentifier 1..1 MS and
  empEntry 1..1 MS 
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
* parameter[empEntry]
  * name MS
  * name = "empEntry"
  * value[x] 0..0 
  * resource 1..1 MS
  * resource only EMPMedicationRequestR6
  * part 0..0 


Profile: EPAOpEMPEntryOutputParametersR6
Parent: Parameters
Id: epa-op-emp-entry-output-parameters
Title: "EPA Operation EMPEntry Output-Parameters"
Description: "EPA Operation EMPEntry Output-Parameters"
* insert Meta

* parameter 1..4 MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #closed
* parameter contains
  empEntry 0..1 MS and
  medication 0..1 MS and
  relatedActivity 1..1 MS and
  relatedChronology 0..1 
* parameter[empEntry]
  * name MS
  * name = "empEntry"
  * value[x] 0..0 
  * resource 1..1 MS
  * resource only EMPMedicationRequestR6
  * part 0..0 
* parameter[medication]
  * name MS
  * name = "medication"
  * value[x] 0..0
  * resource 1..1 MS
  * resource only EMPMedicationR6 or EPAMedicationR6
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
