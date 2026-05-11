Instance: CancelDispensationERPOP
InstanceOf: TIOperationDefinition
Usage: #definition
Title: "Cancel Dispensation eRP"
Description: "The Cancel Dispensation eRP operation, used by the E-Rezept-Fachdienst, in the context of the ePA Medication Service, is applied to cancel or reverse information regarding the dispensation of a medication. This operation is necessary when a medication dispensation is cancelled by a pharmacist or when there is a return of the medication by the insurant. After the E-Rezept-Fachdienst performs this operation, the corresponding dispensation entry for the medication in the patient's ePA is marked as cancelled, which the goal in ensuring an accurate and up-to-date record of the patient's medication data."
* insert Meta-Instance

* id = "cancel-dispensation-erp-OP"
* name = "cancelDispensation_MedicationSvc"
* kind = #operation
* extension[method][+].valueCode = #POST
* description = "The Cancel Dispensation eRP operation, used by the E-Rezept-Fachdienst, in the context of the ePA Medication Service, is applied to cancel or reverse information regarding the dispensation of a medication. This operation is necessary when a medication dispensation is cancelled by a pharmacist or when there is a return of the medication by the insurant. After the E-Rezept-Fachdienst performs this operation, the corresponding dispensation entry for the medication in the patient's ePA is marked as cancelled, which the goal in ensuring an accurate and up-to-date record of the patient's medication data."
* code = #cancel-dispensation-erp
* affectsState = true
* system = true
* type = false
* instance = false
* inputProfile = Canonical(EPAOpCancelDispensationERPInputParametersR6)
* outputProfile = Canonical(EPAOpRxDispensationERPOutputParametersR6)

// New Rule as of 2025-04-98:  The type 'null' is not allowed for the parameter 'rxPrescription' in the in profile but is in the list of allowed types for the parameter (profile types = )

// * parameter[+]
//   * name = #rxDispensation
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
//   * name = #rxDispensation
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