// AUTO-DISABLED (SUSHI R6): Instance: ExampleSearchsetBundleAuditEvent
// AUTO-DISABLED (SUSHI R6): InstanceOf: Bundle
// AUTO-DISABLED (SUSHI R6): Description: "Example Searchset for AuditEvents"
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * id = "example-searchset-audit-event"
// AUTO-DISABLED (SUSHI R6): * type = #searchset
// AUTO-DISABLED (SUSHI R6): * total = 100 // Set this to the total number of AuditEvent resources in the bundle
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * link[0].relation = "self"
// AUTO-DISABLED (SUSHI R6): * link[0].url = "/epa/audit/api/v1/fhir/AuditEvent?_offset=20&_count=10" // The current page
// AUTO-DISABLED (SUSHI R6): * link[1].relation = "previous"
// AUTO-DISABLED (SUSHI R6): * link[1].url = "/epa/audit/api/v1/fhir/AuditEvent?_offset=10&_count=10"
// AUTO-DISABLED (SUSHI R6): * link[2].relation = "next"
// AUTO-DISABLED (SUSHI R6): * link[2].url = "/epa/audit/api/v1/fhir/AuditEvent?_offset=30&_count=10"
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): // Include entries with a AuditEvent
// AUTO-DISABLED (SUSHI R6): * entry[0].fullUrl = "http://epa4all/epa/AuditEvent/api/v1/fhir/AuditEvent/669699b2-f131-4097-b13d-71413a58aa92"
// AUTO-DISABLED (SUSHI R6): * entry[0].resource = ExampleEPAAuditEventMedicationService
// AUTO-DISABLED (SUSHI R6): * entry[0].search.mode = #match
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * entry[1].fullUrl = "http://epa4all/epa/AuditEvent/api/v1/fhir/AuditEvent/589b9862-7935-42f5-a06b-11a6f35833ee"
// AUTO-DISABLED (SUSHI R6): * entry[1].resource = ExampleEPAAuditEventEUAccess
// AUTO-DISABLED (SUSHI R6): * entry[1].search.mode = #match

// * entry[2].fullUrl = "http://epa4all/epa/AuditEvent/api/v1/fhir/AuditEvent/86604fc1-b356-57e3-8738-8ef36c8d608c"
// * entry[2].resource = ExampleEPAAuditEventXDSDocumentService
// * entry[2].search.mode = #match
