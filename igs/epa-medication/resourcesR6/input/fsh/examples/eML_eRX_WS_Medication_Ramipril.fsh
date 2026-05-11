RuleSet: Ramipril_Content
* extension[type].valueCoding = $sct#763158003
// "Medicinal product (product)"
* extension[drugCategory].valueCoding.system = Canonical(EPADrugCategoryCS)
* extension[drugCategory].valueCoding.code = #00
* extension[normSizeCode].valueCode = #N3
* extension[isVaccine].valueBoolean = false
* status = #active
// AUTO-DISABLED (SUSHI R6): * form.text = "Tabletten"
* ingredient[+]
  * itemCodeableConcept.coding[ask]
    // AUTO-DISABLED (SUSHI R6): * system = $cs-ask
    // AUTO-DISABLED (SUSHI R6): * code = #22686
  // AUTO-DISABLED (SUSHI R6): * itemCodeableConcept.text = "Ramipril"
  * strength
    * numerator
      // AUTO-DISABLED (SUSHI R6): * value = 5
      // AUTO-DISABLED (SUSHI R6): * unit = "mg"
    * denominator
      // AUTO-DISABLED (SUSHI R6): * value = 1
      // AUTO-DISABLED (SUSHI R6): * unit = "Tbl."
// AUTO-DISABLED (SUSHI R6): * amount.numerator.unit = "Stück"
// AUTO-DISABLED (SUSHI R6): * amount.numerator.extension[totalQuantity].valueString = "100"
// AUTO-DISABLED (SUSHI R6): * amount.denominator.value = 1


Instance: Inline_Ramipril
InstanceOf: EPAMedicationR6
Usage: #inline
* insert EPAMedicationInstanceMeta
* id = "48de03e7-84f3-4724-830e-5aabca10dfa8"
* insert Ramipril_Content


Instance: Ramipril
InstanceOf: EPAMedicationR6
Usage: #example
* insert EPAMedicationInstanceMeta
* id = "3f0b0cb0-e8cf-4aaf-bad8-01a51619417b"
* meta
  * versionId = "2"
  * lastUpdated = "2025-12-03T14:00:00.244Z"
* extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.019.82_20251202"
* identifier[EPAMedicationUniqueIdentifierR6].value = "6E36794F8327D7B96B74DC7E29FFCB49CC2CD859EBB58251DC1FB4456BEF92A9"
* identifier[RxOriginatorProcessIdentifierR6].value = "48de03e7-84f3-4724-830e-5aabca10dfa8_160.100.000.000.019.82"
* insert Ramipril_Content


// MedicationRequest =======================

RuleSet: Ramipril_Request_Dosage
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

RuleSet: Ramipril_Request_Dosage_Rendered
* extension[renderedDosageInstruction].valueMarkdown = "1-0-0-0 Stück"
* extension[generatedDosageInstructionsMeta]
  * extension[algorithmVersion].valueString = "1.0.1"
  * extension[language].valueCode = #de-DE


RuleSet: Ramipril_Request_Content
* extension[multiplePrescription].extension[indicator].valueBoolean = false
* status = #active
* intent = #filler-order
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Ramipril)
* subject = ExamplePatientReference
* authoredOn = "2025-12-02"
* dispenseRequest.quantity.value = 1
* dispenseRequest.quantity.unit = "Packung"
* substitution.allowedBoolean = true
* insert Ramipril_Request_Dosage_Rendered
* dosageInstruction[+] insert Ramipril_Request_Dosage


// AUTO-DISABLED (SUSHI R6): Instance: Inline_Ramipril_Request
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "b7791120-8913-47d4-acd0-9ae633f6d6c0"
// AUTO-DISABLED (SUSHI R6): * insert Ramipril_Request_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Inline_Ramipril)


// AUTO-DISABLED (SUSHI R6): Instance: Ramipril_Request
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "0e7f16e4-d879-4a2c-8292-41c55201bbdd"
// AUTO-DISABLED (SUSHI R6): * insert Ramipril_Request_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Ramipril)
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-12-03T14:00:00.244Z"
// AUTO-DISABLED (SUSHI R6): * status = #completed
// AUTO-DISABLED (SUSHI R6): * identifier[RxPrescriptionProcessIdentifierR6].value = "160.100.000.000.019.82_20251202"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "b7791120-8913-47d4-acd0-9ae633f6d6c0_160.100.000.000.019.82"
// AUTO-DISABLED (SUSHI R6): * insert Arzt_PractitionerRole_Reference


// MedicationDispense =================

RuleSet: Ramipril_Dispense_Content
* status = #completed
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Ramipril)
* subject = ExamplePatientReference
* whenHandedOver = "2025-12-03"
* substitution
  * wasSubstituted = false

// AUTO-DISABLED (SUSHI R6): Instance: Inline_Ramipril_Dispense
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationDispenseR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationDispenseInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "ad9696d3-bc6b-4033-bdd7-14b934dc4426"
// AUTO-DISABLED (SUSHI R6): * insert Ramipril_Dispense_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Inline_Ramipril)
// AUTO-DISABLED (SUSHI R6): * performer.actor = Reference(InlineGematikApotheke)
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * type
      // AUTO-DISABLED (SUSHI R6): // * coding.version = "2.9.0"
      // AUTO-DISABLED (SUSHI R6): * coding = $v2-0203#PRN "Provider number"
    // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-telematik-id
    // AUTO-DISABLED (SUSHI R6): * value = $GematikApotheke-TelematikID
  // AUTO-DISABLED (SUSHI R6): * insert GematikApotheke-display


// AUTO-DISABLED (SUSHI R6): Instance: Ramipril_Dispense
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationDispenseR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationDispenseInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "5aeaf266-a7ee-4e9d-bcb9-3c7dde96abad"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-12-03T14:00:00.244Z"
// AUTO-DISABLED (SUSHI R6): * extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.019.82_20251202"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "ad9696d3-bc6b-4033-bdd7-14b934dc4426_160.100.000.000.019.82"
// AUTO-DISABLED (SUSHI R6): * insert Ramipril_Dispense_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Ramipril)
// AUTO-DISABLED (SUSHI R6): * performer.actor = Reference(GematikApotheke)
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * type
      // AUTO-DISABLED (SUSHI R6): // * coding.version = "2.9.0"
      // AUTO-DISABLED (SUSHI R6): * coding = $v2-0203#PRN "Provider number"
    // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-telematik-id
    // AUTO-DISABLED (SUSHI R6): * value = $GematikApotheke-TelematikID
  // AUTO-DISABLED (SUSHI R6): * insert GematikApotheke-display
// AUTO-DISABLED (SUSHI R6): * authorizingPrescription = Reference(Ramipril_Request)


// MedicationStatement =================

// AUTO-DISABLED (SUSHI R6): Instance: Ramipril_Information
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationStatementR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationStatementInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "0fc1f006-5793-4501-81b6-fe3918fcfa2d"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-12-03T14:00:00.244Z"
// AUTO-DISABLED (SUSHI R6): * extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.019.82_20251202"
// AUTO-DISABLED (SUSHI R6): * extension[context].valueCode = #PRESCRIPTION
// AUTO-DISABLED (SUSHI R6): * status = #unknown
// AUTO-DISABLED (SUSHI R6): * subject = ExamplePatientReference
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Ramipril)
// AUTO-DISABLED (SUSHI R6): * derivedFrom[+] = Reference(Ramipril_Request)
// AUTO-DISABLED (SUSHI R6): * derivedFrom[+] = Reference(Ramipril_Dispense)
// AUTO-DISABLED (SUSHI R6): * dateAsserted = "2025-12-02"
// AUTO-DISABLED (SUSHI R6): // * effectiveDateTime = "2025-12-03"
// AUTO-DISABLED (SUSHI R6): * effectivePeriod
  // AUTO-DISABLED (SUSHI R6): * start = "2025-12-03"
// AUTO-DISABLED (SUSHI R6): * insert Ramipril_Request_Dosage_Rendered
// AUTO-DISABLED (SUSHI R6): * dosage[+] insert Ramipril_Request_Dosage


Instance: Ramipril_Information_Provenance
InstanceOf: EPAActivityProvenance
Usage: #example
* insert EPAActivityProvenanceInstanceMeta
* id = "a99c2849-de82-4a43-98f4-8d6a4caa6038"
* activity = $v3-DataOperation#UPDATE
* agent
  * type = $provenance-participant-type#author
  * who = MedicationSvcIdentifier
* target[+] = Reference(MedicationStatement/0fc1f006-5793-4501-81b6-fe3918fcfa2d/_history/2)
* recorded = "2025-12-03T14:00:00.244Z"
