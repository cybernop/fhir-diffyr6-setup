// AUTO-DISABLED (SUSHI R6): Instance: Teratogenic_Request
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "f6b1d9ab-4ff0-405e-8d2d-7a181d9fdbdd"
// AUTO-DISABLED (SUSHI R6): * identifier[RxPrescriptionProcessIdentifierR6].value = "166.112.925.848.156.74_20251019"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "f6b1d9ab-4ff0-405e-8d2d-7a181d9fdbdd_166.112.925.848.156.74"
// AUTO-DISABLED (SUSHI R6): * extension[multiplePrescription].extension[indicator].valueBoolean = false
// AUTO-DISABLED (SUSHI R6): * extension[teratogenic]
  // AUTO-DISABLED (SUSHI R6): * extension[off-label].valueBoolean = false
  // AUTO-DISABLED (SUSHI R6): * extension[childbearing-potential].valueBoolean = true
  // AUTO-DISABLED (SUSHI R6): * extension[security-compliance].valueBoolean = true
  // AUTO-DISABLED (SUSHI R6): * extension[hand-out-information-material].valueBoolean = true
  // AUTO-DISABLED (SUSHI R6): * extension[declaration-of-expertise].valueBoolean = true
// AUTO-DISABLED (SUSHI R6): * intent = #filler-order
// AUTO-DISABLED (SUSHI R6): * status = #completed
// AUTO-DISABLED (SUSHI R6): * authoredOn = "2025-10-19"
// AUTO-DISABLED (SUSHI R6): * subject = ExamplePatientReference
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(1412aa4f-a9ed-45f2-8916-063fee7eb025)
// AUTO-DISABLED (SUSHI R6): * insert Arzt_PractitionerRole_Reference
// AUTO-DISABLED (SUSHI R6): * dispenseRequest.quantity.value = 1
// AUTO-DISABLED (SUSHI R6): * dispenseRequest.quantity.unit = "Packung"
// AUTO-DISABLED (SUSHI R6): * substitution.allowedBoolean = true
// AUTO-DISABLED (SUSHI R6): * dosageInstruction[+]
  // AUTO-DISABLED (SUSHI R6): * text = "morgens 1 Stück"
// AUTO-DISABLED (SUSHI R6): * basedOn
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * system = $sid-medication-plan-identifier
    // AUTO-DISABLED (SUSHI R6): * value = "00000000-0000-0000-0000-000000000000"

Instance: 1412aa4f-a9ed-45f2-8916-063fee7eb025
InstanceOf: EPAMedicationR6
Usage: #example
* insert EPAMedicationInstanceMeta
* extension[type].valueCoding = $sct#763158003
// "Medicinal product (product)"
* extension[drugCategory].valueCoding.system = Canonical(EPADrugCategoryCS)
* extension[drugCategory].valueCoding.code = #02
* extension[normSizeCode].valueCode = #N1

* status = #active
* code.coding[pzn] = $cs-pzn#19201712
* code.text = "Pomalidomid Accord 1 mg 21 x 1 Hartkapseln"
// AUTO-DISABLED (SUSHI R6): * form.coding[kbvDarreichungsform] = $cs-kbv-medication-darreichungsform#HKP
* ingredient[+]
  // AUTO-DISABLED (SUSHI R6): * itemCodeableConcept.text = "Pomalidomid"
  // AUTO-DISABLED (SUSHI R6): * strength
    // AUTO-DISABLED (SUSHI R6): * numerator
      // AUTO-DISABLED (SUSHI R6): * value = 1
      // AUTO-DISABLED (SUSHI R6): * unit = "mg"
    // AUTO-DISABLED (SUSHI R6): * denominator
      // AUTO-DISABLED (SUSHI R6): * value = 1
      // AUTO-DISABLED (SUSHI R6): * unit = "Stück"
