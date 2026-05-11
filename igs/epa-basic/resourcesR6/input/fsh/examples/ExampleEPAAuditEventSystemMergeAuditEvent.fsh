// AUTO-DISABLED (SUSHI R6): Instance: ExampleEPAAuditEventSystemMergeAuditEvent
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAAuditEventR6
// AUTO-DISABLED (SUSHI R6): Description: "Example AuditEvent for a system merge operation adding an AuditEvent to the Audit Event Service"
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * id = "49280fa1-5096-4bc7-901e-22f5dd72f822"
// AUTO-DISABLED (SUSHI R6): * insert EPAAuditEventInstanceMeta
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-01-15T14:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * type
  // AUTO-DISABLED (SUSHI R6): * system = $audit-event-type
  // AUTO-DISABLED (SUSHI R6): * code = #object
// AUTO-DISABLED (SUSHI R6): * action = #U
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
    // AUTO-DISABLED (SUSHI R6): * code = #XDSSVC
    // AUTO-DISABLED (SUSHI R6): * display = "XDS Document Service"
// AUTO-DISABLED (SUSHI R6): * entity
  // AUTO-DISABLED (SUSHI R6): * name = "XDS Document Service"
  // AUTO-DISABLED (SUSHI R6): * description = "ProvideAndRegisterDocumentSet-b"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "DocumentFormatCode"
    // AUTO-DISABLED (SUSHI R6): * valueString = "urn:gematik:ig:Arztbrief:r3.1"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "DocumentEntryTitle"
    // AUTO-DISABLED (SUSHI R6): * valueString = "Arztbrief4711"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "DocumentUniqueId"
    // AUTO-DISABLED (SUSHI R6): * valueString = "187432aa-0d3f-4202-9ec5-a7e001855a3c"   
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "System-Zusammenführung"
    // AUTO-DISABLED (SUSHI R6): * valueString = "true"       