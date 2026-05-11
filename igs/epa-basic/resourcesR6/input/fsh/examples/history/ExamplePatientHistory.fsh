// AUTO-DISABLED (SUSHI R6): Instance: ExamplePatientHistoryBundle
// AUTO-DISABLED (SUSHI R6): InstanceOf: Bundle
// AUTO-DISABLED (SUSHI R6): Title: "Example Patient History Bundle"
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * id = "example-patient-history-bundle"
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * type = #history
// AUTO-DISABLED (SUSHI R6): * total = 2
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * link[0].relation = "self"
// AUTO-DISABLED (SUSHI R6): * link[0].url = "/epa/patient/api/v1/fhir/Patient/_history"
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): // POST: this was a create
// AUTO-DISABLED (SUSHI R6): * entry[0].fullUrl = "http://epa4all/epa/patient/api/v1/fhir/Patient/e6442a99-521b-482c-b62b-b0f809d4e951"
// AUTO-DISABLED (SUSHI R6): * entry[0].resource = ExampleEPAHistoryPatientErikaMustermann
// AUTO-DISABLED (SUSHI R6): * entry[0].request.method = #PUT
// AUTO-DISABLED (SUSHI R6): * entry[0].request.url = "Patient/e6442a99-521b-482c-b62b-b0f809d4e951"
// AUTO-DISABLED (SUSHI R6): * entry[0].response.status = "200 OK"
// AUTO-DISABLED (SUSHI R6): * entry[0].response.lastModified = "2025-10-10T15:00:00.000Z"
// AUTO-DISABLED (SUSHI R6): * entry[0].response.location = "Patient/e6442a99-521b-482c-b62b-b0f809d4e951/_history/2"
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): // POST: this was a create
// AUTO-DISABLED (SUSHI R6): * entry[1].fullUrl = "http://epa4all/epa/patient/api/v1/fhir/Patient/e6442a99-521b-482c-b62b-b0f809d4e951"
// AUTO-DISABLED (SUSHI R6): * entry[1].resource = ExampleEPAHistoryPatientErikaGabler
// AUTO-DISABLED (SUSHI R6): * entry[1].request.method = #POST
// AUTO-DISABLED (SUSHI R6): * entry[1].request.url = "Patient"
// AUTO-DISABLED (SUSHI R6): * entry[1].response.status = "201 Created"
// AUTO-DISABLED (SUSHI R6): * entry[1].response.lastModified = "2025-08-22T14:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * entry[1].response.location = "Patient/e6442a99-521b-482c-b62b-b0f809d4e951/_history/1"


Instance: ExampleEPAHistoryPatientErikaMustermann
InstanceOf: EPAPatientR6
Usage: #inline
* id = "e6442a99-521b-482c-b62b-b0f809d4e951"
* insert EPAPatientInstanceMeta
* meta
  * versionId = "2"
  * lastUpdated = "2026-01-19T14:37:12+01:00"
* identifier[KVNR].system = $sid-identifier-kvid-10
* identifier[KVNR].value = "G995030566"
* name[Name]
  * family = "Mustermann"
  * given = "Erika"
* name[Geburtsname]
  * family = "Gabler"
    * extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
    * extension.valueString = "Gabler"
* gender = #female
* birthDate = "1964-08-12"


Instance: ExampleEPAHistoryPatientErikaGabler
InstanceOf: EPAPatientR6
Usage: #inline
* id = "e6442a99-521b-482c-b62b-b0f809d4e951"
* insert EPAPatientInstanceMeta
* meta
  * versionId = "1"
  * lastUpdated = "2025-12-06T10:00:14+01:00"
* identifier[KVNR].system = $sid-identifier-kvid-10
* identifier[KVNR].value = "G995030566"
* name[Name]
  * family = "Gabler"
  * given = "Erika"
* gender = #female
* birthDate = "1964-08-12"
