RuleSet: Sumatriptan_Content
* status = #active
* extension[type].valueCoding = $sct#781405001
// "Medicinal product package (product)"
* extension[drugCategory].valueCoding.system = Canonical(EPADrugCategoryCS)
* extension[drugCategory].valueCoding.code = #00
* extension[isVaccine].valueBoolean = false
* extension[normSizeCode].valueCode = #N1
* code.coding[pzn] = $cs-pzn#06313728
* code.text = "Sumatriptan-1a Pharma 100 mg Tabletten"
// AUTO-DISABLED (SUSHI R6): * form.coding[kbvDarreichungsform] = $cs-kbv-medication-darreichungsform#TAB "Tabletten"
// AUTO-DISABLED (SUSHI R6): * amount.numerator.value = 20
// AUTO-DISABLED (SUSHI R6): * amount.numerator.unit = "St"
// AUTO-DISABLED (SUSHI R6): * amount.numerator.extension[totalQuantity].valueString = "20 St."
// AUTO-DISABLED (SUSHI R6): * amount.denominator.value = 1


Instance: Inline_Sumatriptan
InstanceOf: EPAMedicationR6
Usage: #inline
* insert EPAMedicationInstanceMeta
* id = "a3197c39-d03c-45fa-bcb7-b32578143c56"
* insert Sumatriptan_Content

Instance: Sumatriptan
InstanceOf: EPAMedicationR6
Usage: #example
* insert EPAMedicationInstanceMeta
* id = "fc7b28e8-05ac-4ac8-86d7-7677d9c6134e"
* meta
  * versionId = "2"
  * lastUpdated = "2026-11-01T14:43:33.244Z"
* extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.007.24_20261101"
* identifier[EPAMedicationUniqueIdentifierR6].value = "5CA9B89A31D81FFF6869E6A93B192C03C7F715FC4A568FB060630DD639F94EF1"
* identifier[RxOriginatorProcessIdentifierR6].value = "a3197c39-d03c-45fa-bcb7-b32578143c56_160.100.000.000.007.24"
* insert Sumatriptan_Content


// MedicationRequest =======================
RuleSet: Sumatriptan_Request_Dosage
// * extension[generatedDosageInstructions]
//   * extension[algorithm].valueCoding = DosageTextAlgorithmCS|1.0.0#GematikDosageTextGenerator
//   * extension[algorithmVersion].valueString = "1.0.1"
//   * extension[language].valueCode = #de-DE
//   * extension[text].valueString = "täglich: morgens — je 1 Stück"
* timing.repeat
  * when[+] = #MORN
  * frequency = 1
  * period = 1
  * periodUnit = #d
* doseAndRate.doseQuantity = 1 $kbv-dosiereinheit#1 "Stück"

RuleSet: Sumatriptan_Request_Dosage_Rendered
* extension[renderedDosageInstruction].valueMarkdown = "1-0-0-0 Stück"
* extension[generatedDosageInstructionsMeta]
  * extension[algorithmVersion].valueString = "1.0.1"
  * extension[language].valueCode = #de-DE


RuleSet: Sumatriptan_Request_Content
* extension[multiplePrescription].extension[indicator].valueBoolean = false
* status = #active
* intent = #filler-order
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Sumatriptan)
* subject = ExamplePatientReference
* authoredOn = "2026-11-01"
* dispenseRequest.quantity = 1 '{Package}'
* substitution.allowedBoolean = true
* insert Sumatriptan_Request_Dosage_Rendered
* dosageInstruction[+] insert Sumatriptan_Request_Dosage


// AUTO-DISABLED (SUSHI R6): Instance: Inlince_Sumatriptan_Request
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "5f4bc41c-480e-4ee4-b58e-a99268c1a1d0"
// AUTO-DISABLED (SUSHI R6): * insert Sumatriptan_Request_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Inline_Sumatriptan)
// AUTO-DISABLED (SUSHI R6): * basedOn
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * system = $sid-medication-plan-identifier
    // AUTO-DISABLED (SUSHI R6): * value = "4dd6f19d-002c-44ac-ae2f-3c9d08ad35b8"


// AUTO-DISABLED (SUSHI R6): Instance: Sumatriptan_Request
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "4dd6f19d-002c-44ac-ae2f-3c9d08ad35b8"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-11-01T14:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * status = #completed
// AUTO-DISABLED (SUSHI R6): * identifier[RxPrescriptionProcessIdentifierR6].value = "160.100.000.000.007.24_20250425"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "5f4bc41c-480e-4ee4-b58e-a99268c1a1d0_160.100.000.000.007.24"
// AUTO-DISABLED (SUSHI R6): * insert Sumatriptan_Request_Content
// AUTO-DISABLED (SUSHI R6): * insert Arzt_PractitionerRole_Reference
// AUTO-DISABLED (SUSHI R6): * basedOn[+]
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * system = $sid-medication-plan-identifier
    // AUTO-DISABLED (SUSHI R6): * value = "4dd6f19d-002c-44ac-ae2f-3c9d08ad35b8"


// MedicationDispense =================

RuleSet: Sumatriptan_Dispense_Content
* status = #completed
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Sumatriptan)
* subject = ExamplePatientReference
* whenHandedOver = "2026-11-01"
* substitution
  * wasSubstituted = false


// AUTO-DISABLED (SUSHI R6): Instance: Inline_Sumatriptan_Dispense
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationDispenseR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationDispenseInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "1da91bd3-d5cb-459b-a270-32fad7d5d5d5"
// AUTO-DISABLED (SUSHI R6): * insert Sumatriptan_Dispense_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Inline_Sumatriptan)
// AUTO-DISABLED (SUSHI R6): * performer.actor = Reference(InlineGematikApotheke)
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * type
      // AUTO-DISABLED (SUSHI R6): // * coding.version = "2.9.0"
      // AUTO-DISABLED (SUSHI R6): * coding = $v2-0203#PRN "Provider number"
    // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-telematik-id
    // AUTO-DISABLED (SUSHI R6): * value = $GematikApotheke-TelematikID
  // AUTO-DISABLED (SUSHI R6): * insert GematikApotheke-display


// AUTO-DISABLED (SUSHI R6): Instance: Sumatriptan_Dispense
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationDispenseR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationDispenseInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "fa0c29e1-c4e7-4f08-91ab-598a2233867c"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-11-01T15:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.007.24_20261101"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "1da91bd3-d5cb-459b-a270-32fad7d5d5d5_160.100.000.000.007.24"
// AUTO-DISABLED (SUSHI R6): * insert Sumatriptan_Dispense_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Sumatriptan)
// AUTO-DISABLED (SUSHI R6): * performer.actor = Reference(GematikApotheke)
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * type
      // AUTO-DISABLED (SUSHI R6): // * coding.version = "2.9.0"
      // AUTO-DISABLED (SUSHI R6): * coding = $v2-0203#PRN "Provider number"
    // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-telematik-id
    // AUTO-DISABLED (SUSHI R6): * value = $GematikApotheke-TelematikID
  // AUTO-DISABLED (SUSHI R6): * insert GematikApotheke-display
// AUTO-DISABLED (SUSHI R6): * authorizingPrescription = Reference(Sumatriptan_Request)


// MedicationStatement =================

// AUTO-DISABLED (SUSHI R6): Instance: Sumatriptan_Information
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationStatementR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationStatementInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "f29f1d0c-be05-4b0d-a335-3e508da39c0c"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-11-01T15:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.007.24_20261101"
// AUTO-DISABLED (SUSHI R6): * extension[context].valueCode = #PRESCRIPTION
// AUTO-DISABLED (SUSHI R6): * status = #unknown
// AUTO-DISABLED (SUSHI R6): * subject = ExamplePatientReference
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Sumatriptan)
// AUTO-DISABLED (SUSHI R6): * derivedFrom[+] = Reference(Sumatriptan_Request)
// AUTO-DISABLED (SUSHI R6): * derivedFrom[+] = Reference(Sumatriptan_Dispense)
// AUTO-DISABLED (SUSHI R6): * dateAsserted = "2026-11-01"
// AUTO-DISABLED (SUSHI R6): // * effectiveDateTime = "2026-11-01"
// AUTO-DISABLED (SUSHI R6): * effectivePeriod
  // AUTO-DISABLED (SUSHI R6): * start = "2025-11-01"
// AUTO-DISABLED (SUSHI R6): * insert Sumatriptan_Request_Dosage_Rendered
// AUTO-DISABLED (SUSHI R6): * dosage[+] insert Sumatriptan_Request_Dosage
// AUTO-DISABLED (SUSHI R6): * basedOn[+] = Reference(eMP_Sumatriptan_Request)
  // AUTO-DISABLED (SUSHI R6): * extension[isEMP].valueBoolean = true


Instance: Sumatriptan_Information_Provenance
InstanceOf: EPAActivityProvenance
Usage: #example
* insert EPAActivityProvenanceInstanceMeta
* id = "176eec9c-8d5a-46a7-96e3-7af3f68c49ed"
* activity = $v3-DataOperation#UPDATE
* agent
  * type = $provenance-participant-type#author
  * who = MedicationSvcIdentifier
* target[+] = Reference(MedicationStatement/f29f1d0c-be05-4b0d-a335-3e508da39c0c/_history/2)
* recorded = "2026-11-01T15:43:33.244Z"
