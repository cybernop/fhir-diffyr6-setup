// AUTO-DISABLED (SUSHI R6): Instance: ExpEPAOpAddEMPEntryInputParameters
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAOpAddEMPEntryInputParametersR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert InstanceMetaProfileCurrent(EPAOpAddEMPEntryInputParametersR6)
// AUTO-DISABLED (SUSHI R6): * id = "example-epa-op-add-emp-entry-input-parameters-1"
// AUTO-DISABLED (SUSHI R6): * parameter[acknowledgedChronologyId]
  // AUTO-DISABLED (SUSHI R6): * name = "acknowledgedChronologyId"
  // AUTO-DISABLED (SUSHI R6): * valueId = "0b383501-f078-464b-b984-9fdb6751601b"
// AUTO-DISABLED (SUSHI R6): * parameter[medication]
  // AUTO-DISABLED (SUSHI R6): * name = "medication"
  // AUTO-DISABLED (SUSHI R6): * part[resource]
    // AUTO-DISABLED (SUSHI R6): * name = "resource"
    // AUTO-DISABLED (SUSHI R6): * resource = Inline_eMP_Benazepril
// AUTO-DISABLED (SUSHI R6): * parameter[empEntry]
  // AUTO-DISABLED (SUSHI R6): * name = "empEntry"
  // AUTO-DISABLED (SUSHI R6): * resource = Inline_eMP_Benazepril_Request


// AUTO-DISABLED (SUSHI R6): Instance: ExpEPAOpAddEMPEntryWithReferenceInputParameters
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAOpAddEMPEntryInputParametersR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert InstanceMetaProfileCurrent(EPAOpAddEMPEntryInputParametersR6)
// AUTO-DISABLED (SUSHI R6): * id = "example-epa-op-add-emp-entry-with-reference-input-parameters-1"
// AUTO-DISABLED (SUSHI R6): * parameter[acknowledgedChronologyId]
  // AUTO-DISABLED (SUSHI R6): * name = "acknowledgedChronologyId"
  // AUTO-DISABLED (SUSHI R6): * valueId = "0b383501-f078-464b-b984-9fdb6751601b"
// AUTO-DISABLED (SUSHI R6): * parameter[medication]
  // AUTO-DISABLED (SUSHI R6): * name = "medication"
  // AUTO-DISABLED (SUSHI R6): * part[reference]
    // AUTO-DISABLED (SUSHI R6): * name = "reference"
    // AUTO-DISABLED (SUSHI R6): * valueReference = Reference(Sumatriptan)
// AUTO-DISABLED (SUSHI R6): * parameter[empEntry]
  // AUTO-DISABLED (SUSHI R6): * name = "empEntry"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_EMPMedicationRequest_With_Reference_Input_Parameter


// AUTO-DISABLED (SUSHI R6): Instance: InvalidExampleHistoryReferenceNotAllowedEmpInput
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAOpAddEMPEntryInputParametersR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): Title: "INVALIDE - Medication Reference mit History in eMP Input Parameter"
// AUTO-DISABLED (SUSHI R6): Description: "Dieses Beispiel ist absichtlich invalide und demonstriert, dass History-Referenzen (/_history/) in der Medication Reference nicht erlaubt sind. Die Validierungsfehler sind gewollt und erwartet."
// AUTO-DISABLED (SUSHI R6): * insert InstanceMetaProfileCurrent(EPAOpAddEMPEntryInputParametersR6)
// AUTO-DISABLED (SUSHI R6): * id = "invalid-example-history-reference-not-allowed-emp-input"
// AUTO-DISABLED (SUSHI R6): * parameter[acknowledgedChronologyId]
  // AUTO-DISABLED (SUSHI R6): * name = "acknowledgedChronologyId"
  // AUTO-DISABLED (SUSHI R6): * valueId = "0b383501-f078-464b-b984-9fdb6751601b"
// AUTO-DISABLED (SUSHI R6): * parameter[medication]
  // AUTO-DISABLED (SUSHI R6): * name = "medication"
  // AUTO-DISABLED (SUSHI R6): * part[reference]
    // AUTO-DISABLED (SUSHI R6): * name = "reference"
    // AUTO-DISABLED (SUSHI R6): * valueReference = Reference(Medication/fc7b28e8-05ac-4ac8-86d7-7677d9c6134e/_history/2)
// AUTO-DISABLED (SUSHI R6): * parameter[empEntry]
  // AUTO-DISABLED (SUSHI R6): * name = "empEntry"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_EMPMedicationRequest_With_Reference_Input_Parameter


// AUTO-DISABLED (SUSHI R6): Instance: eMP_EMPMedicationRequest_With_Reference_Input_Parameter
// AUTO-DISABLED (SUSHI R6): InstanceOf: EMPMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EMPMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "6cc286cc-15a6-48ad-a349-9e8b6a48af75"
// AUTO-DISABLED (SUSHI R6): * insert eMP_Sumatriptan_Request_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference
  // AUTO-DISABLED (SUSHI R6): * display = "Sumatriptan-1a Pharma 100 mg Tabletten"


// AUTO-DISABLED (SUSHI R6): Instance: ExpEPAOpEMPEntryOutputParameters
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAOpEMPEntryOutputParametersR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert InstanceMetaProfileCurrent(EPAOpEMPEntryOutputParametersR6)
// AUTO-DISABLED (SUSHI R6): * id = "example-epa-op-emp-entry-output-parameters-1"
// AUTO-DISABLED (SUSHI R6): * parameter[empEntry]
  // AUTO-DISABLED (SUSHI R6): * name = "empEntry"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_Benazepril_Request
// AUTO-DISABLED (SUSHI R6): * parameter[medication]
  // AUTO-DISABLED (SUSHI R6): * name = "medication"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_Benazepril
// AUTO-DISABLED (SUSHI R6): * parameter[relatedActivity]
  // AUTO-DISABLED (SUSHI R6): * name = "relatedActivity"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_Benazepril_Activity_Provenance
// AUTO-DISABLED (SUSHI R6): * parameter[relatedChronology]
  // AUTO-DISABLED (SUSHI R6): * name = "relatedChronology"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_Benazepril_Chronology_Provenance_2


// Update

// AUTO-DISABLED (SUSHI R6): Instance: ExpEPAOpUpdateEMPEntryInputParameters
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAOpUpdateEMPEntryInputParametersR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert InstanceMetaProfileCurrent(EPAOpUpdateEMPEntryInputParametersR6)
// AUTO-DISABLED (SUSHI R6): * id = "example-epa-op-update-emp-entry-input-parameters-1"
// AUTO-DISABLED (SUSHI R6): * parameter[acknowledgedChronologyId]
  // AUTO-DISABLED (SUSHI R6): * name = "acknowledgedChronologyId"
  // AUTO-DISABLED (SUSHI R6): * valueId = "b467ce05-e0e5-4d71-9a0b-d824dbb492ef"
// AUTO-DISABLED (SUSHI R6): * parameter[medicationPlanIdentifier]
  // AUTO-DISABLED (SUSHI R6): * name = "medicationPlanIdentifier"
  // AUTO-DISABLED (SUSHI R6): * valueIdentifier
    // AUTO-DISABLED (SUSHI R6): * system = $sid-medication-plan-identifier
    // AUTO-DISABLED (SUSHI R6): * value = "3dfe8327-dd4c-4e53-a695-cd2e0b21e699"
// AUTO-DISABLED (SUSHI R6): * parameter[empEntry]
  // AUTO-DISABLED (SUSHI R6): * name = "empEntry"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_Benazepril_Request_Update


// AUTO-DISABLED (SUSHI R6): Instance: ExpEPAOpEMPEntryOutputParametersUpdate
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAOpEMPEntryOutputParametersR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert InstanceMetaProfileCurrent(EPAOpEMPEntryOutputParametersR6)
// AUTO-DISABLED (SUSHI R6): * id = "example-epa-op-emp-entry-output-parameters-2"
// AUTO-DISABLED (SUSHI R6): * parameter[empEntry]
  // AUTO-DISABLED (SUSHI R6): * name = "empEntry"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_Benazepril_Request_New_Version
// AUTO-DISABLED (SUSHI R6): * parameter[medication]
  // AUTO-DISABLED (SUSHI R6): * name = "medication"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_Benazepril
// AUTO-DISABLED (SUSHI R6): * parameter[relatedActivity]
  // AUTO-DISABLED (SUSHI R6): * name = "relatedActivity"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_Benazepril_Activity_Provenance_New_Version
// AUTO-DISABLED (SUSHI R6): * parameter[relatedChronology]
  // AUTO-DISABLED (SUSHI R6): * name = "relatedChronology"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_Benazepril_Chronology_Provenance_New_Version

