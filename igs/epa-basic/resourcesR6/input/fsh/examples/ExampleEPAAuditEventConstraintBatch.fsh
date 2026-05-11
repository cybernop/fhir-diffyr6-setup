// AUTO-DISABLED (SUSHI R6): Instance: ExampleEPAAuditEventConstraintBatch
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAAuditEventR6
// AUTO-DISABLED (SUSHI R6): Description: "Example AuditEvent for a batch operation hiding two documents and the dental category"
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * id = "532c1540-8403-4b57-8349-279f53443f23"
// AUTO-DISABLED (SUSHI R6): * insert EPAAuditEventInstanceMeta
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-03-10T13:50:04.047Z"
// AUTO-DISABLED (SUSHI R6): * type
  // AUTO-DISABLED (SUSHI R6): * system = $audit-event-type
  // AUTO-DISABLED (SUSHI R6): * code = #rest
// AUTO-DISABLED (SUSHI R6): * action = #C
// AUTO-DISABLED (SUSHI R6): * recorded = "2026-03-10T13:50:04.047Z"
// AUTO-DISABLED (SUSHI R6): * outcome = #0
// AUTO-DISABLED (SUSHI R6): * agent[user]
  // AUTO-DISABLED (SUSHI R6): * type
    // AUTO-DISABLED (SUSHI R6): * coding
      // AUTO-DISABLED (SUSHI R6): * system = $v3-role-class
      // AUTO-DISABLED (SUSHI R6): * code = #PAT
      // AUTO-DISABLED (SUSHI R6): * display = "patient"
  // AUTO-DISABLED (SUSHI R6): * who
    // AUTO-DISABLED (SUSHI R6): * identifier
      // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-kvid-10
      // AUTO-DISABLED (SUSHI R6): * value = "A123456780"
  // AUTO-DISABLED (SUSHI R6): * altId = "A123456780"
  // AUTO-DISABLED (SUSHI R6): * name = "Erika Musterfrau"
  // AUTO-DISABLED (SUSHI R6): * requestor = true
// AUTO-DISABLED (SUSHI R6): * source
  // AUTO-DISABLED (SUSHI R6): * observer
    // AUTO-DISABLED (SUSHI R6): * display = "Elektronische Patientenakte Fachdienst"
  // AUTO-DISABLED (SUSHI R6): * type
    // AUTO-DISABLED (SUSHI R6): * system = Canonical(EPAAuditEventSourceTypeCS)
    // AUTO-DISABLED (SUSHI R6): * code = #CONMGMT
    // AUTO-DISABLED (SUSHI R6): * display = "Constraint Management"
// AUTO-DISABLED (SUSHI R6): * entity[+]
  // AUTO-DISABLED (SUSHI R6): * name = "GeneralDenyPolicy"
  // AUTO-DISABLED (SUSHI R6): * description = "batchSetDenyPolicyAssignment"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "DocumentTitle"
    // AUTO-DISABLED (SUSHI R6): * valueString = "Befund von Dr. Mustermann"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "RootDocumentId"
    // AUTO-DISABLED (SUSHI R6): * valueString = "urn:uuid:0ab6dc6f-d5f2-4d89-8782-6794b6f372f2^^^^urn:gematik:iti:xds:2023:rootDocumentUniqueId"
// AUTO-DISABLED (SUSHI R6): * entity[+]
  // AUTO-DISABLED (SUSHI R6): * name = "GeneralDenyPolicy"
  // AUTO-DISABLED (SUSHI R6): * description = "batchSetDenyPolicyAssignment"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "DocumentTitle"
    // AUTO-DISABLED (SUSHI R6): * valueString = "Brief von Dr. Mustermann"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "RootDocumentId"
    // AUTO-DISABLED (SUSHI R6): * valueString = "urn:uuid:256181de-e732-48d7-8cbb-acdc133dde66^^^^urn:gematik:iti:xds:2023:rootDocumentUniqueId"
// AUTO-DISABLED (SUSHI R6): * entity[+]
  // AUTO-DISABLED (SUSHI R6): * name = "GeneralDenyPolicy"
  // AUTO-DISABLED (SUSHI R6): * description = "batchSetDenyPolicyAssignment"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "CategoryId"
    // AUTO-DISABLED (SUSHI R6): * valueString = "dental"
