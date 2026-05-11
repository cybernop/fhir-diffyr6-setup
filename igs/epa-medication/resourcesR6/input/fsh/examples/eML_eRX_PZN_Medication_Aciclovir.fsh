RuleSet: Aciclovir_Content
* extension[type].valueCoding = $sct#763158003
// "Medicinal product (product)"
* extension[drugCategory].valueCoding.system = Canonical(EPADrugCategoryCS)
* extension[drugCategory].valueCoding.code = #00
* extension[normSizeCode].valueCode = #N1
* extension[isVaccine].valueBoolean = false
* status = #active
* code.coding[pzn] = $cs-pzn#08671219
* code.text = "Aciclovir 800 - 1 A Pharma® 35 Tbl. N1"
// AUTO-DISABLED (SUSHI R6): * form.coding[kbvDarreichungsform] = $cs-kbv-medication-darreichungsform#TAB
* ingredient[+]
  * itemCodeableConcept.coding[ask]
    // AUTO-DISABLED (SUSHI R6): * system = $cs-ask
    // AUTO-DISABLED (SUSHI R6): * code = #21906
  // AUTO-DISABLED (SUSHI R6): * itemCodeableConcept.text = "Aciclovir"
  * strength
    * numerator
      // AUTO-DISABLED (SUSHI R6): * value = 800
      // AUTO-DISABLED (SUSHI R6): * unit = "mg"
    * denominator
      // AUTO-DISABLED (SUSHI R6): * value = 1
      // AUTO-DISABLED (SUSHI R6): * unit = "Tbl."


Instance: Inline_Aciclovir
InstanceOf: EPAMedicationR6
Usage: #inline
* insert EPAMedicationInstanceMeta
* id = "6c05f9f7-9722-40e2-a314-4d45b4da8b12"
* insert Aciclovir_Content


Instance: Aciclovir
InstanceOf: EPAMedicationR6
Usage: #example
* insert EPAMedicationInstanceMeta
* id = "312d581c-f5e7-4faa-9de5-c4e1568c6db2"
* meta
  * versionId = "2"
  * lastUpdated = "2025-08-22T14:45:00.244Z"
* extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.014.97_20250821"
* identifier[EPAMedicationUniqueIdentifierR6].value = "87AF94E0D43C291C57F286BD7EE360E305CA117B580BC7C153418AF0C83A7666"
* identifier[RxOriginatorProcessIdentifierR6].value = "6c05f9f7-9722-40e2-a314-4d45b4da8b12_160.100.000.000.014.97"
* insert Aciclovir_Content


// MedicationRequest =======================

RuleSet: Aciclovir_Request_Content
* extension[multiplePrescription].extension[indicator].valueBoolean = false
* status = #active
* intent = #filler-order
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Aciclovir)
* subject = ExamplePatientReference
* authoredOn = "2025-08-21"
* dispenseRequest.quantity.value = 1
* dispenseRequest.quantity.unit = "Packung"
* substitution.allowedBoolean = true


// AUTO-DISABLED (SUSHI R6): Instance: Inline_Aciclovir_Request
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "daf6b2a0-ae87-460c-9b4a-99aa6da48453"
// AUTO-DISABLED (SUSHI R6): * insert Aciclovir_Request_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Inline_Aciclovir)


// AUTO-DISABLED (SUSHI R6): Instance: Aciclovir_Request
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "6461edff-13ec-4dc7-b9f3-aea66bcb0643"
// AUTO-DISABLED (SUSHI R6): * insert Aciclovir_Request_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Aciclovir)
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-08-22T14:45:00.244Z"
// AUTO-DISABLED (SUSHI R6): * status = #completed
// AUTO-DISABLED (SUSHI R6): * identifier[RxPrescriptionProcessIdentifierR6].value = "160.100.000.000.014.97_20250821"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "daf6b2a0-ae87-460c-9b4a-99aa6da48453_160.100.000.000.014.97"
// AUTO-DISABLED (SUSHI R6): * insert Arzt_PractitionerRole_Reference


// MedicationDispense =================

RuleSet: Aciclovir_Dispense_Content
* status = #completed
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Aciclovir)
* subject = ExamplePatientReference
* whenHandedOver = "2025-08-22"
* substitution
  * wasSubstituted = false

// AUTO-DISABLED (SUSHI R6): Instance: Inline_Aciclovir_Dispense
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationDispenseR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationDispenseInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "af53f96d-9084-4c99-ae67-b2be27fdcc2a"
// AUTO-DISABLED (SUSHI R6): * insert Aciclovir_Dispense_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Inline_Aciclovir)
// AUTO-DISABLED (SUSHI R6): * performer.actor = Reference(InlineGematikApotheke)
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * type
      // AUTO-DISABLED (SUSHI R6): // * coding.version = "2.9.0"
      // AUTO-DISABLED (SUSHI R6): * coding = $v2-0203#PRN "Provider number"
    // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-telematik-id
    // AUTO-DISABLED (SUSHI R6): * value = $GematikApotheke-TelematikID
  // AUTO-DISABLED (SUSHI R6): * insert GematikApotheke-display


// AUTO-DISABLED (SUSHI R6): Instance: Aciclovir_Dispense
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationDispenseR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationDispenseInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "b2911d1e-fc63-47bb-8887-63b701bc49c4"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-08-22T14:44:00.244Z"
// AUTO-DISABLED (SUSHI R6): * extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.014.97_20250821"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "af53f96d-9084-4c99-ae67-b2be27fdcc2a_160.100.000.000.014.9"
// AUTO-DISABLED (SUSHI R6): * insert Aciclovir_Dispense_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Aciclovir)
// AUTO-DISABLED (SUSHI R6): * performer.actor = Reference(GematikApotheke)
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * type
      // AUTO-DISABLED (SUSHI R6): // * coding.version = "2.9.0"
      // AUTO-DISABLED (SUSHI R6): * coding = $v2-0203#PRN "Provider number"
    // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-telematik-id
    // AUTO-DISABLED (SUSHI R6): * value = $GematikApotheke-TelematikID
  // AUTO-DISABLED (SUSHI R6): * insert GematikApotheke-display
// AUTO-DISABLED (SUSHI R6): * authorizingPrescription = Reference(Aciclovir_Request)


// MedicationStatement =================

// AUTO-DISABLED (SUSHI R6): Instance: Aciclovir_Information
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationStatementR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationStatementInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "cfb84928-15d6-468c-8e17-e77f1ed44904"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-08-22T14:44:00.244Z"
// AUTO-DISABLED (SUSHI R6): * extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.014.97_20250821"
// AUTO-DISABLED (SUSHI R6): * extension[context].valueCode = #PRESCRIPTION
// AUTO-DISABLED (SUSHI R6): * status = #unknown
// AUTO-DISABLED (SUSHI R6): * subject = ExamplePatientReference
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Aciclovir)
// AUTO-DISABLED (SUSHI R6): * derivedFrom[+] = Reference(Aciclovir_Request)
// AUTO-DISABLED (SUSHI R6): * derivedFrom[+] = Reference(Aciclovir_Dispense)
// AUTO-DISABLED (SUSHI R6): * dateAsserted = "2025-08-21"
// AUTO-DISABLED (SUSHI R6): // * effectiveDateTime = "2025-08-22"
// AUTO-DISABLED (SUSHI R6): * effectivePeriod
  // AUTO-DISABLED (SUSHI R6): * start = "2025-08-22"


Instance: Aciclovir_Information_Provenance
InstanceOf: EPAActivityProvenance
Usage: #example
* insert EPAActivityProvenanceInstanceMeta
* id = "f2e5c91f-4aed-484f-b313-7332ac2677c8"
* activity = $v3-DataOperation#UPDATE
* agent
  * type = $provenance-participant-type#author
  * who = MedicationSvcIdentifier
* target[+] = Reference(MedicationStatement/cfb84928-15d6-468c-8e17-e77f1ed44904/_history/2)
* recorded = "2025-08-22T14:44:00.244Z"
