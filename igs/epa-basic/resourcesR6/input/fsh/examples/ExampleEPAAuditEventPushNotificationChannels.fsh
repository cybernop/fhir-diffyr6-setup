// AUTO-DISABLED (SUSHI R6): Instance: ExampleEPAAuditEventPushNotificationChannels
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAAuditEventR6
// AUTO-DISABLED (SUSHI R6): Description: "Example AuditEvent for a changed channel configuration of a push registration"
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * id = "4fb73d96-49eb-4b5d-9f12-3afcc7cb9802"
// AUTO-DISABLED (SUSHI R6): * insert EPAAuditEventInstanceMeta
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-09-06T21:02:02.002Z"
// AUTO-DISABLED (SUSHI R6): * type
  // AUTO-DISABLED (SUSHI R6): * system = $audit-event-type
  // AUTO-DISABLED (SUSHI R6): * code = #rest
// AUTO-DISABLED (SUSHI R6): * action = #U
// AUTO-DISABLED (SUSHI R6): * recorded = "2026-09-06T21:02:02.002Z"
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
    // AUTO-DISABLED (SUSHI R6): * code = #PUSHNOTMGMT
    // AUTO-DISABLED (SUSHI R6): * display = "Push Notification Management"
// AUTO-DISABLED (SUSHI R6): * entity
  // AUTO-DISABLED (SUSHI R6): * name = "PushNotificationManagement"
  // AUTO-DISABLED (SUSHI R6): * description = "updateChannelsOfPusher"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "xds.put"
    // AUTO-DISABLED (SUSHI R6): * valueString = "enabled"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "constraint.del"
    // AUTO-DISABLED (SUSHI R6): * valueString = "disabled"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "DisplayNamePusher"
    // AUTO-DISABLED (SUSHI R6): * valueString = "Erikas Tablet"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "DisplayNameDevice"
    // AUTO-DISABLED (SUSHI R6): * valueString = "Erikas Tablet für ePA"
