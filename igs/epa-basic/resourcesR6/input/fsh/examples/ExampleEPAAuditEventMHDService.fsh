// AUTO-DISABLED (SUSHI R6): Instance: ExampleEPAAuditEventMHDService
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAAuditEventR6
// AUTO-DISABLED (SUSHI R6): Description: "Example AuditEvent from the MHD Service"
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * id = "b580f152-cf07-4ef4-aafb-e66c2da28f02"
// AUTO-DISABLED (SUSHI R6): * insert EPAAuditEventInstanceMeta
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-12-15T14:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * type
  // AUTO-DISABLED (SUSHI R6): * system = $audit-event-type
  // AUTO-DISABLED (SUSHI R6): * code = #rest
// AUTO-DISABLED (SUSHI R6): * action = #R
// AUTO-DISABLED (SUSHI R6): * recorded = "2026-12-15T14:43:33.244Z"
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
    // AUTO-DISABLED (SUSHI R6): * code = #MHDSVC
    // AUTO-DISABLED (SUSHI R6): * display = "MHD Service"
// AUTO-DISABLED (SUSHI R6): * entity
  // AUTO-DISABLED (SUSHI R6): * name = "MHD Service"
  // AUTO-DISABLED (SUSHI R6): * description = "findDocumentReferences_MHDSvc"
  // AUTO-DISABLED (SUSHI R6): * detail[+].type = "search-parameters"
  // AUTO-DISABLED (SUSHI R6): * detail[=].valueString = "DocumentReference?patient.identifier=http://fhir.de/sid/gkv/kvid-10|G995030566&status=current&setting=http://www.ihe-d.de/fhir/CodeSystem/FachrichtungenAerztlich|ALL&_content=Kopf OR Zahl"
