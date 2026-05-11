Instance: Technical-Exp-NachtragEmlMedication
InstanceOf: EPAMedicationR6
* insert EPAMedicationInstanceMeta
* code.coding[pzn].code = #0123456789

Instance: Technical-Exp-NachtragEmlPatient
InstanceOf: EPAPatient
* insert EPAPatientInstanceMeta
* identifier[KVNR]
  * type = $identifier-type-de-basis#KVZ10
  * system = $sid-identifier-kvid-10
  * value = "A123456789"
* name[Name]
  * family = "McTest"
  * given[+] = "Testi"
* birthDate = "2000-01-01"

// AUTO-DISABLED (SUSHI R6): Instance: Technical-Exp-NachtragEmlMedicationStatement
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationStatementR6
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationStatementInstanceMeta
// AUTO-DISABLED (SUSHI R6): * status = #unknown
// AUTO-DISABLED (SUSHI R6): * extension[context].valueCode = #MANUAL
// AUTO-DISABLED (SUSHI R6): * subject
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * type = $identifier-type-de-basis#KVZ10
    // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-kvid-10
    // AUTO-DISABLED (SUSHI R6): * value = "A123456789"
// AUTO-DISABLED (SUSHI R6): // * effectiveDateTime = "2025-01-01T12:30:00.789Z"
// AUTO-DISABLED (SUSHI R6): * effectivePeriod
  // AUTO-DISABLED (SUSHI R6): * start = "2026-01-01"
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Technical-Exp-NachtragEmlMedication)

Instance: Technical-Exp-NachtragEmlLEI
InstanceOf: TIOrganization
* insert TIOrganizationInstanceMeta
* identifier[TelematikID]
  * type = $v2-0203#PRN
  * system = $sid-identifier-telematik-id
  * value = "123456789"
* name = "TestLEI"

Instance: Technical-Exp-NachtragEmlProvenance
InstanceOf: EPAActivityProvenance
* insert EPAActivityProvenanceInstanceMeta
* activity = $v3-DataOperation#CREATE
* agent
  * type = $provenance-participant-type#author
  * who.identifier
    * type = $v2-0203#PRN
    * system = $sid-identifier-telematik-id
    * value = "123456789"
* target[+] = Reference(Technical-Exp-NachtragEmlMedicationStatement)
* recorded = "2025-01-01T12:34:56.789Z"


Instance: Technical-Exp-NachtragEmlMedicationIBU
InstanceOf: EPAMedicationR6
Usage: #example
* insert EPAMedicationInstanceMeta
* id = "4B5557E5-4900-47FE-A8D9-407611E05BD2"
* identifier[EPAMedicationUniqueIdentifierR6].value = "004C0F718C63EFADC20D838B772BD4DC4C4E6EB31293B6F689E624534A9C56CD"
* meta
  * versionId = "1"
  * lastUpdated = "2026-08-08T14:43:33.244Z"
* code.coding[pzn].code = #11722423
* code.coding[pzn].display = "IBU-RATIOPHARM direkt 400 mg Pulver zum Einnehmen 20 St Pulver"
// AUTO-DISABLED (SUSHI R6): * form.coding[kbvDarreichungsform].system = "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_DARREICHUNGSFORM"
// AUTO-DISABLED (SUSHI R6): * form.coding[kbvDarreichungsform].code = #PUE
// AUTO-DISABLED (SUSHI R6): * form.coding[kbvDarreichungsform].display = "Pulver zum Einnehmen"


// AUTO-DISABLED (SUSHI R6): Instance: Technical-Exp-NachtragEmlMedicationStatementIBU
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationStatementR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationStatementInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "0A4DB292-81F3-4F7E-9513-CA908744820A"
// AUTO-DISABLED (SUSHI R6): * extension[context].valueCode = #MANUAL
// AUTO-DISABLED (SUSHI R6): * status = #unknown
// AUTO-DISABLED (SUSHI R6): * subject = ExamplePatientReference
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Technical-Exp-NachtragEmlMedicationIBU)
// AUTO-DISABLED (SUSHI R6): // * effectiveDateTime = "2026-08-01"
// AUTO-DISABLED (SUSHI R6): * effectivePeriod
  // AUTO-DISABLED (SUSHI R6): * start = "2026-08-01"
// AUTO-DISABLED (SUSHI R6): * dateAsserted = "2026-08-22"


Instance: Technical-Exp-NachtragEmlProvenanceIBU
InstanceOf: EPAActivityProvenance
Usage: #inline
* insert EPAActivityProvenanceInstanceMeta
* id = "3E97FA3D-5D28-468D-AF75-9D09BA653EBB"
* activity = $v3-DataOperation#CREATE
* agent
  * type = $provenance-participant-type#author
  * who.identifier
    * type = $v2-0203#PRN
    * system = $sid-identifier-telematik-id
    * value = "123456789"
* target[+] = Reference(MedicationStatement/0A4DB292-81F3-4F7E-9513-CA908744820A/_history/1)
* recorded = "2026-08-08T14:43:33.344Z"
