Instance: ProvideDispensationERPOP
InstanceOf: TIOperationDefinition
Usage: #definition
Title: "Provide Dispensation eRP"
Description: "The Provide Dispensation eRP operation in the ePA Medication Service is used to record information about the dispensing of medications based on an electronic prescription in the patient's record. This operation comes into play when a patient receives their medication from a pharmacy. It documents that the medication has been dispensed as per the prescription, including details like the quantity, date of dispensing, and pharmacy information. This helps maintain a comprehensive overview of the patient's medication history."
* insert Meta-Instance

* id = "provide-dispensation-erp-OP"
* name = "provideDispensation_MedicationSvc"
* kind = #operation
* extension[method][+].valueCode = #POST
* description = "The Provide Dispensation eRP operation in the ePA Medication Service is used to record information about the dispensing of medications based on an electronic prescription in the patient's record. This operation comes into play when a patient receives their medication from a pharmacy. It documents that the medication has been dispensed as per the prescription, including details like the quantity, date of dispensing, and pharmacy information. This helps maintain a comprehensive overview of the patient's medication history."
* code = #provide-dispensation-erp
* affectsState = true
* system = true
* type = false
* instance = false
* inputProfile = Canonical(EPAOpProvideDispensationERPInputParametersR6)
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
//   * part[+]
//     * name = #medicationDispense
//     * type = #MedicationDispense
//     * use = #in
//     * min = 1
//     * max = "*"
//   * part[+]
//     * name = #medication
//     * type = #Medication
//     * targetProfile = Canonical(EPAMedicationR6)
//     * use = #in
//     * min = 1
//     * max = "*"
//   * part[+]
//     * name = #organization
//     * type = #Organization
//     * targetProfile = Canonical(OrganizationDirectory)
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