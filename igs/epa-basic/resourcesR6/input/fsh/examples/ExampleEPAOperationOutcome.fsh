Instance: ExpEPAOperationOutcomeIdentityMismatch
InstanceOf: TIOperationOutcome
Description: "Identity Mismatch"
Usage: #example
* insert TIOperationOutcomeInstanceMeta
* id = "ad48bf90-a664-44f4-af14-ee6e81db3df4"
* issue
  * severity = #error
  * code = #forbidden
  * details = TIOperationOutcomeDetailsCS#SVC_IDENTITY_MISMATCH "Identity mismatch: Access token or x-insurantid header does not match FHIR data (Telematik-ID / KVNR)"


Instance: ExpEPAOperationPreconditionFailed
InstanceOf: TIOperationOutcome
Description: "Precondition Failed, wenn mehrere Ressourceninstanz gefunden wurden"
Usage: #example
* insert TIOperationOutcomeInstanceMeta
* id = "bf47037d-2f98-4ee1-9675-cab7dd8635df"
* issue
  * severity = #error
  * code = #processing
  * details = $cs-operation-outcome#UPDATE_MULTIPLE_MATCHES "Error: Multiple matches exist for the conditional update"


Instance: ExpEPAOperationOutcomeOrgHeaderProfileMismatch
InstanceOf: TIOperationOutcome
Description: "Profile mismatch in header Organization"
Usage: #example
* insert TIOperationOutcomeInstanceMeta
* id = "3e5635b7-5546-4b2b-8509-a138652985e7"
* issue
  * severity = #error
  * code = #invalid
  * details = EPAOperationOutcomeDetailsCS#SVC_ORG_HEADER_PROFILE_MISMATCH "Profile mismatch in header Organization"


Instance: ExpEPAOperationOutcomeUnprocessableEntity
InstanceOf: TIOperationOutcome
Description: "Unprocessable Entity"
Usage: #example
* insert TIOperationOutcomeInstanceMeta
* id = "72c7abbf-51c5-4647-846e-7c5af57e2105"
* issue
  * severity = #error
  * code = #invalid
