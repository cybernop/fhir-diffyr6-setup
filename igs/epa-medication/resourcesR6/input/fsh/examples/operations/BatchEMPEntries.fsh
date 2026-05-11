// AUTO-DISABLED (SUSHI R6): Instance: ExampleEPABatchEmpRequestBundle
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPABatchEmpRequestBundleR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert InstanceMetaProfileCurrent(EPABatchEmpRequestBundleR6)
// AUTO-DISABLED (SUSHI R6): * id = "example-epa-batch-emp-request-bundle"
// AUTO-DISABLED (SUSHI R6): * type = #transaction
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * entry[addEmp][+]
  // AUTO-DISABLED (SUSHI R6): * fullUrl = "urn:uuid:42a697f3-3989-4be8-bf27-92c05a025e79"
  // AUTO-DISABLED (SUSHI R6): * resource = ExpEPAOpAddEMPEntryInputParameters_Batch
  // AUTO-DISABLED (SUSHI R6): * request.url = "$add-emp-entry"
  // AUTO-DISABLED (SUSHI R6): * request.method = #POST
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * entry[updateEmp][+]
  // AUTO-DISABLED (SUSHI R6): * fullUrl = "urn:uuid:cae0c349-08bc-4fe5-9233-ca5a9a4c4673"
  // AUTO-DISABLED (SUSHI R6): * resource = ExpEPAOpUpdateEMPEntryInputParameters_Batch
  // AUTO-DISABLED (SUSHI R6): * request.url = "$update-emp-entry"
  // AUTO-DISABLED (SUSHI R6): * request.method = #POST
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * entry[commit][+]
  // AUTO-DISABLED (SUSHI R6): * fullUrl = "urn:uuid:ba863a1b-f6bc-45f7-92ba-cc8bf79cf8c2"
  // AUTO-DISABLED (SUSHI R6): * resource = ExpEPAOpEMPCommitInputParameters_Batch
  // AUTO-DISABLED (SUSHI R6): * request.url = "$emp-commit"
  // AUTO-DISABLED (SUSHI R6): * request.method = #POST


// AUTO-DISABLED (SUSHI R6): Instance: ExpEPAOpAddEMPEntryInputParameters_Batch
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAOpAddEMPEntryInputParametersR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert InstanceMetaProfileCurrent(EPAOpAddEMPEntryInputParametersR6)
// AUTO-DISABLED (SUSHI R6): * id = "517301af-f07c-4694-9780-451132352d95"
// AUTO-DISABLED (SUSHI R6): * parameter[medication]
  // AUTO-DISABLED (SUSHI R6): * name = "medication"
  // AUTO-DISABLED (SUSHI R6): * part[resource]
    // AUTO-DISABLED (SUSHI R6): * name = "resource"
    // AUTO-DISABLED (SUSHI R6): * resource = Inline_eMP_Benazepril
// AUTO-DISABLED (SUSHI R6): * parameter[empEntry]
  // AUTO-DISABLED (SUSHI R6): * name = "empEntry"
  // AUTO-DISABLED (SUSHI R6): * resource = Inline_eMP_Benazepril_Request


// AUTO-DISABLED (SUSHI R6): Instance: ExpEPAOpUpdateEMPEntryInputParameters_Batch
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAOpUpdateEMPEntryInputParametersR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert InstanceMetaProfileCurrent(EPAOpUpdateEMPEntryInputParametersR6)
// AUTO-DISABLED (SUSHI R6): * id = "7ccb2670-7178-4f82-912a-de70f68ecd51"
// AUTO-DISABLED (SUSHI R6): * parameter[medicationPlanIdentifier]
  // AUTO-DISABLED (SUSHI R6): * name = "medicationPlanIdentifier"
  // AUTO-DISABLED (SUSHI R6): * valueIdentifier
    // AUTO-DISABLED (SUSHI R6): * system = $sid-medication-plan-identifier
    // AUTO-DISABLED (SUSHI R6): * value = "266620a9-2c26-41c1-b0cb-a10947b867f5"
// AUTO-DISABLED (SUSHI R6): * parameter[empEntry]
  // AUTO-DISABLED (SUSHI R6): * name = "empEntry"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_Sumatriptan_Request


Instance: ExpEPAOpEMPCommitInputParameters_Batch
InstanceOf: EPAOpEMPCommitInputParametersR6
Usage: #inline
* insert InstanceMetaProfileCurrent(EPAOpEMPCommitInputParametersR6)
* id = "4beaf1af-daec-4c7a-930d-c2062517b42c"
* parameter[acknowledgedChronologyId]
  * name = "acknowledgedChronologyId"
  * valueId = "b467ce05-e0e5-4d71-9a0b-d824dbb492ef"



// == Response ========


Instance: ExampleEPABatchEmpResponseBundle
InstanceOf: Bundle
Usage: #example
* id = "example-epa-batch-emp-response-bundle"
* type = #transaction-response

* entry[+]
  // AUTO-DISABLED (SUSHI R6): * resource = ExpEPAOpEMPEntryOutputParameters_Batch
  * response
    * status = "200 OK"

* entry[+]
  // AUTO-DISABLED (SUSHI R6): * resource = ExpEPAOpEMPEntryOutputParametersUpdate_Batch
  * response
    * status = "200 OK"

* entry[+]
  * resource = eMP_Chronology_Provenance_Batch
  * response
    * status = "200 OK"




// AUTO-DISABLED (SUSHI R6): Instance: ExpEPAOpEMPEntryOutputParameters_Batch
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAOpEMPEntryOutputParametersR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert InstanceMetaProfileCurrent(EPAOpEMPEntryOutputParametersR6)
// AUTO-DISABLED (SUSHI R6): * id = "0fe348cc-adee-496c-9359-3cf3eaa1d355"
// AUTO-DISABLED (SUSHI R6): * parameter[empEntry]
  // AUTO-DISABLED (SUSHI R6): * name = "empEntry"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_Benazepril_Request
// AUTO-DISABLED (SUSHI R6): * parameter[medication]
  // AUTO-DISABLED (SUSHI R6): * name = "medication"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_Benazepril
// AUTO-DISABLED (SUSHI R6): * parameter[relatedActivity]
  // AUTO-DISABLED (SUSHI R6): * name = "relatedActivity"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_Benazepril_Activity_Provenance


// AUTO-DISABLED (SUSHI R6): Instance: ExpEPAOpEMPEntryOutputParametersUpdate_Batch
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAOpEMPEntryOutputParametersR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert InstanceMetaProfileCurrent(EPAOpEMPEntryOutputParametersR6)
// AUTO-DISABLED (SUSHI R6): * id = "946af3ef-eec2-4a5d-81c4-fe46bc115d58"
// AUTO-DISABLED (SUSHI R6): * parameter[empEntry]
  // AUTO-DISABLED (SUSHI R6): * name = "empEntry"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_Sumatriptan_Request_Batch_Response
// AUTO-DISABLED (SUSHI R6): * parameter[medication]
  // AUTO-DISABLED (SUSHI R6): * name = "medication"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_Sumatriptan
// AUTO-DISABLED (SUSHI R6): * parameter[relatedActivity]
  // AUTO-DISABLED (SUSHI R6): * name = "relatedActivity"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_Sumatriptan_Activity_Provenance_Batch_Response


// AUTO-DISABLED (SUSHI R6): Instance: eMP_Sumatriptan_Request_Batch_Response
// AUTO-DISABLED (SUSHI R6): InstanceOf: EMPMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EMPMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "266620a9-2c26-41c1-b0cb-a10947b867f5"
// AUTO-DISABLED (SUSHI R6): * insert eMP_Sumatriptan_Request_Content
// AUTO-DISABLED (SUSHI R6): * identifier[MedicationPlanIdentifier]
  // AUTO-DISABLED (SUSHI R6): * system = $sid-medication-plan-identifier
  // AUTO-DISABLED (SUSHI R6): * value = "266620a9-2c26-41c1-b0cb-a10947b867f5"
// AUTO-DISABLED (SUSHI R6): // * extension[activity].valueReference = Reference(Sumatriptan_Information)
// AUTO-DISABLED (SUSHI R6): * extension[activity]
  // AUTO-DISABLED (SUSHI R6): * extension[reference].valueReference = Reference(Sumatriptan_Information)
  // AUTO-DISABLED (SUSHI R6): * extension[addedOn].valueDateTime = "2026-12-01T14:00:00.400Z"
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(eMP_Sumatriptan)
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "3"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-12-01T14:00:00.400Z"


Instance: eMP_Sumatriptan_Activity_Provenance_Batch_Response
InstanceOf: EPAActivityProvenance
Usage: #example
* insert EPAActivityProvenanceInstanceMeta
* id = "20335453-d103-4957-a370-03c9007db2f6"
* activity = $v3-DataOperation#CREATE
* agent
  * type = $provenance-participant-type#author
  * who = Reference(PraxisTIOrganization)
  * who
    * identifier
      * type = $v2-0203#PRN
      * system = $sid-identifier-telematik-id
      * value = $PraxisTIOrganization-TelematikID
    * insert PraxisTIOrganization-display
* target[+] = Reference(MedicationRequest/266620a9-2c26-41c1-b0cb-a10947b867f5/_history/3)
* recorded = "2026-12-01T14:00:00.400Z"


Instance: eMP_Chronology_Provenance_Batch
InstanceOf: EMPChronologyProvenanceR6
Usage: #example
* insert EMPChronologyProvenanceInstanceMeta
* id = "319fcc6e-049d-4eb1-9a5c-82c33438cf94"
* extension[isEMPChronology].valueBoolean = true
* activity = $v3-DataOperation#UPDATE
* recorded = "2026-12-01T14:00:00.400Z"
* occurredDateTime = "2026-12-01T14:00:00.400Z"
* agent
  * type = $provenance-participant-type#author
  * who = Reference(PraxisTIOrganization)
  * who
    * identifier
      * type = $v2-0203#PRN
      * system = $sid-identifier-telematik-id
      * value = $PraxisTIOrganization-TelematikID
    * insert PraxisTIOrganization-display
* target[+] = Reference(MedicationRequest/266620a9-2c26-41c1-b0cb-a10947b867f5/_history/3)
* target[+] = Reference(MedicationRequest/71b66f1b-8032-4886-b7bf-e775daee22fb/_history/1)