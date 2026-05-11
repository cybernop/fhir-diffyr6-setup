// AUTO-DISABLED (SUSHI R6): Instance: ExampleEPAAuditEventConsentDecisionUserSpecificDenyPolicy
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAAuditEventR6
// AUTO-DISABLED (SUSHI R6): Description: "Example AuditEvent for a change of a user-specific deny policy entry"
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * id = "daf3263b-41ba-420c-aacd-bf98dc16d315"
// AUTO-DISABLED (SUSHI R6): * insert EPAAuditEventInstanceMeta
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-04-28T21:17:03.047Z"
// AUTO-DISABLED (SUSHI R6): * type
  // AUTO-DISABLED (SUSHI R6): * system = $audit-event-type
  // AUTO-DISABLED (SUSHI R6): * code = #rest
// AUTO-DISABLED (SUSHI R6): * action = #C
// AUTO-DISABLED (SUSHI R6): * recorded = "2026-04-28T21:17:03.047Z"
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
    // AUTO-DISABLED (SUSHI R6): * code = #CDMGMT
    // AUTO-DISABLED (SUSHI R6): * display = "Consent Decision Management"
// AUTO-DISABLED (SUSHI R6): * entity
  // AUTO-DISABLED (SUSHI R6): * name = "UdpMedication"
  // AUTO-DISABLED (SUSHI R6): * description = "setUserSpecificMedicationDeny"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "UserId"
    // AUTO-DISABLED (SUSHI R6): * valueString = "2-883110000092414"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "UserName"
    // AUTO-DISABLED (SUSHI R6): * valueString = "Zahnarztpraxis Norbert Freiherr Schomaker"
