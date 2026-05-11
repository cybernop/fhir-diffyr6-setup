RuleSet: Prospan_Content
* extension[type].valueCoding = $sct#763158003
// "Medicinal product (product)"
* extension[drugCategory].valueCoding.system = Canonical(EPADrugCategoryCS)
* extension[drugCategory].valueCoding.code = #00
* extension[normSizeCode].valueCode = #N1

* status = #active
* code.coding[pzn] = $cs-pzn#08585997
* code.text = "Prospan® Hustensaft 100ml N1"
// AUTO-DISABLED (SUSHI R6): * form.coding[kbvDarreichungsform] = $cs-kbv-medication-darreichungsform#FLE
* ingredient[+]
  * itemCodeableConcept.coding[ask]
    // AUTO-DISABLED (SUSHI R6): * system = $cs-ask
    // AUTO-DISABLED (SUSHI R6): * code = #50912
  // AUTO-DISABLED (SUSHI R6): * itemCodeableConcept.text = "Efeublätter-Trockenextrakt (5-7,5:1); Auszugsmittel: Ethanol 30% (m/m)"
  * strength
    * numerator
      // AUTO-DISABLED (SUSHI R6): * value = 35
      // AUTO-DISABLED (SUSHI R6): * unit = "mg"
    * denominator
      // AUTO-DISABLED (SUSHI R6): * value = 5
      // AUTO-DISABLED (SUSHI R6): * unit = "ml"


Instance: Inline_Prospan
InstanceOf: EPAMedicationR6
Usage: #inline
* insert EPAMedicationInstanceMeta
* id = "4ef3e77d-fcaf-483e-8c65-c09372bb60fe"
* insert Prospan_Content


Instance: Prospan
InstanceOf: EPAMedicationR6
Usage: #example
* insert EPAMedicationInstanceMeta
* id = "ab8addbd-c4c7-48d2-bf4b-4a7c99f9fd6e"
* meta
  * versionId = "2"
  * lastUpdated = "2025-11-27T14:43:40.244Z"
* extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.002.36_20251127"
* identifier[EPAMedicationUniqueIdentifierR6].value = "1AAF4C0C8407A152A3C41728DB3DE4BBC363CD4CE6B8A2537E1CEF61DA4065ED"
* identifier[RxOriginatorProcessIdentifierR6].value = "4ef3e77d-fcaf-483e-8c65-c09372bb60fe_160.100.000.000.002.36"
* insert Prospan_Content


// MedicationRequest =======================
RuleSet: Prospan_Request_Dosage
* text = "2mal tägl. 5ml"

RuleSet: Prospan_Request_Rendered_Dosage_Instruction
* extension[renderedDosageInstruction].valueMarkdown = "2mal tägl. 5ml"
* extension[generatedDosageInstructionsMeta]
  * extension[algorithmVersion].valueString = "1.0.1"
  * extension[language].valueCode = #de-DE

RuleSet: Prospan_Request_Content
* extension[multiplePrescription].extension[indicator].valueBoolean = false
* status = #active
* intent = #filler-order
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Prospan)
* subject = ExamplePatientReference
* authoredOn = "2025-11-27"
* dispenseRequest.quantity.value = 1
* dispenseRequest.quantity.unit = "Packung"
* substitution.allowedBoolean = true
* dosageInstruction[+] insert Prospan_Request_Dosage
* insert Prospan_Request_Rendered_Dosage_Instruction


// AUTO-DISABLED (SUSHI R6): Instance: Inline_Prospan_Request
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "f4f341f8-56b2-475b-914b-b8533c34f849"
// AUTO-DISABLED (SUSHI R6): * insert Prospan_Request_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Inline_Prospan)


// AUTO-DISABLED (SUSHI R6): Instance: Prospan_Request
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "40df19aa-40e2-4ebc-a11d-9d232dcb0f67"
// AUTO-DISABLED (SUSHI R6): * insert Prospan_Request_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Prospan)
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-11-27T14:43:40.244Z"
// AUTO-DISABLED (SUSHI R6): * status = #completed
// AUTO-DISABLED (SUSHI R6): * identifier[RxPrescriptionProcessIdentifierR6].value = "160.100.000.000.002.36_20251127"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "f4f341f8-56b2-475b-914b-b8533c34f849_160.100.000.000.002.36"
// AUTO-DISABLED (SUSHI R6): * insert Arzt_PractitionerRole_Reference


// MedicationDispense =================

RuleSet: Prospan_Dispense_Content
* status = #completed
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Prospan)
* subject = ExamplePatientReference
* whenHandedOver = "2025-11-27"
* substitution
  * wasSubstituted = false

// AUTO-DISABLED (SUSHI R6): Instance: Inline_Prospan_Dispense
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationDispenseR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationDispenseInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "6c94dbcb-e8b0-41cc-b45e-cd00c3495cad"
// AUTO-DISABLED (SUSHI R6): * insert Prospan_Dispense_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Inline_Prospan)
// AUTO-DISABLED (SUSHI R6): * performer.actor = Reference(InlineGematikApotheke)
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * type
      // AUTO-DISABLED (SUSHI R6): // * coding.version = "2.9.0"
      // AUTO-DISABLED (SUSHI R6): * coding = $v2-0203#PRN "Provider number"
    // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-telematik-id
    // AUTO-DISABLED (SUSHI R6): * value = $GematikApotheke-TelematikID
  // AUTO-DISABLED (SUSHI R6): * insert GematikApotheke-display


// AUTO-DISABLED (SUSHI R6): Instance: Prospan_Dispense
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationDispenseR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationDispenseInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "3c10c1ad-1d7a-47e8-abab-00b8299b49b8"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-11-27T14:43:40.244Z"
// AUTO-DISABLED (SUSHI R6): * extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.002.36_20251127"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "6c94dbcb-e8b0-41cc-b45e-cd00c3495cad_160.100.000.000.002.36"
// AUTO-DISABLED (SUSHI R6): * insert Venlafaxin_Dispense_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Prospan)
// AUTO-DISABLED (SUSHI R6): * performer.actor = Reference(GematikApotheke)
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * type
      // AUTO-DISABLED (SUSHI R6): // * coding.version = "2.9.0"
      // AUTO-DISABLED (SUSHI R6): * coding = $v2-0203#PRN "Provider number"
    // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-telematik-id
    // AUTO-DISABLED (SUSHI R6): * value = $GematikApotheke-TelematikID
  // AUTO-DISABLED (SUSHI R6): * insert GematikApotheke-display
// AUTO-DISABLED (SUSHI R6): * authorizingPrescription = Reference(Prospan_Request)


// MedicationStatement =================

// AUTO-DISABLED (SUSHI R6): Instance: Prospan_Information
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationStatementR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationStatementInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "1b88713c-64cc-40ad-9665-70ca5f7dfb08"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-11-27T14:43:42.244Z"
// AUTO-DISABLED (SUSHI R6): * extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.002.36_20251127"
// AUTO-DISABLED (SUSHI R6): * extension[context].valueCode = #PRESCRIPTION
// AUTO-DISABLED (SUSHI R6): * status = #unknown
// AUTO-DISABLED (SUSHI R6): * subject = ExamplePatientReference
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Prospan)
// AUTO-DISABLED (SUSHI R6): * derivedFrom[+] = Reference(Prospan_Request)
// AUTO-DISABLED (SUSHI R6): * derivedFrom[+] = Reference(Prospan_Dispense)
// AUTO-DISABLED (SUSHI R6): * dateAsserted = "2025-11-27"
// AUTO-DISABLED (SUSHI R6): // * effectiveDateTime = "2025-11-27"
// AUTO-DISABLED (SUSHI R6): * effectivePeriod
  // AUTO-DISABLED (SUSHI R6): * start = "2025-11-22"
// AUTO-DISABLED (SUSHI R6): * dosage[+] insert Prospan_Request_Dosage
// AUTO-DISABLED (SUSHI R6): * insert Prospan_Request_Rendered_Dosage_Instruction


Instance: Prospan_Information_Provenance
InstanceOf: EPAActivityProvenance
Usage: #example
* insert EPAActivityProvenanceInstanceMeta
* id = "168ec791-45ca-434c-8ba8-cbc855a3ca90"
* activity = $v3-DataOperation#UPDATE
* agent
  * type = $provenance-participant-type#author
  * who = MedicationSvcIdentifier
* target[+] = Reference(MedicationStatement/1b88713c-64cc-40ad-9665-70ca5f7dfb08/_history/2)
* recorded = "2025-11-27T14:43:42.244Z"
