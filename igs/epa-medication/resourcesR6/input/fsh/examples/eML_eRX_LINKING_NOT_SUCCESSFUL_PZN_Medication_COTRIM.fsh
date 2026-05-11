Instance: COTRIM
InstanceOf: EPAMedicationR6
Usage: #example
* insert EPAMedicationInstanceMeta
* id = "1254591a-dd2d-4d17-b8f8-ee3155da0699"
* meta
  * versionId = "2"
  * lastUpdated = "2025-10-19T14:43:33.244Z"
* extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.112.925.848.156.74_20251019"
* identifier[EPAMedicationUniqueIdentifierR6].value = "F030A155EEC02D14FC2E82C227267F3AF6A583D5D29D644B7F55A5D32321FA90"
* identifier[RxOriginatorProcessIdentifierR6].value = "56b51cb2-6503-43c5-85ba-d709a0cbb3f2.112.925.848.156.74"
* extension[type].valueCoding = $sct#763158003
// "Medicinal product (product)"
* extension[drugCategory].valueCoding.system = Canonical(EPADrugCategoryCS)
* extension[drugCategory].valueCoding.code = #00
* extension[normSizeCode].valueCode = #N1
* extension[isVaccine].valueBoolean = false
* status = #active
* code.coding[pzn] = $cs-pzn#17550609
* code.text = "COTRIM K-ratiopharm 200mg/5ml + 40mg/5ml Susp.z.E."
// AUTO-DISABLED (SUSHI R6): * amount.numerator.unit = "ml"
// AUTO-DISABLED (SUSHI R6): * amount.numerator.extension[totalQuantity].valueString = "100"
// AUTO-DISABLED (SUSHI R6): * amount.denominator.value = 1
// AUTO-DISABLED (SUSHI R6): * form.coding[kbvDarreichungsform] = $cs-kbv-medication-darreichungsform#SUE
* ingredient[+]
  // AUTO-DISABLED (SUSHI R6): * itemCodeableConcept.coding[ask]
    // AUTO-DISABLED (SUSHI R6): * system = $cs-ask
    // AUTO-DISABLED (SUSHI R6): * code = #02895
  // AUTO-DISABLED (SUSHI R6): * itemCodeableConcept.text = "Sulfamethoxazol"
  // AUTO-DISABLED (SUSHI R6): * strength
    // AUTO-DISABLED (SUSHI R6): * numerator
      // AUTO-DISABLED (SUSHI R6): * value = 200
      // AUTO-DISABLED (SUSHI R6): * unit = "mg"
    // AUTO-DISABLED (SUSHI R6): * denominator
      // AUTO-DISABLED (SUSHI R6): * value = 5
      // AUTO-DISABLED (SUSHI R6): * unit = "ml"


// MedicationRequest =======================


// AUTO-DISABLED (SUSHI R6): Instance: COTRIM_Request
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "f14498f0-4932-490a-91a2-9de8616e133b"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-10-19T14:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * identifier[RxPrescriptionProcessIdentifierR6].value = "160.112.925.848.156.74_20251019"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "0313be88-4c73-40e6-aa44-a7ed3de1a77a_160.112.925.848.156.74"
// AUTO-DISABLED (SUSHI R6): * extension[multiplePrescription].extension[indicator].valueBoolean = false
// AUTO-DISABLED (SUSHI R6): * intent = #filler-order
// AUTO-DISABLED (SUSHI R6): * status = #completed
// AUTO-DISABLED (SUSHI R6): * authoredOn = "2025-10-19"
// AUTO-DISABLED (SUSHI R6): * subject = ExamplePatientReference
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(COTRIM)
// AUTO-DISABLED (SUSHI R6): * insert Arzt_PractitionerRole_Reference
// AUTO-DISABLED (SUSHI R6): * dispenseRequest.quantity.value = 1
// AUTO-DISABLED (SUSHI R6): * dispenseRequest.quantity.unit = "Packung"
// AUTO-DISABLED (SUSHI R6): * substitution.allowedBoolean = true
// AUTO-DISABLED (SUSHI R6): * dosageInstruction[+]
  // AUTO-DISABLED (SUSHI R6): * text = "morgens und abends 1 Messlöffel"
// AUTO-DISABLED (SUSHI R6): * basedOn
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * system = $sid-medication-plan-identifier
    // AUTO-DISABLED (SUSHI R6): * value = "00000000-0000-0000-0000-000000000000"


// MedicationDispense =================

// AUTO-DISABLED (SUSHI R6): Instance: COTRIM_Dispense
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationDispenseR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationDispenseInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "6250569a-3505-4db7-aebc-45dba1f98acc"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-10-19T14:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.112.925.848.156.74_20251019"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "d6932eb6-5760-4b19-9d89-ee254d273df6_160.112.925.848.156.74"
// AUTO-DISABLED (SUSHI R6): * status = #completed
// AUTO-DISABLED (SUSHI R6): * subject = ExamplePatientReference
// AUTO-DISABLED (SUSHI R6): * whenHandedOver = "2025-10-19"
// AUTO-DISABLED (SUSHI R6): * substitution
  // AUTO-DISABLED (SUSHI R6): * wasSubstituted = false
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(COTRIM)
// AUTO-DISABLED (SUSHI R6): * performer.actor = Reference(GematikApotheke)
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * type
      // AUTO-DISABLED (SUSHI R6): // * coding.version = "2.9.0"
      // AUTO-DISABLED (SUSHI R6): * coding = $v2-0203#PRN "Provider number"
    // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-telematik-id
    // AUTO-DISABLED (SUSHI R6): * value = $GematikApotheke-TelematikID
  // AUTO-DISABLED (SUSHI R6): * insert GematikApotheke-display
// AUTO-DISABLED (SUSHI R6): * authorizingPrescription = Reference(COTRIM_Request)


// MedicationStatement =================

// AUTO-DISABLED (SUSHI R6): Instance: COTRIM_LINKING_NOT_SUCCESSFUL_Information
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationStatementR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationStatementInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "ab495b80-c9d2-4ed6-a076-b44b8dfae75a"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-10-19T14:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.112.925.848.156.74_20251019"
// AUTO-DISABLED (SUSHI R6): * extension[context].valueCode = #PRESCRIPTION
// AUTO-DISABLED (SUSHI R6): * extension[processingEvent]
  // AUTO-DISABLED (SUSHI R6): * extension[event].valueCode = #LINKING_NOT_SUCCESSFUL
  // AUTO-DISABLED (SUSHI R6): * extension[dateTime].valueDateTime = "2025-10-19T14:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * status = #unknown
// AUTO-DISABLED (SUSHI R6): * subject = ExamplePatientReference
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(COTRIM)
// AUTO-DISABLED (SUSHI R6): * derivedFrom[+] = Reference(COTRIM_Request)
// AUTO-DISABLED (SUSHI R6): * derivedFrom[+] = Reference(COTRIM_Dispense)
// AUTO-DISABLED (SUSHI R6): * dateAsserted = "2025-10-19"
// AUTO-DISABLED (SUSHI R6): // * effectiveDateTime = "2025-10-19"
// AUTO-DISABLED (SUSHI R6): * effectivePeriod
  // AUTO-DISABLED (SUSHI R6): * start = "2025-10-19"
// AUTO-DISABLED (SUSHI R6): * dosage[+]
  // AUTO-DISABLED (SUSHI R6): * text = "morgens und abends 1 Messlöffel"


Instance: COTRIM_Information_Provenance
InstanceOf: EPAActivityProvenance
Usage: #example
* insert EPAActivityProvenanceInstanceMeta
* id = "b5ad3b05-1174-415f-8f43-555160862b25"
* activity = $v3-DataOperation#UPDATE
* agent
  * type = $provenance-participant-type#author
  * who = MedicationSvcIdentifier
* target[+] = Reference(MedicationStatement/ab495b80-c9d2-4ed6-a076-b44b8dfae75a/_history/2)
* recorded =  "2025-10-19T14:43:33.244Z"
