Profile: EPAOpRxPrescriptionERPOutputParametersR6
Parent: Parameters
Id: epa-op-rx-prescription-erp-output-parameters
Title: "EPA Operation RxPrescription ERP Output-Parameters"
Description: "EPA Operation RxPrescription ERP Output-Parameters"
* insert Meta

* parameter 1..* MS
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed
* parameter contains rxPrescription 1..* MS
* parameter[rxPrescription]
  * name MS
  * name = "rxPrescription" (exactly)
  * value[x] 0..0
  * resource 0..0
  * part 3..3 MS
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "name"
    * ^slicing.rules = #open
  * part contains
    prescriptionId 1..1 MS and
    authoredOn 1..1 MS and
    operationOutcome 1..1 MS
  * part[prescriptionId]
    * name MS
    * name = "prescriptionId"
    * value[x] 1..1 MS
    * value[x] only EPrescriptionId
    * valueIdentifier MS
    // AUTO-DISABLED (SUSHI R6): * valueIdentifier insert IdentifierMS
    * resource 0..0
    * part 0..0 
  * part[authoredOn]
    * name MS
    * name = "authoredOn"
    * value[x] 1..1 MS
    * value[x] only date
    * resource 0..0
    * part 0..0 
  * part[operationOutcome]
    * name MS
    * name = "operationOutcome"
    * value[x] 0..0
    * resource 1..1 MS
    * resource only EPAMSOperationOutcomeR6
    * part 0..0
