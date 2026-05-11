RuleSet: IBU_Content
* code.coding[pzn].code = #11722423
// * code.coding[atc-de] = $cs-atc-de#M01AE01 "Ibuprofen"
// * code.coding[atc-de].version = "2022"
* code.text = "IBU-RATIOPHARM direkt 400 mg Pulver zum Einnehmen 20 St Pulver"
// AUTO-DISABLED (SUSHI R6): * form.coding[kbvDarreichungsform].system = "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_DARREICHUNGSFORM"
// AUTO-DISABLED (SUSHI R6): * form.coding[kbvDarreichungsform].code = #PUE
// AUTO-DISABLED (SUSHI R6): * form.coding[kbvDarreichungsform].display = "Pulver zum Einnehmen"

    
Instance: Inline_IBU
InstanceOf: EPAMedicationR6
Usage: #inline
* insert EPAMedicationInstanceMeta
* id = "5c600c02-788f-48e0-9ec9-957c79aca99d"
* insert IBU_Content


Instance: IBU
InstanceOf: EPAMedicationR6
Usage: #example
* insert EPAMedicationInstanceMeta
* id = "ef5d5baf-0c42-4240-9604-7fba9cea926d"
* meta
  * versionId = "1"
  * lastUpdated = "2026-08-18T14:43:33.244Z"
* identifier[EPAMedicationUniqueIdentifierR6].value = "004C0F718C63EFADC20D838B772BD4DC4C4E6EB31293B6F689E624534A9C56CD"
* insert IBU_Content


// MedicationStatement =================

// AUTO-DISABLED (SUSHI R6): Instance: IBU_Information
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationStatementR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationStatementInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "1cb0f018-178d-4488-a6b4-2be32dbda784"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-08-18T14:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * extension[context].valueCode = #MANUAL
// AUTO-DISABLED (SUSHI R6): * status = #unknown
// AUTO-DISABLED (SUSHI R6): * subject = ExamplePatientReference
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(IBU)
// AUTO-DISABLED (SUSHI R6): // * effectiveDateTime = "2026-08-18"
// AUTO-DISABLED (SUSHI R6): * effectivePeriod
  // AUTO-DISABLED (SUSHI R6): * start = "2026-08-18"
// AUTO-DISABLED (SUSHI R6): * dateAsserted = "2026-08-18"


Instance: IBU_Information_Provenance
InstanceOf: EPAActivityProvenance
Usage: #example
* insert EPAActivityProvenanceInstanceMeta
* id = "f35a13e2-d82c-4826-97d7-b7e32721c4af"
* activity = $v3-DataOperation#CREATE
* agent
  * type = $provenance-participant-type#author
  * who = Reference(ApothekeTIOrganization)
  * who
    * identifier
      * type = $v2-0203#PRN
      * system = $sid-identifier-telematik-id
      * value = $ApothekeTIOrganization-TelematikID
    * insert ApothekeTIOrganization-display
* target[+] = Reference(MedicationStatement/1cb0f018-178d-4488-a6b4-2be32dbda784/_history/1)
* recorded = "2026-08-18T14:43:33.344Z"

