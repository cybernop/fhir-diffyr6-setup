Instance: CancelPrescriptionERPOP
InstanceOf: TIOperationDefinition
Usage: #definition
Title: "Cancel Prescription eRP"
Description: "The Cancel Prescription eRP operation is used by the E-Rezept-Fachdienst to cancel an already issued electronic prescription. This function is applied when a prescription is no longer needed for various reasons, such as changes in medication or errors in the initial issuance. After cancellation by the E-Rezept-Fachdienst, this information is transmitted to the ePA Medication Service, where the prescription is calculations. It can then no longer be used for dispensing medication. This process ensures accuracy and safety in the management of medications."
* insert Meta-Instance
* id = "cancel-prescription-erp-OP"
* name = "cancelPrescription_MedicationSvc"
* kind = #operation
* extension[method][+].valueCode = #POST
* description = "The $cancel-prescription-erp operation is used by the E-Rezept-Fachdienst to cancel an already issued electronic prescription. This function is applied when a prescription is no longer needed for various reasons, such as changes in medication or errors in the initial issuance. After cancellation by the E-Rezept-Fachdienst, this information is transmitted to the ePA Medication Service, where the prescription is calculations. It can then no longer be used for dispensing medication. This process ensures accuracy and safety in the management of medications."
* code = #cancel-prescription-erp
* affectsState = true
* system = true
* type = false
* instance = false
* inputProfile = Canonical(EPAOpCancelPrescriptionERPInputParametersR6)
* outputProfile = Canonical(EPAOpRxPrescriptionERPOutputParametersR6)

// New Rule as of 2025-04-98:  The type 'null' is not allowed for the parameter 'rxPrescription' in the in profile but is in the list of allowed types for the parameter (profile types = )
// 
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