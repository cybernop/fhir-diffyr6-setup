// AUTO-DISABLED (SUSHI R6): Instance: ExampleHistoryBundle
// AUTO-DISABLED (SUSHI R6): InstanceOf: Bundle
// AUTO-DISABLED (SUSHI R6): Title: "Example History Bundle"
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * id = "example-history-bundle"
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * type = #history
// AUTO-DISABLED (SUSHI R6): * total = 2
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * link[0].relation = "self"
// AUTO-DISABLED (SUSHI R6): * link[0].url = "/epa/medication/api/v1/fhir/MedicationDispense/4e6e1623-778e-44a3-b208-8479f5339e43/_history"
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): // POST: this was a create
// AUTO-DISABLED (SUSHI R6): * entry[0].fullUrl = "http://epa4all/epa/medication/api/v1/fhir/MedicationDispense/4e6e1623-778e-44a3-b208-8479f5339e43"
// AUTO-DISABLED (SUSHI R6): * entry[0].request.method = #DELETE
// AUTO-DISABLED (SUSHI R6): * entry[0].request.url = "MedicationDispense/4e6e1623-778e-44a3-b208-8479f5339e43"
// AUTO-DISABLED (SUSHI R6): * entry[0].response.status = "200 OK"
// AUTO-DISABLED (SUSHI R6): * entry[0].response.lastModified = "2025-08-22T15:00:00.000Z"
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): // POST: this was a create
// AUTO-DISABLED (SUSHI R6): * entry[1].fullUrl = "http://epa4all/epa/medication/api/v1/fhir/MedicationDispense/4e6e1623-778e-44a3-b208-8479f5339e43"
// AUTO-DISABLED (SUSHI R6): * entry[1].resource = ExampleHistoryMedicationDispense
// AUTO-DISABLED (SUSHI R6): * entry[1].request.method = #POST
// AUTO-DISABLED (SUSHI R6): * entry[1].request.url = "MedicationDispense"
// AUTO-DISABLED (SUSHI R6): * entry[1].response.status = "201 Created"
// AUTO-DISABLED (SUSHI R6): * entry[1].response.lastModified = "2025-08-22T14:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * entry[1].response.location = "MedicationDispense/4e6e1623-778e-44a3-b208-8479f5339e43/_history/1"



// AUTO-DISABLED (SUSHI R6): Instance: ExampleHistoryMedicationDispense
// AUTO-DISABLED (SUSHI R6): InstanceOf: MedicationDispense
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * id = "4e6e1623-778e-44a3-b208-8479f5339e43"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-08-22T14:43:33.244Z"
  // AUTO-DISABLED (SUSHI R6): * profile[+] = "https://gematik.de/fhir/epa-medication/StructureDefinition/epa-medication-dispense" 
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * extension[+].url = "https://gematik.de/fhir/epa-medication/StructureDefinition/rx-prescription-process-identifier-extension"
// AUTO-DISABLED (SUSHI R6): * extension[=].valueIdentifier
  // AUTO-DISABLED (SUSHI R6): * system = "https://gematik.de/fhir/epa-medication/sid/rx-prescription-process-identifier"
  // AUTO-DISABLED (SUSHI R6): * value = "162.153.303.257.459_20250301"
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * status = #completed
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Medication/16e5611a-911c-4c0e-a705-43b0e4e79cf6)
// AUTO-DISABLED (SUSHI R6): * subject
  // AUTO-DISABLED (SUSHI R6): * identifier.system = "http://fhir.de/sid/gkv/kvid-10"
  // AUTO-DISABLED (SUSHI R6): * identifier.value = "X110411319"
// AUTO-DISABLED (SUSHI R6): * whenHandedOver = "2025-08-22"
// AUTO-DISABLED (SUSHI R6): * performer.actor = Reference(Organization/a2ce62fc-1f29-4759-863e-1a1ca7f9669e)
// AUTO-DISABLED (SUSHI R6): * authorizingPrescription = Reference(MedicationRequest/f434862b-9bf8-414d-8b94-5eaa0b4bbf01)
// AUTO-DISABLED (SUSHI R6): * dosageInstruction.text = "1-0-0-0"
// AUTO-DISABLED (SUSHI R6): * substitution
  // AUTO-DISABLED (SUSHI R6): * wasSubstituted = false