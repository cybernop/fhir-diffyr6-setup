// AUTO-DISABLED (SUSHI R6): Instance: ExampleEPAAuditEventEUAccess
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAAuditEventR6
// AUTO-DISABLED (SUSHI R6): Description: "Example AuditEvent for EU access with document retrieval"
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * id = "589b9862-7935-42f5-a06b-11a6f35833ee"
// AUTO-DISABLED (SUSHI R6): * insert EPAAuditEventInstanceMeta
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-11-02T12:05:13.117Z"
// AUTO-DISABLED (SUSHI R6): * type
  // AUTO-DISABLED (SUSHI R6): * system = $audit-event-type
  // AUTO-DISABLED (SUSHI R6): * code = #document
// AUTO-DISABLED (SUSHI R6): * action = #R
// AUTO-DISABLED (SUSHI R6): * recorded = "2026-11-02T12:05:13.117Z"
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
      // AUTO-DISABLED (SUSHI R6): * value = "9-000000000000000"
  // AUTO-DISABLED (SUSHI R6): * altId = "9-000000000000000"
  // AUTO-DISABLED (SUSHI R6): * name = "Portugal"
  // AUTO-DISABLED (SUSHI R6): * requestor = true
// AUTO-DISABLED (SUSHI R6): * agent[user]
  // AUTO-DISABLED (SUSHI R6): * extension[healthcareFacilityType]
    // AUTO-DISABLED (SUSHI R6): * valueCoding
      // AUTO-DISABLED (SUSHI R6): * system = "urn:oid:2.16.840.1.113883.2.9.6.2.7"
      // AUTO-DISABLED (SUSHI R6): * code = #221
      // AUTO-DISABLED (SUSHI R6): * display = "Medical Doctors"
  // AUTO-DISABLED (SUSHI R6): * type
    // AUTO-DISABLED (SUSHI R6): * coding
      // AUTO-DISABLED (SUSHI R6): * system = $v3-role-class
      // AUTO-DISABLED (SUSHI R6): * code = #PROV
      // AUTO-DISABLED (SUSHI R6): * display = "healthcare provider"
  // AUTO-DISABLED (SUSHI R6): * role
    // AUTO-DISABLED (SUSHI R6): * coding
      // AUTO-DISABLED (SUSHI R6): * system = "urn:oid:1.3.6.1.4.1.12559.11.10.1.3.2.2.2"
      // AUTO-DISABLED (SUSHI R6): * code = #"Resident Physician"
      // AUTO-DISABLED (SUSHI R6): * display = "Resident Physician"
  // AUTO-DISABLED (SUSHI R6): * name = "Dr. Manuel Dos Santos / Clínica de Dos Santos"
  // AUTO-DISABLED (SUSHI R6): * requestor = true
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * source
  // AUTO-DISABLED (SUSHI R6): * observer
    // AUTO-DISABLED (SUSHI R6): * display = "Elektronische Patientenakte Fachdienst"
  // AUTO-DISABLED (SUSHI R6): * type
    // AUTO-DISABLED (SUSHI R6): * system = Canonical(EPAAuditEventSourceTypeCS)
    // AUTO-DISABLED (SUSHI R6): * code = #XDSSVC
    // AUTO-DISABLED (SUSHI R6): * display = "XDS Document Service"
// AUTO-DISABLED (SUSHI R6): * entity
  // AUTO-DISABLED (SUSHI R6): * name = "XDS Document Service"
  // AUTO-DISABLED (SUSHI R6): * description = "RetrieveDocumentSet"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "DocumentFormatCode"
    // AUTO-DISABLED (SUSHI R6): * valueString = "urn:gematik:ig:pka:v1.0"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "DocumentEntryTitle"
    // AUTO-DISABLED (SUSHI R6): * valueString = "Patient Summary"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "DocumentUniqueId"
    // AUTO-DISABLED (SUSHI R6): * valueString = "e196c836-c8c3-47ae-9b9a-7124cbfef42f"  