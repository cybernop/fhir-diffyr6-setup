RuleSet: Doxycyclin_Content
* extension[type].valueCoding = $sct#763158003
// "Medicinal product (product)"
* extension[drugCategory].valueCoding.system = Canonical(EPADrugCategoryCS)
* extension[drugCategory].valueCoding.code = #00
* extension[normSizeCode].valueCode = #N1
* extension[isVaccine].valueBoolean = false
* status = #active
* code.coding[pzn] = $cs-pzn#04773414
* code.text = "Doxycyclin AL 200 T, 10 Tabletten N1"
// AUTO-DISABLED (SUSHI R6): * form.coding[kbvDarreichungsform] = $cs-kbv-medication-darreichungsform#TAB
* ingredient[+]
  * itemCodeableConcept.coding[ask]
    // AUTO-DISABLED (SUSHI R6): * system = $cs-ask
    // AUTO-DISABLED (SUSHI R6): * code = #03876
  // AUTO-DISABLED (SUSHI R6): * itemCodeableConcept.text = "Doxycyclin"
  * strength
    * numerator
      // AUTO-DISABLED (SUSHI R6): * value = 200
      // AUTO-DISABLED (SUSHI R6): * unit = "mg"
    * denominator
      // AUTO-DISABLED (SUSHI R6): * value = 1
      // AUTO-DISABLED (SUSHI R6): * unit = "Tbl."
// AUTO-DISABLED (SUSHI R6): * amount.numerator.unit = "Tabletten"
// AUTO-DISABLED (SUSHI R6): * amount.numerator.extension[totalQuantity].valueString = "10"
// AUTO-DISABLED (SUSHI R6): * amount.denominator.value = 1


Instance: Inline_Doxycyclin
InstanceOf: EPAMedicationR6
Usage: #inline
* insert EPAMedicationInstanceMeta
* id = "9fae333f-92b1-4f03-b838-cd5c5d2285b5"
* insert Doxycyclin_Content


Instance: Doxycyclin
InstanceOf: EPAMedicationR6
Usage: #example
* insert EPAMedicationInstanceMeta
* id = "19549515-60a8-4e1c-b86a-49518053fe9f"
* meta
  * versionId = "2"
  * lastUpdated = "2025-09-08T14:50:00.244Z"
* extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.011.09_20250906"
* identifier[EPAMedicationUniqueIdentifierR6].value = "57A2CD0E021EDE4D8840548BC0F296D54F6D346E123F8279CB25F3D004434EA9"
* identifier[RxOriginatorProcessIdentifierR6].value = "9fae333f-92b1-4f03-b838-cd5c5d2285b5_160.100.000.000.011.09"
* insert Doxycyclin_Content


// MedicationRequest =======================

RuleSet: Doxycyclin_Request_Dosage
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

RuleSet: Doxycyclin_Request_Dosage_Rendered
* extension[renderedDosageInstruction].valueMarkdown = "1-0-0-0 Stück"
* extension[generatedDosageInstructionsMeta]
  * extension[algorithmVersion].valueString = "1.0.1"
  * extension[language].valueCode = #de-DE


RuleSet: Doxycyclin_Request_Content
* extension[multiplePrescription].extension[indicator].valueBoolean = false
* status = #active
* intent = #filler-order
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Doxycyclin)
* subject = ExamplePatientReference
* authoredOn = "2025-09-06"
* dispenseRequest.quantity.value = 1
* dispenseRequest.quantity.unit = "Packung"
* substitution.allowedBoolean = true
* insert Doxycyclin_Request_Dosage_Rendered
* dosageInstruction[+] insert Doxycyclin_Request_Dosage


// AUTO-DISABLED (SUSHI R6): Instance: Inline_Doxycyclin_Request
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "59b9fa64-4ca1-4bd2-8388-652d0fec32b2"
// AUTO-DISABLED (SUSHI R6): * insert Doxycyclin_Request_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Inline_Doxycyclin)


// AUTO-DISABLED (SUSHI R6): Instance: Doxycyclin_Request
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "08cb8487-2758-406c-999a-e23a05e63c0b"
// AUTO-DISABLED (SUSHI R6): * insert Doxycyclin_Request_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Doxycyclin)
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-09-08T14:50:01.244Z"
// AUTO-DISABLED (SUSHI R6): * status = #completed
// AUTO-DISABLED (SUSHI R6): * identifier[RxPrescriptionProcessIdentifierR6].value = "160.100.000.000.011.09_20250906"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "59b9fa64-4ca1-4bd2-8388-652d0fec32b2_160.100.000.000.011.09"
// AUTO-DISABLED (SUSHI R6): * insert Arzt_PractitionerRole_Reference


// MedicationDispense =================

RuleSet: Doxycyclin_Dispense_Content
* status = #completed
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Doxycyclin)
* subject = ExamplePatientReference
* whenHandedOver = "2025-09-08"
* substitution
  * wasSubstituted = false

// AUTO-DISABLED (SUSHI R6): Instance: Inline_Doxycyclin_Dispense
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationDispenseR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationDispenseInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "72f86151-cdb2-472c-8e98-e5ba71191e1d"
// AUTO-DISABLED (SUSHI R6): * insert Doxycyclin_Dispense_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Inline_Doxycyclin)
// AUTO-DISABLED (SUSHI R6): * performer.actor = Reference(InlineGematikApotheke)
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * type
      // AUTO-DISABLED (SUSHI R6): // * coding.version = "2.9.0"
      // AUTO-DISABLED (SUSHI R6): * coding = $v2-0203#PRN "Provider number"
    // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-telematik-id
    // AUTO-DISABLED (SUSHI R6): * value = $GematikApotheke-TelematikID
  // AUTO-DISABLED (SUSHI R6): * insert GematikApotheke-display


// AUTO-DISABLED (SUSHI R6): Instance: Doxycyclin_Dispense
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationDispenseR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationDispenseInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "c3a353f0-c61a-4d6b-affa-daf8c0f6e77c"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-09-08T14:50:02.244Z"
// AUTO-DISABLED (SUSHI R6): * extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.011.09_20250906"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "72f86151-cdb2-472c-8e98-e5ba71191e1d_160.100.000.000.011.09"
// AUTO-DISABLED (SUSHI R6): * insert Doxycyclin_Dispense_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Doxycyclin)
// AUTO-DISABLED (SUSHI R6): * performer.actor = Reference(GematikApotheke)
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * type
      // AUTO-DISABLED (SUSHI R6): // * coding.version = "2.9.0"
      // AUTO-DISABLED (SUSHI R6): * coding = $v2-0203#PRN "Provider number"
    // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-telematik-id
    // AUTO-DISABLED (SUSHI R6): * value = $GematikApotheke-TelematikID
  // AUTO-DISABLED (SUSHI R6): * insert GematikApotheke-display
// AUTO-DISABLED (SUSHI R6): * authorizingPrescription = Reference(Doxycyclin_Request)


// MedicationStatement =================

// AUTO-DISABLED (SUSHI R6): Instance: Doxycyclin_Information
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationStatementR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationStatementInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "405ff43e-bc8e-4109-b370-3e31431c5fe0"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-09-08T14:50:02.244Z"
// AUTO-DISABLED (SUSHI R6): * extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.011.09_20250906"
// AUTO-DISABLED (SUSHI R6): * extension[context].valueCode = #PRESCRIPTION
// AUTO-DISABLED (SUSHI R6): * status = #unknown
// AUTO-DISABLED (SUSHI R6): * subject = ExamplePatientReference
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Doxycyclin)
// AUTO-DISABLED (SUSHI R6): * derivedFrom[+] = Reference(Doxycyclin_Request)
// AUTO-DISABLED (SUSHI R6): * derivedFrom[+] = Reference(Doxycyclin_Dispense)
// AUTO-DISABLED (SUSHI R6): * dateAsserted = "2025-09-06"
// AUTO-DISABLED (SUSHI R6): // * effectiveDateTime = "2025-09-08"
// AUTO-DISABLED (SUSHI R6): * effectivePeriod
  // AUTO-DISABLED (SUSHI R6): * start = "2025-09-08"
// AUTO-DISABLED (SUSHI R6): * insert Doxycyclin_Request_Dosage_Rendered
// AUTO-DISABLED (SUSHI R6): * dosage[+] insert Doxycyclin_Request_Dosage


Instance: Doxycyclin_Information_Provenance
InstanceOf: EPAActivityProvenance
Usage: #example
* insert EPAActivityProvenanceInstanceMeta
* id = "cf988182-fd13-4f1f-a35c-d045c57c28d0"
* activity = $v3-DataOperation#UPDATE
* agent
  * type = $provenance-participant-type#author
  * who = MedicationSvcIdentifier
* target[+] = Reference(MedicationStatement/405ff43e-bc8e-4109-b370-3e31431c5fe0/_history/2)
* recorded = "2025-09-08T14:44:02.244Z"
