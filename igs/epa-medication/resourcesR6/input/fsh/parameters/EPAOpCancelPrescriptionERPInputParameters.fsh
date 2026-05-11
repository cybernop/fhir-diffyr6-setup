Profile: EPAOpCancelPrescriptionERPInputParametersR6
Parent: Parameters
Id: epa-op-cancel-prescription-erp-input-parameters
Title: "EPA Operation CancelPrescription ERP Input-Parameters"
Description: "EPA Operation CancelPrescription ERP Input-Parameters"
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
  * part 2..2 MS
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "name"
    * ^slicing.rules = #open
  * part contains
    prescriptionId 1..1 MS and
    authoredOn 1..1 MS
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
    * valueDate MS
    * resource 0..0
    * part 0..0 
