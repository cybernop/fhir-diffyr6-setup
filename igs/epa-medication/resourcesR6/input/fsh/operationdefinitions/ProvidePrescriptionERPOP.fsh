Instance: ProvidePrescriptionERPOP
InstanceOf: TIOperationDefinition
Usage: #definition
Title: "Provide Prescription eRP"
Description: "The Provide Prescription eRP operation in the ePA MedicationService is used to add electronic prescriptions to a patient's record. These prescriptions are already made by the E-Rezept-Fachdienst. This operation does not create new patient prescriptions; it just puts the ones made by the E-Rezept-Fachdienst into the patient's ePA, making sure they are stored safely and can be easily accessed."
* insert Meta-Instance

* id = "provide-prescription-erp-OP"
* name = "providePrescription_MedicationSvc"
* kind = #operation
* extension[method][+].valueCode = #POST
* description = "The Provide Prescription eRP operation in the ePA MedicationService is used to add electronic prescriptions to a patient's record. These prescriptions are already made by the E-Rezept-Fachdienst. This operation does not create new patient prescriptions; it just puts the ones made by the E-Rezept-Fachdienst into the patient's ePA, making sure they are stored safely and can be easily accessed."
* code = #provide-prescription-erp
* affectsState = true
* system = true
* type = false
* instance = false
* inputProfile = Canonical(EPAOpProvidePrescriptionERPInputParametersR6)
* outputProfile = Canonical(EPAOpRxPrescriptionERPOutputParametersR6)

// New Rule as of 2025-04-98:  The type 'null' is not allowed for the parameter 'rxPrescription' in the in profile but is in the list of allowed types for the parameter (profile types = )

// * parameter[+]
//   * name = #rxPrescription
//   * use = #in
//   * min = 1
//   * max = "*"
//   * part[+]
//     * name = #prescriptionId
//     * type = #Identifier
//     * use = #in
//     * min = 1
//     * max = "1"
//   * part[+]
//     * name = #authoredOn
//     * type = #date
//     * use = #in
//     * min = 1
//     * max = "1"
//   * part[+]
//     * name = #medicationRequest
//     * type = #MedicationRequest
//     * targetProfile = Canonical(EPAMedicationRequestR6)
//     * use = #in
//     * min = 1
//     * max = "1"
//   * part[+]
//     * name = #medication
//     * type = #Medication
//     * targetProfile = Canonical(EPAMedicationDispenseR6)
//     * use = #in
//     * min = 1
//     * max = "1"
//   * part[+]
//     * name = #organization
//     * type = #Organization
//     * targetProfile = Canonical(OrganizationDirectory)
//     * use = #in
//     * min = 1
//     * max = "1"
//   * part[+]
//     * name = #practitioner
//     * type = #Practitioner
//     * targetProfile = Canonical(PractitionerDirectory)
//     * use = #in
//     * min = 1
//     * max = "1"
// * parameter[+]
//   * name = #rxPrescription
//   * use = #out
//   * min = 1
//   * max = "*"
//   * part[+]
//     * name = #prescriptionId
//     * type = #Identifier
//     * use = #out
//     * min = 1
//     * max = "1"
//   * part[+]
//     * name = #authoredOn
//     * type = #date
//     * use = #out
//     * min = 1
//     * max = "1"
//   * part[+]
//     * name = #operationOutcome
//     * type = #OperationOutcome
//     * targetProfile = Canonical(EPAMSOperationOutcomeR6)
//     * use = #out
//     * min = 1
//     * max = "1"