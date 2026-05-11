// AUTO-DISABLED (SUSHI R6): Instance: ExampleEPAAuditEventMedicationServiceDataSubmission
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAAuditEventR6
// AUTO-DISABLED (SUSHI R6): Description: "Example AuditEvent for Medication Service provide prescription with data submission"
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * id = "15ad14c8-7fe4-479b-bd44-4bf0927b9478"
// AUTO-DISABLED (SUSHI R6): * insert EPAAuditEventInstanceMeta
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-09-17T12:07:21.117Z"
// AUTO-DISABLED (SUSHI R6): * type
  // AUTO-DISABLED (SUSHI R6): * system = $audit-event-type
  // AUTO-DISABLED (SUSHI R6): * code = #rest
// AUTO-DISABLED (SUSHI R6): * action = #E
// AUTO-DISABLED (SUSHI R6): * recorded = "2026-09-17T12:07:21.117Z"
// AUTO-DISABLED (SUSHI R6): * outcome = #0
// AUTO-DISABLED (SUSHI R6): * agent[client]
  // AUTO-DISABLED (SUSHI R6): * type
    // AUTO-DISABLED (SUSHI R6): * coding
      // AUTO-DISABLED (SUSHI R6): * system = "http://dicom.nema.org/resources/ontology/DCM"
      // AUTO-DISABLED (SUSHI R6): * code = #110150
      // AUTO-DISABLED (SUSHI R6): * display = "Application"
  // AUTO-DISABLED (SUSHI R6): * who
    // AUTO-DISABLED (SUSHI R6): * identifier
      // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-telematik-id
      // AUTO-DISABLED (SUSHI R6): * value = "1-000000000000000"
  // AUTO-DISABLED (SUSHI R6): * altId = "1-000000000000000"
  // AUTO-DISABLED (SUSHI R6): * name = "E-Rezept-Fachdienst"
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
  // AUTO-DISABLED (SUSHI R6): * description = "providePrescription_MedicationSvc"  
  // AUTO-DISABLED (SUSHI R6): * detail[+].type = "data-submission"
  // AUTO-DISABLED (SUSHI R6): * detail[=].valueString = "true"  