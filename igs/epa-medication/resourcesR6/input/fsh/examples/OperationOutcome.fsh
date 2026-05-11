Instance: ExpOperationOutcomeSuccess
InstanceOf: EPAMSOperationOutcomeR6
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "255002c7-aa1b-4163-bdd4-ede482453cca"
* issue
  * severity = #information
  * code = #informational
  * details = EPAMSOperationOutcomeDetailsCS#MEDSVC_OPERATION_SUCCESS "Operation Successfully Completed in Medication Service"


Instance: ExpOperationOutcomeNoValidStructure
InstanceOf: EPAMSOperationOutcomeR6
Description: "Invalid Data Structure in Medication Service"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "2b34898e-a9d1-4fa6-9959-5ff6033cfcb0"
* issue
  * severity = #error
  * code = #invalid
  * details = EPAMSOperationOutcomeDetailsCS#MEDSVC_NO_VALID_STRUCTURE "Invalid Data Structure in Medication Service"

Instance: ExpOperationOutcomeNoValidStructureWithDiagnostics
InstanceOf: EPAMSOperationOutcomeR6
Description: "Invalid Data Structure in Medication Service"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "0a30eb5d-289f-44cf-a0bd-ec4ec38edaa8"
* issue
  * severity = #error
  * code = #invalid
  * details = EPAMSOperationOutcomeDetailsCS#MEDSVC_NO_VALID_STRUCTURE "Invalid Data Structure in Medication Service"
  * diagnostics = """
    Parameters.parameter[0] | Slice 'Parameters.parameter:rxPrescription.part:authoredOn': minimum required = 1, but only found 0 (from https://gematik.de/fhir/epa-medication/StructureDefinition/epa-op-provide-prescription-erp-input-parameters|1.1.5);
    Parameters.parameter[0] | Parameters.parameter:rxPrescription.part: minimum required = 6, but only found 5 (from https://gematik.de/fhir/epa-medication/StructureDefinition/epa-op-provide-prescription-erp-input-parameters|1.1.5);
    """


Instance: ExpOperationOutcomePrescriptionNotFound
InstanceOf: EPAMSOperationOutcomeR6
Description: "Prescription Not Found in Medication Service"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "fc3e8ea4-41ec-4de2-906e-97871b34adcb"
* issue
  * severity = #error
  * code = #processing
  * details = EPAMSOperationOutcomeDetailsCS#MEDSVC_PRESCRIPTION_NO_EXIST "Prescription Not Found in Medication Service"


Instance: ExpOperationOutcomeDuplicatePrescriptionDetected
InstanceOf: EPAMSOperationOutcomeR6
Description: "Duplicate Prescription Detected in Medication Service"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "ee1e0518-02f2-4d3a-99ae-bae8e91c382d"
* issue
  * severity = #error
  * code = #duplicate
  * details = EPAMSOperationOutcomeDetailsCS#MEDSVC_PRESCRIPTION_DUPLICATE "Duplicate Prescription Detected in Medication Service"


Instance: ExpOperationOutcomeNotPermittedCurrentPrescriptionStatus
InstanceOf: EPAMSOperationOutcomeR6
Description: "Operation Not Permitted on Current Prescription Status"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "bef62761-7eea-4daa-a992-36c532232679"
* issue
  * severity = #error
  * code = #processing
  * details = EPAMSOperationOutcomeDetailsCS#MEDSVC_PRESCRIPTION_STATUS "Operation Not Permitted on Current Prescription Status"


Instance: ExpOperationOutcomeOperationDispensationNotFound
InstanceOf: EPAMSOperationOutcomeR6
Description: "Dispensation Not Found in Medication Service"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "c03670fe-eaf2-4a38-a333-4dc1470072a2"
* issue
  * severity = #error
  * code = #not-found
  * details = EPAMSOperationOutcomeDetailsCS#MEDSVC_DISPENSATION_NO_EXIST "Dispensation Not Found in Medication Service"


Instance: ExpOperationOutcomeNotPermittedonCurrentDispensationStatus
InstanceOf: EPAMSOperationOutcomeR6
Description: "Operation Not Permitted on Current Dispensation Status"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "a94b020a-2f34-4013-83ea-cf1bd0a92cdd"
* issue
  * severity = #error
  * code = #processing
  * details = EPAMSOperationOutcomeDetailsCS#MEDSVC_DISPENSATION_STATUS "Operation Not Permitted on Current Dispensation Status"


Instance: ExpOperationOutcomeUnresolvedReferenceinParameters
InstanceOf: EPAMSOperationOutcomeR6
Description: "Unresolved Reference in Parameters"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "e730e451-3a44-4842-a8ed-1517a3334465"
* issue
  * severity = #error
  * code = #processing
  * details = EPAMSOperationOutcomeDetailsCS#MEDSVC_PARAMETERS_REFERENCE_NO_EXIST "Unresolved Reference in Parameters"


Instance: OperationOutcomeEmptyList
InstanceOf: EPAMSOperationOutcomeR6
Description: "Empty list"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "a4da96e5-84d6-4883-8789-5df2e1363c40"
* issue
  * severity = #error
  * code = #processing
  * details = $cs-operation-outcome#MSG_NO_MATCH "No Resource found matching the query \"%s\""
  * diagnostics = "No Resource found matching the query $medication-list"


Instance: OperationOutcomeInvalidRequest
InstanceOf: EPAMSOperationOutcomeR6
Description: "InvalidRequest"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "52c59e99-eba0-4488-b829-39983b9169f5"
* issue
  * severity = #error
  * code = #not-supported
  * details = $cs-operation-outcome#MSG_BAD_FORMAT
  * diagnostics = "Invalid request"


Instance: OperationOutcomeUnknownResourceType
InstanceOf: EPAMSOperationOutcomeR6
Description: "Unknown resource type"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "b29880f0-6c99-4fe2-aae2-007e8cb4d9cf"
* issue
  * severity = #error
  * code = #processing
  * details = $cs-operation-outcome#MSG_UNKNOWN_TYPE
  * diagnostics = "Unknown Resource Type \"Mdication\""


Instance: OperationOutcomeResourceIsNotKnown
InstanceOf: EPAMSOperationOutcomeR6
Description: "Resource is not known"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "98ca7dff-aa8d-47d0-a074-4055f55cb4db"
* issue
  * severity = #error
  * code = #not-found
  * details = $cs-operation-outcome#MSG_RESOURCE_ID_FAIL "unable to allocate resource id"
  * diagnostics = "unable to allocate resource id"


Instance: OperationOutcomeInvalidQueryParameter
InstanceOf: EPAMSOperationOutcomeR6
Description: "Invalid query parameter"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "446e77ff-9fcb-4232-8de3-74986f78d85f"
* issue
  * severity = #error
  * code = #processing
  * details = $cs-operation-outcome#MSG_BAD_SYNTAX
  * diagnostics = "Invalid query parameter(s)"


Instance: OperationOutcomeUnknownSearchParameter
InstanceOf: EPAMSOperationOutcomeR6
Description: "Unknown search parameter"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "dc558008-4fbd-4e51-a16a-0cbc382a529f"
* issue
  * severity = #error
  * code = #processing
  * details = $cs-operation-outcome#MSG_PARAM_UNKNOWN
  * diagnostics = "Unknown search parameter \"test\" for resource type \"Medication\""


Instance: ExpOperationOutcomeOrgHeaderProfileMismatch
InstanceOf: EPAMSOperationOutcomeR6
Description: "Profile mismatch in header Organization"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "41d25882-4a02-47e3-a367-f5b5fe8c8015"
* issue
  * severity = #error
  * code = #invalid
  * details = EPAOperationOutcomeDetailsCS#SVC_ORG_HEADER_PROFILE_MISMATCH "Profile mismatch in header Organization"


Instance: ExpOperationOutcomeDosageInvalid
InstanceOf: EPAMSOperationOutcomeR6
Description: "Invalid dosage structure or content"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "1a5a1db0-7bab-4d25-a43d-3ad1efb29cb5"
* issue
  * severity = #error
  * code = #invalid
  * details = EPAMSOperationOutcomeDetailsCS#MEDSVC_DOSAGE_INVALID "Invalid dosage structure or content"


Instance: ExpOperationOutcomeEMPChronologyIdMismatch
InstanceOf: EPAMSOperationOutcomeR6
Description: "Mismatch between acknowledged and current eMP chronology ID"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "0b476e35-02d5-4fb0-ad60-79f5eb05e2b4"
* issue
  * severity = #error
  * code = #conflict
  * details = EPAMSOperationOutcomeDetailsCS#MEDSVC_EMP_CHRONOLOGY_ID_MISMATCH "Mismatch between acknowledged and current eMP chronology ID"


Instance: ExpOperationOutcomeAlreadyLinked
InstanceOf: EPAMSOperationOutcomeR6
Description: "Already linked to another instance"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "12f5513f-3eef-41ad-baca-826627c890f2"
* issue
  * severity = #error
  * code = #business-rule
  * details = EPAMSOperationOutcomeDetailsCS#MEDSVC_ALREADY_LINKED "Already linked to another instance"


Instance: ExpOperationOutcomeEMPAlreadyExists
InstanceOf: EPAMSOperationOutcomeR6
Description: "eMP entry already exists"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "1e5838dd-ec29-4f68-9739-dfa717db515d"
* issue
  * severity = #error
  * code = #conflict
  * details = EPAMSOperationOutcomeDetailsCS#MEDSVC_EMP_ENTRY_ALREADY_EXISTS "eMP entry already exists"


Instance: ExpOperationOutcomeOpNotAllowed
InstanceOf: EPAMSOperationOutcomeR6
Description: "Operation $update-eml-entry not allowed for resource MedicationStatement"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "e69228bf-6f07-4055-8190-e832d2c670dc"
* issue
  * severity = #error
  * code = #forbidden
  * details = $cs-operation-outcome#MSG_OP_NOT_ALLOWED "Operation %s not allowed for resource %s (due to local configuration)"


Instance: ExpOperationOutcomeVersionAwareConflict
InstanceOf: EPAMSOperationOutcomeR6
Description: "Update Conflict"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "e4f1ed42-7741-40f5-a84e-fd688ac74d3e"
* issue
  * severity = #error
  * code = #conflict
  * details = $cs-operation-outcome#MSG_VERSION_AWARE_CONFLICT
  * diagnostics = "Update Conflict (server current version = 3, client version referenced = 1)"


Instance: ExpOperationOutcomeDeleted
InstanceOf: EPAMSOperationOutcomeR6
Description: "This resource has been deleted"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "0b967346-00bf-412c-8e05-077ed13e873e"
* issue
  * severity = #error
  * code = #processing
  * details = $cs-operation-outcome#MSG_DELETED "This resource has been deleted"
  * diagnostics = "Resource was deleted at 2025-03-10T10:02:27.838+00:00"


Instance: ExpOperationOutcomeEMPLinkingNotSuccessful
InstanceOf: EPAMSOperationOutcomeR6
Description: "eMP linking not successful"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "24b64018-89f4-4a52-8e9c-c0af279c4e86"
* issue
  * severity = #error
  * code = #processing
  * details = EPAMedicationStatementProcessingEventCodeCS#LINKING_NOT_SUCCESSFUL "Fehlerhafte eMP Zuordnung"


Instance: ExpOperationOutcomeEMPUnlinkingNotSuccessful
InstanceOf: EPAMSOperationOutcomeR6
Description: "eMP linking not successful"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "c146f801-8f50-4ca4-8578-514d5938e3c3"
* issue
  * severity = #error
  * code = #processing
  * details = EPAMedicationStatementProcessingEventCodeCS#UNLINKING_NOT_SUCCESSFUL "Fehlerhafte Aufhebung der eMP-Verknüpfung"


Instance: ExpOperationOutcomeOperationOutsideBatch
InstanceOf: EPAMSOperationOutcomeR6
Description: "eMP linking not successful"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "912a5e81-6274-439e-9d79-5172c4855a70"
* issue
  * severity = #error
  * code = #forbidden
  * details = EPAMSOperationOutcomeDetailsCS#MEDSVC_OPERATION_OUTSIDE_BATCH "The operation can only be executed within a batch context"


Instance: OperationOutcomeEMPNoExist
InstanceOf: EPAMSOperationOutcomeR6
Description: "eMP does not exist"
Usage: #example
* insert EPAMSOperationOutcometInstanceMeta
* id = "98ca7dff-aa8d-47d0-a074-4055f55cb4dc"
* issue
  * severity = #error
  * code = #not-found
  * details = EPAMSOperationOutcomeDetailsCS#MEDSVC_EMP_NO_EXIST "eMP does not exist"
  * diagnostics = "eMP does not exist"

