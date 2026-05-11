// AUTO-DISABLED (SUSHI R6): Instance: ExampleEPAAuditEventMedicationServiceSearch
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAAuditEventR6
// AUTO-DISABLED (SUSHI R6): Description: "Example AuditEvent from the Medication Service for search"
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * id = "bbf292eb-665d-4724-a2bc-86fa93e89835"
// AUTO-DISABLED (SUSHI R6): * insert EPAAuditEventInstanceMeta
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-01-15T14:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * type
  // AUTO-DISABLED (SUSHI R6): * system = $audit-event-type
  // AUTO-DISABLED (SUSHI R6): * code = #rest
// AUTO-DISABLED (SUSHI R6): * action = #R
// AUTO-DISABLED (SUSHI R6): * recorded = "2025-01-15T14:52:04.928Z"
// AUTO-DISABLED (SUSHI R6): * outcome = #0
// AUTO-DISABLED (SUSHI R6): * agent[user]
  // AUTO-DISABLED (SUSHI R6): * type
    // AUTO-DISABLED (SUSHI R6): * coding
      // AUTO-DISABLED (SUSHI R6): * system = $v3-role-class
      // AUTO-DISABLED (SUSHI R6): * code = #PROV
      // AUTO-DISABLED (SUSHI R6): * display = "healthcare provider"
  // AUTO-DISABLED (SUSHI R6): * who
    // AUTO-DISABLED (SUSHI R6): * identifier
      // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-telematik-id
      // AUTO-DISABLED (SUSHI R6): * value = "1-883110000092404"
  // AUTO-DISABLED (SUSHI R6): * altId = "1-883110000092404"
  // AUTO-DISABLED (SUSHI R6): * name = "Praxis Dr. John Doe"
  // AUTO-DISABLED (SUSHI R6): * requestor = true
// AUTO-DISABLED (SUSHI R6): * source
  // AUTO-DISABLED (SUSHI R6): * observer
    // AUTO-DISABLED (SUSHI R6): * display = "Elektronische Patientenakte Fachdienst"
  // AUTO-DISABLED (SUSHI R6): * type
    // AUTO-DISABLED (SUSHI R6): * system = Canonical(EPAAuditEventSourceTypeCS)
    // AUTO-DISABLED (SUSHI R6): * code = #MEDICATIONSVC
    // AUTO-DISABLED (SUSHI R6): * display = "Medication Service"
// AUTO-DISABLED (SUSHI R6): * entity
  // AUTO-DISABLED (SUSHI R6): * name = "Medication Service"
  // AUTO-DISABLED (SUSHI R6): * description = "listMedicationRequests_MedicationSvc"
  // AUTO-DISABLED (SUSHI R6): * detail[0].type = "search-parameters"
  // AUTO-DISABLED (SUSHI R6): * detail[0].valueString = "MedicationRequest?authoredon=2025-01-15&_revinclude=MedicationDispense:prescription"
