RuleSet: L-Thyroxin_Content
* extension[type].valueCoding = $sct#763158003
// "Medicinal product"
* extension[drugCategory].valueCoding.system = Canonical(EPADrugCategoryCS)
* extension[drugCategory].valueCoding.code = #00
* extension[normSizeCode].valueCode = #N3
* extension[isVaccine].valueBoolean = false
* status = #active
* code.coding[pzn] = $cs-pzn#02532741
* code.text = "L-Thyroxin Henning 75 100 Tbl. N3"
// AUTO-DISABLED (SUSHI R6): * form.coding[kbvDarreichungsform] = $cs-kbv-medication-darreichungsform#TAB
* ingredient[+]
  * itemCodeableConcept.coding[ask]
    // AUTO-DISABLED (SUSHI R6): * system = $cs-ask
    // AUTO-DISABLED (SUSHI R6): * code = #07511
  // AUTO-DISABLED (SUSHI R6): * itemCodeableConcept.text = "Levothyroxin natrium"
  * strength
    * numerator
      // AUTO-DISABLED (SUSHI R6): * value = 0.074999999999999997
      // AUTO-DISABLED (SUSHI R6): * unit = "mg"
    * denominator
      // AUTO-DISABLED (SUSHI R6): * value = 1
      // AUTO-DISABLED (SUSHI R6): * unit = "Tbl."


Instance: Inline_L-Thyroxin
InstanceOf: EPAMedicationR6
Usage: #inline
* insert EPAMedicationInstanceMeta
* id = "94f9bf5d-1c15-469f-8db6-c6e3d973467f"
* insert L-Thyroxin_Content


Instance: L-Thyroxin_MV_1
InstanceOf: EPAMedicationR6
Usage: #example
* insert EPAMedicationInstanceMeta
* id = "deecd514-235d-41df-a664-e3672208f410"
* meta
  * versionId = "2"
  * lastUpdated = "2025-10-29T14:45:00.244Z"
* extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.010.12_20251027"
* identifier[EPAMedicationUniqueIdentifierR6].value = "04634188758173B936C49DD0952A21B9B94544548FFDAFB347F12E710F62EEB4"
* identifier[RxOriginatorProcessIdentifierR6].value = "94f9bf5d-1c15-469f-8db6-c6e3d973467f_160.100.000.000.010.12"
* insert L-Thyroxin_Content


Instance: L-Thyroxin_MV_2
InstanceOf: EPAMedicationR6
Usage: #example
* insert EPAMedicationInstanceMeta
* id = "a2aa2baf-c37d-40e0-bff5-f6e8a58dc2c3"
* meta
  * versionId = "1"
  * lastUpdated = "2025-10-27T12:00:01.244Z"
* extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.015.94_20251027"
* identifier[EPAMedicationUniqueIdentifierR6].value = "04634188758173B936C49DD0952A21B9B94544548FFDAFB347F12E710F62EEB4"
* identifier[RxOriginatorProcessIdentifierR6].value = "94f9bf5d-1c15-469f-8db6-c6e3d973467f_160.100.000.000.015.94"
* insert L-Thyroxin_Content
* status = #inactive


Instance: L-Thyroxin_MV_3
InstanceOf: EPAMedicationR6
Usage: #example
* insert EPAMedicationInstanceMeta
* id = "83d7ad1c-47d1-4524-829a-5b86ce333bbc"
* meta
  * versionId = "1"
  * lastUpdated = "2025-10-27T12:00:02.244Z"
* extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.016.91_20251027"
* identifier[EPAMedicationUniqueIdentifierR6].value = "04634188758173B936C49DD0952A21B9B94544548FFDAFB347F12E710F62EEB4"
* identifier[RxOriginatorProcessIdentifierR6].value = "94f9bf5d-1c15-469f-8db6-c6e3d973467f_160.100.000.000.016.91"
* insert L-Thyroxin_Content
* status = #inactive


Instance: L-Thyroxin_MV_4
InstanceOf: EPAMedicationR6
Usage: #example
* insert EPAMedicationInstanceMeta
* id = "659c0be1-2ec8-4137-9698-dcffee811934"
* meta
  * versionId = "1"
  * lastUpdated = "2025-10-27T12:00:05.244Z"
* extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.017.88_20251027"
* identifier[EPAMedicationUniqueIdentifierR6].value = "04634188758173B936C49DD0952A21B9B94544548FFDAFB347F12E710F62EEB4"
* identifier[RxOriginatorProcessIdentifierR6].value = "94f9bf5d-1c15-469f-8db6-c6e3d973467f_160.100.000.000.017.88"
* insert L-Thyroxin_Content
* status = #inactive




// MedicationRequest =======================

RuleSet: L-Thyroxin_Request_Content
* extension[multiplePrescription]
  * extension[indicator].valueBoolean = true
  * extension[counter].valueRatio.numerator.value = 1
  * extension[counter].valueRatio.denominator.value = 4
  * extension[period].valuePeriod.start = "2025-10-27"
  * extension[period].valuePeriod.end = "2025-12-31"
  * extension[id].valueIdentifier.system = "urn:ietf:rfc:3986"
  * extension[id].valueIdentifier.value = "urn:uuid:24e2e10d-e962-4d1c-be4f-8760e690a5f0"
* status = #active
* intent = #filler-order
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(L-Thyroxin_MV_1)
* subject = ExamplePatientReference
* authoredOn = "2025-10-27"
* dispenseRequest.quantity.value = 1
* dispenseRequest.quantity.unit = "Packung"
* substitution.allowedBoolean = false


// AUTO-DISABLED (SUSHI R6): Instance: L-Thyroxin_Request_MV_1
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "ed2eeb8c-9ab6-4f4f-be9d-7e1a3784045e"
// AUTO-DISABLED (SUSHI R6): * insert L-Thyroxin_Request_Content
// AUTO-DISABLED (SUSHI R6): * extension[multiplePrescription]
  // AUTO-DISABLED (SUSHI R6): * extension[counter].valueRatio.numerator.value = 1
  // AUTO-DISABLED (SUSHI R6): * extension[counter].valueRatio.denominator.value = 4
  // AUTO-DISABLED (SUSHI R6): * extension[period].valuePeriod.start = "2025-10-27"
  // AUTO-DISABLED (SUSHI R6): * extension[period].valuePeriod.end = "2025-12-31"
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(L-Thyroxin_MV_1)
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-10-27T14:45:00.244Z"
// AUTO-DISABLED (SUSHI R6): * status = #completed
// AUTO-DISABLED (SUSHI R6): * identifier[RxPrescriptionProcessIdentifierR6].value = "160.100.000.000.010.12_20251027"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "1cbdb2cf-0578-464c-b028-6d1d1a470b02_160.100.000.000.010.12"
// AUTO-DISABLED (SUSHI R6): * insert Arzt_PractitionerRole_Reference


// AUTO-DISABLED (SUSHI R6): Instance: L-Thyroxin_Request_MV_2
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "2a794a78-8a72-46ca-bb81-09f702f94e11"
// AUTO-DISABLED (SUSHI R6): * insert L-Thyroxin_Request_Content
// AUTO-DISABLED (SUSHI R6): * extension[multiplePrescription]
  // AUTO-DISABLED (SUSHI R6): * extension[counter].valueRatio.numerator.value = 2
  // AUTO-DISABLED (SUSHI R6): * extension[counter].valueRatio.denominator.value = 4
  // AUTO-DISABLED (SUSHI R6): * extension[period].valuePeriod.start = "2025-12-15"
  // AUTO-DISABLED (SUSHI R6): * extension[period].valuePeriod.end = "2026-02-28"
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(L-Thyroxin_MV_2)
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-10-27T12:00:02.244Z"
// AUTO-DISABLED (SUSHI R6): * status = #active
// AUTO-DISABLED (SUSHI R6): * identifier[RxPrescriptionProcessIdentifierR6].value = "160.100.000.000.015.94_20251027"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "68794d6d-2b05-4d5e-aaf1-49b4b6430104_160.100.000.000.015.94"
// AUTO-DISABLED (SUSHI R6): * insert Arzt_PractitionerRole_Reference


// AUTO-DISABLED (SUSHI R6): Instance: L-Thyroxin_Request_MV_3
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "0435e19e-ed9a-4b5b-a9e9-70924c5922a0"
// AUTO-DISABLED (SUSHI R6): * insert L-Thyroxin_Request_Content
// AUTO-DISABLED (SUSHI R6): * extension[multiplePrescription]
  // AUTO-DISABLED (SUSHI R6): * extension[counter].valueRatio.numerator.value = 3
  // AUTO-DISABLED (SUSHI R6): * extension[counter].valueRatio.denominator.value = 4
  // AUTO-DISABLED (SUSHI R6): * extension[period].valuePeriod.start = "2026-02-15"
  // AUTO-DISABLED (SUSHI R6): * extension[period].valuePeriod.end = "2026-04-30"
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(L-Thyroxin_MV_3)
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-10-27T12:00:03.244Z"
// AUTO-DISABLED (SUSHI R6): * status = #active
// AUTO-DISABLED (SUSHI R6): * identifier[RxPrescriptionProcessIdentifierR6].value = "160.100.000.000.016.91_20251027"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "68794d6d-2b05-4d5e-aaf1-49b4b6430104_160.100.000.000.016.91"
// AUTO-DISABLED (SUSHI R6): * insert Arzt_PractitionerRole_Reference


// AUTO-DISABLED (SUSHI R6): Instance: L-Thyroxin_Request_MV_4
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "3ffb5c34-81e7-45ec-842c-82a2422cb8c8"
// AUTO-DISABLED (SUSHI R6): * insert L-Thyroxin_Request_Content
// AUTO-DISABLED (SUSHI R6): * extension[multiplePrescription]
  // AUTO-DISABLED (SUSHI R6): * extension[counter].valueRatio.numerator.value = 4
  // AUTO-DISABLED (SUSHI R6): * extension[counter].valueRatio.denominator.value = 4
  // AUTO-DISABLED (SUSHI R6): * extension[period].valuePeriod.start = "2026-04-01"
  // AUTO-DISABLED (SUSHI R6): * extension[period].valuePeriod.end = "2026-06-30"
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(L-Thyroxin_MV_4)
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-10-27T12:00:06.244Z"
// AUTO-DISABLED (SUSHI R6): * status = #active
// AUTO-DISABLED (SUSHI R6): * identifier[RxPrescriptionProcessIdentifierR6].value = "160.100.000.000.017.88_20251027"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "68794d6d-2b05-4d5e-aaf1-49b4b6430104_160.100.000.000.017.88"
// AUTO-DISABLED (SUSHI R6): * insert Arzt_PractitionerRole_Reference


// MedicationDispense =================

RuleSet: L-Thyroxin_Dispense_Content
* status = #completed
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(L-Thyroxin_MV_1)
* subject = ExamplePatientReference
* whenHandedOver = "2025-10-29"
* substitution
  * wasSubstituted = false


// AUTO-DISABLED (SUSHI R6): Instance: L-Thyroxin_Dispense_MV_1
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationDispenseR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationDispenseInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "f7240e05-01a1-4ce6-a8bb-edb71b6b5104"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-10-29T14:44:00.244Z"
// AUTO-DISABLED (SUSHI R6): * extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.010.12_20251027"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "3a534e48-80e8-4bbb-a19e-43e83d6f3a3e_160.100.000.000.010.12"
// AUTO-DISABLED (SUSHI R6): * insert L-Thyroxin_Dispense_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(L-Thyroxin_MV_1)
// AUTO-DISABLED (SUSHI R6): * performer.actor = Reference(GematikApotheke)
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * type
      // AUTO-DISABLED (SUSHI R6): // * coding.version = "2.9.0"
      // AUTO-DISABLED (SUSHI R6): * coding = $v2-0203#PRN "Provider number"
    // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-telematik-id
    // AUTO-DISABLED (SUSHI R6): * value = $GematikApotheke-TelematikID
  // AUTO-DISABLED (SUSHI R6): * insert GematikApotheke-display
// AUTO-DISABLED (SUSHI R6): * authorizingPrescription = Reference(L-Thyroxin_Request_MV_1)
// AUTO-DISABLED (SUSHI R6): * quantity.value = 1
// AUTO-DISABLED (SUSHI R6): * quantity.unit = "Packung"


// MedicationStatement =================

// AUTO-DISABLED (SUSHI R6): Instance: L-Thyroxin_Information_MV_1
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationStatementR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationStatementInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "133c8159-6398-4937-984a-d741e24556ad"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-10-29T14:44:00.244Z"
// AUTO-DISABLED (SUSHI R6): * extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.007.24_20250525"
// AUTO-DISABLED (SUSHI R6): * extension[context].valueCode = #PRESCRIPTION
// AUTO-DISABLED (SUSHI R6): * status = #unknown
// AUTO-DISABLED (SUSHI R6): * subject = ExamplePatientReference
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(L-Thyroxin_MV_1)
// AUTO-DISABLED (SUSHI R6): * derivedFrom[+] = Reference(L-Thyroxin_Request_MV_1)
// AUTO-DISABLED (SUSHI R6): * derivedFrom[+] = Reference(L-Thyroxin_Dispense_MV_1)
// AUTO-DISABLED (SUSHI R6): * dateAsserted = "2025-05-25"
// AUTO-DISABLED (SUSHI R6): // * effectiveDateTime = "2025-05-29"
// AUTO-DISABLED (SUSHI R6): * effectivePeriod
  // AUTO-DISABLED (SUSHI R6): * start = "2025-05-29"



Instance: L-Thyroxin_Information_Provenance
InstanceOf: EPAActivityProvenance
Usage: #example
* insert EPAActivityProvenanceInstanceMeta
* id = "850ef590-34ff-469a-8c0d-13b6751a029b"
* activity = $v3-DataOperation#UPDATE
* agent
  * type = $provenance-participant-type#author
  * who = MedicationSvcIdentifier
* target[+] = Reference(MedicationStatement/133c8159-6398-4937-984a-d741e24556ad/_history/2)
* recorded = "2025-10-29T14:44:00.244Z"
