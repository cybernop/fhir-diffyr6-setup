Instance: Technical-Exp-NachtragEmpMedicationEml
InstanceOf: EPAMedicationR6
* insert EPAMedicationInstanceMeta
* code.coding[pzn].code = #0123456789

Instance: Technical-Exp-NachtragEmpPatient
InstanceOf: EPAPatient
* identifier[KVNR]
  * type = $identifier-type-de-basis#KVZ10
  * system = $sid-identifier-kvid-10
  * value = "A123456789"
* name[Name]
  * family = "McTest"
  * given[+] = "Testi"
* birthDate = "2000-01-01"

// AUTO-DISABLED (SUSHI R6): Instance: Technical-Exp-NachtragEmpMedicationStatementEml
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationStatementR6
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationStatementInstanceMeta
// AUTO-DISABLED (SUSHI R6): * status = #unknown
// AUTO-DISABLED (SUSHI R6): * subject
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * type = $identifier-type-de-basis#KVZ10
    // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-kvid-10
    // AUTO-DISABLED (SUSHI R6): * value = "A123456789"
// AUTO-DISABLED (SUSHI R6): // * effectiveDateTime = "2025-01-01T12:30:00.789Z"
// AUTO-DISABLED (SUSHI R6): * effectivePeriod
  // AUTO-DISABLED (SUSHI R6): * start = "2026-01-01"
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Technical-Exp-NachtragEmpMedicationEml)
// AUTO-DISABLED (SUSHI R6): * extension[context].valueCode = #MANUAL
// AUTO-DISABLED (SUSHI R6): * basedOn = Reference(Technical-Exp-NachtragEmpMedicationRequestEmp)
  // AUTO-DISABLED (SUSHI R6): * extension[isEMP].valueBoolean = true

Instance: Technical-Exp-NachtragEmpLEI
InstanceOf: TIOrganization
* insert TIOrganizationInstanceMeta
* identifier[TelematikID]
  * type = $v2-0203#PRN
  * system = $sid-identifier-telematik-id
  * value = "123456789"
* name = "TestLEI"

Instance: Technical-Exp-NachtragEmpProvenanceEml
InstanceOf: EPAActivityProvenance
* insert EPAActivityProvenanceInstanceMeta
* activity = $v3-DataOperation#CREATE
* agent
  * type = $provenance-participant-type#author
  * who.identifier
    * type = $v2-0203#PRN
    * system = $sid-identifier-telematik-id
    * value = "123456789"
* target[+] = Reference(Technical-Exp-NachtragEmpMedicationStatementEml)
* recorded = "2026-01-01T12:34:56.789Z"

Instance: Technical-Exp-NachtragEmpMedicationEmp
InstanceOf: EMPMedicationR6
* insert EMPMedicationInstanceMeta
* code.coding[pzn].code = #0123456789

// AUTO-DISABLED (SUSHI R6): Instance: Technical-Exp-NachtragEmpMedicationRequestEmp
// AUTO-DISABLED (SUSHI R6): InstanceOf: EMPMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): * insert EMPMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * identifier[MedicationPlanIdentifier].value = "41cdeeaf-60a7-4b7c-bb26-7fb682e8c3ba"
// AUTO-DISABLED (SUSHI R6): * status = #active
// AUTO-DISABLED (SUSHI R6): * authoredOn = "2026-01-01"
// AUTO-DISABLED (SUSHI R6): * subject
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * type = $identifier-type-de-basis#KVZ10
    // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-kvid-10
    // AUTO-DISABLED (SUSHI R6): * value = "A123456789"
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Technical-Exp-NachtragEmpMedicationEmp)
// AUTO-DISABLED (SUSHI R6): // * extension[activity].valueReference = Reference(Technical-Exp-NachtragEmpMedicationStatementEml)
// AUTO-DISABLED (SUSHI R6): * extension[activity]
  // AUTO-DISABLED (SUSHI R6): * extension[reference].valueReference = Reference(Technical-Exp-NachtragEmpMedicationStatementEml)
  // AUTO-DISABLED (SUSHI R6): * extension[addedOn].valueDateTime = "2026-01-01T12:34:56.789Z"
// AUTO-DISABLED (SUSHI R6): * dosageInstruction[+]
  // AUTO-DISABLED (SUSHI R6): // * extension[generatedDosageInstructions]
  // AUTO-DISABLED (SUSHI R6): //   * extension[algorithm].valueCoding = DosageTextAlgorithmCS|1.0.0#GematikDosageTextGenerator
  // AUTO-DISABLED (SUSHI R6): //   * extension[algorithmVersion].valueString = "1.0.1"
  // AUTO-DISABLED (SUSHI R6): //   * extension[language].valueCode = #de-DE
  // AUTO-DISABLED (SUSHI R6): //   * extension[text].valueString = "2 x täglich: morgens und abends — je 1 Stück"
  // AUTO-DISABLED (SUSHI R6): * timing.repeat
    // AUTO-DISABLED (SUSHI R6): * when[+] = #MORN
    // AUTO-DISABLED (SUSHI R6): * when[+] = #EVE
    // AUTO-DISABLED (SUSHI R6): * frequency = 2
    // AUTO-DISABLED (SUSHI R6): * period = 1
    // AUTO-DISABLED (SUSHI R6): * periodUnit = #d
  // AUTO-DISABLED (SUSHI R6): * doseAndRate.doseQuantity = 1 $kbv-dosiereinheit#1 "Stück"
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * extension[renderedDosageInstruction].valueMarkdown = "1-0-1-0 Stück"
// AUTO-DISABLED (SUSHI R6): * extension[generatedDosageInstructionsMeta]
  // AUTO-DISABLED (SUSHI R6): * extension[algorithmVersion].valueString = "1.0.1"
  // AUTO-DISABLED (SUSHI R6): * extension[language].valueCode = #de-DE

Instance: Technical-Exp-NachtragEmpProvenanceEmp
InstanceOf: EPAActivityProvenance
* insert EPAActivityProvenanceInstanceMeta
* activity = $v3-DataOperation#CREATE
* agent
  * type = $provenance-participant-type#author
  * who.identifier
    * type = $v2-0203#PRN
    * system = $sid-identifier-telematik-id
    * value = "123456789"
* target[+] = Reference(Technical-Exp-NachtragEmpMedicationRequestEmp)
* recorded = "2026-01-01T12:34:56.789Z"
