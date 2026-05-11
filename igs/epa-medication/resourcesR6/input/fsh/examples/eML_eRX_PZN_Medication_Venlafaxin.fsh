RuleSet: Venlafaxin_Content
* extension[type].valueCoding = $sct#763158003
// "Medicinal product (product)"
* extension[drugCategory].valueCoding.system = Canonical(EPADrugCategoryCS)
* extension[drugCategory].valueCoding.code = #00
* extension[normSizeCode].valueCode = #N3
* extension[isVaccine].valueBoolean = false
* status = #active
* code.coding[pzn] = $cs-pzn#05392039
* code.text = "Venlafaxin - 1 A Pharma® 75mg 100 Tabl. N3"
// AUTO-DISABLED (SUSHI R6): * form.coding[kbvDarreichungsform] = $cs-kbv-medication-darreichungsform#TAB
* ingredient[+]
  * itemCodeableConcept.coding[ask]
    // AUTO-DISABLED (SUSHI R6): * system = $cs-ask
    // AUTO-DISABLED (SUSHI R6): * code = #24421
  // AUTO-DISABLED (SUSHI R6): * itemCodeableConcept.text = "Venlafaxin"
  * strength
    * numerator
      // AUTO-DISABLED (SUSHI R6): * value = 75
      // AUTO-DISABLED (SUSHI R6): * unit = "mg"
    * denominator
      // AUTO-DISABLED (SUSHI R6): * value = 1
      // AUTO-DISABLED (SUSHI R6): * unit = "Tbl."


Instance: Inline_Venlafaxin
InstanceOf: EPAMedicationR6
Usage: #inline
* insert EPAMedicationInstanceMeta
* id = "33f1aed7-ecf2-4bb4-be3a-5ec375b656b8"
* insert Venlafaxin_Content


Instance: Venlafaxin
InstanceOf: EPAMedicationR6
Usage: #example
* insert EPAMedicationInstanceMeta
* id = "56ca34f1-a3f3-42f7-95a2-f5a6423c2031"
* meta
  * versionId = "2"
  * lastUpdated = "2025-02-27T14:43:33.244Z"
* extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.001.39_20250227"
* identifier[EPAMedicationUniqueIdentifierR6].value = "A88662F2325484C7FF91398CACF90D38D688248B97B3624DADCD474CA3F3BBC1"
* identifier[RxOriginatorProcessIdentifierR6].value = "33f1aed7-ecf2-4bb4-be3a-5ec375b656b8_160.100.000.000.001.39"
* insert Venlafaxin_Content


// MedicationRequest =======================

RuleSet: Venlafaxin_Request_Content
* extension[multiplePrescription].extension[indicator].valueBoolean = false
* status = #active
* intent = #filler-order
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Venlafaxin)
* subject = ExamplePatientReference
* authoredOn = "2025-02-27"
* dispenseRequest.quantity.value = 1
* dispenseRequest.quantity.unit = "Packung"


// AUTO-DISABLED (SUSHI R6): Instance: Inline_Venlafaxin_Request
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "5e36a398-8baa-43a7-8c93-4815b8fc4211"
// AUTO-DISABLED (SUSHI R6): * insert Venlafaxin_Request_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Inline_Venlafaxin)


// AUTO-DISABLED (SUSHI R6): Instance: Venlafaxin_Request
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "7efae80a-a4d9-4e26-a1b9-92c72e79cfaa"
// AUTO-DISABLED (SUSHI R6): * insert Venlafaxin_Request_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Venlafaxin)
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-02-27T14:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * status = #completed
// AUTO-DISABLED (SUSHI R6): * identifier[RxPrescriptionProcessIdentifierR6].value = "160.100.000.000.001.39_20250227"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "5e36a398-8baa-43a7-8c93-4815b8fc4211_160.100.000.000.001.39"
// AUTO-DISABLED (SUSHI R6): * insert Arzt_PractitionerRole_Reference


// MedicationDispense =================

RuleSet: Venlafaxin_Dispense_Content
* status = #completed
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Venlafaxin)
* subject = ExamplePatientReference
* whenHandedOver = "2025-02-27"
// * performer.actor = Reference(GematikApotheke)
* substitution
  * wasSubstituted = false

// AUTO-DISABLED (SUSHI R6): Instance: Inline_Venlafaxin_Dispense
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationDispenseR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationDispenseInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "9475102b-7677-4ab8-9449-91b91c6aeaa3"
// AUTO-DISABLED (SUSHI R6): * insert Venlafaxin_Dispense_Content
// AUTO-DISABLED (SUSHI R6): // * authorizingPrescription = Reference(Inlince_Sumatriptan_Request)
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Inline_Venlafaxin)
// AUTO-DISABLED (SUSHI R6): * performer.actor = Reference(InlineGematikApotheke)
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * type
      // AUTO-DISABLED (SUSHI R6): // * coding.version = "2.9.0"
      // AUTO-DISABLED (SUSHI R6): * coding = $v2-0203#PRN "Provider number"
    // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-telematik-id
    // AUTO-DISABLED (SUSHI R6): * value = $GematikApotheke-TelematikID
  // AUTO-DISABLED (SUSHI R6): * insert GematikApotheke-display


// AUTO-DISABLED (SUSHI R6): Instance: Venlafaxin_Dispense
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationDispenseR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationDispenseInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "c0b553bd-2542-49d7-b5e1-0a770185e39f"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-02-27T14:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.001.39_20250227"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "9475102b-7677-4ab8-9449-91b91c6aeaa3_160.100.000.000.001.39"
// AUTO-DISABLED (SUSHI R6): * insert Venlafaxin_Dispense_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Venlafaxin)
// AUTO-DISABLED (SUSHI R6): * performer.actor = Reference(GematikApotheke)
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * type
      // AUTO-DISABLED (SUSHI R6): // * coding.version = "2.9.0"
      // AUTO-DISABLED (SUSHI R6): * coding = $v2-0203#PRN "Provider number"
    // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-telematik-id
    // AUTO-DISABLED (SUSHI R6): * value = $GematikApotheke-TelematikID
  // AUTO-DISABLED (SUSHI R6): * insert GematikApotheke-display
// AUTO-DISABLED (SUSHI R6): * authorizingPrescription = Reference(Venlafaxin_Request)


// MedicationStatement =================

// AUTO-DISABLED (SUSHI R6): Instance: Venlafaxin_Information
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationStatementR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationStatementInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "b87b0908-7765-4ec0-8662-7d3daff08f6e"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-02-27T14:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.001.39_20250227"
// AUTO-DISABLED (SUSHI R6): * extension[context].valueCode = #PRESCRIPTION
// AUTO-DISABLED (SUSHI R6): * status = #unknown
// AUTO-DISABLED (SUSHI R6): * subject = ExamplePatientReference
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Venlafaxin)
// AUTO-DISABLED (SUSHI R6): * derivedFrom[+] = Reference(Venlafaxin_Request)
// AUTO-DISABLED (SUSHI R6): * derivedFrom[+] = Reference(Venlafaxin_Dispense)
// AUTO-DISABLED (SUSHI R6): * dateAsserted = "2025-02-27"
// AUTO-DISABLED (SUSHI R6): // * effectiveDateTime = "2025-02-27"
// AUTO-DISABLED (SUSHI R6): * effectivePeriod
  // AUTO-DISABLED (SUSHI R6): * start = "2025-02-27"


Instance: Venlafaxin_Information_Provenance
InstanceOf: EPAActivityProvenance
Usage: #example
* insert EPAActivityProvenanceInstanceMeta
* id = "1a93c378-435e-437e-8c7c-6e84b788a3eb"
* activity = $v3-DataOperation#UPDATE
* agent
  * type = $provenance-participant-type#author
  * who = MedicationSvcIdentifier
* target[+] = Reference(MedicationStatement/b87b0908-7765-4ec0-8662-7d3daff08f6e/_history/2)
* recorded = "2025-02-27T14:43:33.244Z"
