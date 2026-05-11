// AUTO-DISABLED (SUSHI R6): Instance: ExampleEPAAuditEventEntitlementLEI
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAAuditEventR6
// AUTO-DISABLED (SUSHI R6): Description: "Example AuditEvent for a LEI setting a new entitlement"
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * id = "69b6ab63-03c5-4e4c-b9d8-dc68e51487c4"
// AUTO-DISABLED (SUSHI R6): * insert EPAAuditEventInstanceMeta
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-07-22T09:05:04.232Z"
// AUTO-DISABLED (SUSHI R6): * type
  // AUTO-DISABLED (SUSHI R6): * system = $audit-event-type
  // AUTO-DISABLED (SUSHI R6): * code = #rest
// AUTO-DISABLED (SUSHI R6): * action = #C
// AUTO-DISABLED (SUSHI R6): * recorded = "2026-07-22T09:05:04.232Z"
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
    // AUTO-DISABLED (SUSHI R6): * code = #ENTITMGMT
    // AUTO-DISABLED (SUSHI R6): * display = "Entitlement Management"
// AUTO-DISABLED (SUSHI R6): * entity
  // AUTO-DISABLED (SUSHI R6): * name = "EntitlementManagement"
  // AUTO-DISABLED (SUSHI R6): * description = "setEntitlementPs"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "UserName"
    // AUTO-DISABLED (SUSHI R6): * valueString = "Praxis Dr. John Doe"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "UserId"
    // AUTO-DISABLED (SUSHI R6): * valueString = "1-883110000092404"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "entitledValidTo"
    // AUTO-DISABLED (SUSHI R6): * valueString = "2026-10-20T22:59:59Z"