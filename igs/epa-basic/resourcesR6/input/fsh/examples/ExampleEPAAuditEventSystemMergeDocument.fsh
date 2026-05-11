// AUTO-DISABLED (SUSHI R6): Instance: ExampleEPAAuditEventSystemMergeDocument
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAAuditEventR6
// AUTO-DISABLED (SUSHI R6): Description: "Example AuditEvent for a system merge operation adding one document to the XDS document service"
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * id = "8bedf920-ffcf-4cb7-b6ca-379f296d8740"
// AUTO-DISABLED (SUSHI R6): * insert EPAAuditEventInstanceMeta
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-03-12T14:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * type
  // AUTO-DISABLED (SUSHI R6): * system = $audit-event-type
  // AUTO-DISABLED (SUSHI R6): * code = #document
// AUTO-DISABLED (SUSHI R6): * action = #E
// AUTO-DISABLED (SUSHI R6): * recorded = "2026-03-12T14:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * outcome = #0
// AUTO-DISABLED (SUSHI R6): * agent[user]
  // AUTO-DISABLED (SUSHI R6): * type
    // AUTO-DISABLED (SUSHI R6): * coding
      // AUTO-DISABLED (SUSHI R6): * system = $v3-role-class
      // AUTO-DISABLED (SUSHI R6): * code = #PAYOR
      // AUTO-DISABLED (SUSHI R6): * display = "invoice payor"
  // AUTO-DISABLED (SUSHI R6): * who
    // AUTO-DISABLED (SUSHI R6): * identifier
      // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-telematik-id
      // AUTO-DISABLED (SUSHI R6): * value = "8-863110000022741"
  // AUTO-DISABLED (SUSHI R6): * altId = "8-863110000022741"
  // AUTO-DISABLED (SUSHI R6): * name = "Name des Kostenträgers"
  // AUTO-DISABLED (SUSHI R6): * requestor = true
// AUTO-DISABLED (SUSHI R6): * source
  // AUTO-DISABLED (SUSHI R6): * observer
    // AUTO-DISABLED (SUSHI R6): * display = "Elektronische Patientenakte Fachdienst"
  // AUTO-DISABLED (SUSHI R6): * type
    // AUTO-DISABLED (SUSHI R6): * system = Canonical(EPAAuditEventSourceTypeCS)
    // AUTO-DISABLED (SUSHI R6): * code = #HRRSVC
    // AUTO-DISABLED (SUSHI R6): * display = "Health Record Relocation Service"
// AUTO-DISABLED (SUSHI R6): * entity
  // AUTO-DISABLED (SUSHI R6): * name = "SystemMerge"
  // AUTO-DISABLED (SUSHI R6): * description = "startPackageMergeImport"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "DocumentFormatCode"
    // AUTO-DISABLED (SUSHI R6): * valueString = "urn:gematik:ig:Arztbrief:r3.1"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "DocumentEntryTitle"
    // AUTO-DISABLED (SUSHI R6): * valueString = "Arztbrief4711"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "DocumentUniqueId"
    // AUTO-DISABLED (SUSHI R6): * valueString = "187432aa-0d3f-4202-9ec5-a7e001855a3c"   