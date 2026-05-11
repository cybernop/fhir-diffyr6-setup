Profile: EPAOpProvideDispensationERPInputParametersR6
Parent: Parameters
Id: epa-op-provide-dispensation-erp-input-parameters
Title: "EPA Operation ProvideDispensation ERP Input-Parameters"
Description: "EPA Operation ProvideDispensation ERP Input-Parameters"
* insert Meta

* parameter 1..* MS
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #closed
* parameter contains rxDispensation 1..* MS
* parameter[rxDispensation]
  * name MS
  * name = "rxDispensation" (exactly)
  * value[x] 0..0
  * resource 0..0
  * part 5.. MS
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "name"
    * ^slicing.rules = #open
  * part contains
    prescriptionId 1..1 MS and
    authoredOn 1..1 MS and
    medicationDispense 1..* MS and
    medication 1..* MS and
    organization 1..1 MS
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
  * part[medicationDispense]
    * name MS
    * name = "medicationDispense"
    * value[x] 0..0
    * resource 1..1 MS
    * resource only EPAMedicationDispenseR6
    * part 0..0 
  * part[medication]
    * name MS
    * name = "medication"
    * value[x] 0..0
    * resource 1..1 MS
    * resource only EPAMedicationR6
    * part 0..0 
  * part[organization]
    * name MS
    * name = "organization"
    * value[x] 0..0
    * resource 1..1 MS
    * resource only OrganizationDirectory
    * part 0..0 
