Alias: $kbv-dosiereinheit =  https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_BMP_DOSIEREINHEIT

Instance: ExampleExportHistoryBundle
InstanceOf: Bundle
Title: "Example Export History Bundle"

* id = "31a277f5-6ed9-4ee2-a864-4abc26b5de5b"

* type = #history
* total = 3

// DELETE: this was a delete
* entry[0].fullUrl = "http://epa4all/epa/medication/api/v1/fhir/MedicationRequest/1959b8cd-58d2-4961-aa10-74d7e68896403"
* entry[0].request.method = #DELETE
* entry[0].request.url = "MedicationRequest/1959b8cd-58d2-4961-aa10-74d7e68896403"
* entry[0].response.status = "200 OK"
* entry[0].response.lastModified = "2026-08-22T15:00:00.000Z"

// POST: this was an update
* entry[1].fullUrl = "http://epa4all/epa/medication/api/v1/fhir/MedicationRequest/1959b8cd-58d2-4961-aa10-74d7e68896403"
// AUTO-DISABLED (SUSHI R6): * entry[1].resource = ExampleExportMedicationRequest2
* entry[1].request.method = #PUT
* entry[1].request.url = "MedicationRequest/1959b8cd-58d2-4961-aa10-74d7e68896403"
* entry[1].response.status = "200 OK"
* entry[1].response.lastModified = "2026-08-22T14:50:10.000Z"
* entry[1].response.location = "MedicationDispense/1959b8cd-58d2-4961-aa10-74d7e68896403/_history/2"

// POST: this was a create
* entry[2].fullUrl = "http://epa4all/epa/medication/api/v1/fhir/MedicationRequest/1959b8cd-58d2-4961-aa10-74d7e68896403"
// AUTO-DISABLED (SUSHI R6): * entry[2].resource = ExampleExportMedicationRequest1
* entry[2].request.method = #POST
* entry[2].request.url = "MedicationRequest"
* entry[2].response.status = "201 Created"
* entry[2].response.lastModified = "2026-08-22T14:43:33.244Z"
* entry[2].response.location = "MedicationRequest/1959b8cd-58d2-4961-aa10-74d7e68896403/_history/1"


RuleSet: ExampleExportMedicationRequest_Content
* extension[+]
  * url = "https://gematik.de/fhir/epa-medication/StructureDefinition/context-extension"
  * valueCode = #EMP
* extension[+]
  * url = "https://gematik.de/fhir/epa-medication/StructureDefinition/reason-patient-instruction-extension"
  * valueString = "akuten Behandlung von Migräneanfällen mit und ohne Aura"
* extension[+]
  * url = "https://gematik.de/fhir/epa-medication/StructureDefinition/patient-note-extension"
  * valueAnnotation.text = "Bitte schützen Sie das Arzneimittel vor hohen Temperaturen und direkter Sonneneinstrahlung."
* extension[+]
  * url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod"
  * valuePeriod.start = "2026-08-22"
  * valuePeriod.end = "2026-08-25"
* extension[+]
  * url = "https://gematik.de/fhir/epa-medication/StructureDefinition/emp-origin-medication-extension"
  * valueReference = Reference(Medication/9cbf1803-e125-40d3-ad68-1e155f71e252)
* intent = #plan
* status = #active
* subject 
  * identifier
    * value = "X110411319"
    * system = "http://fhir.de/sid/gkv/kvid-10"
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Medication/9cbf1803-e125-40d3-ad68-1e155f71e252)
* authoredOn = "2026-08-22"
* note
  * text = "Hinweis für den LE"

* extension[+]
  * url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction"
  * valueMarkdown = "1-0-0-0 Stück"
* extension[+]
  * url = "http://ig.fhir.de/igs/medication/StructureDefinition/GeneratedDosageInstructionsMeta"
  * extension[+]
    * url = "algorithmVersion"
    * valueString = "1.0.1"
  * extension[+]
    * url = "language"
    * valueCode = #de-DE

* dosageInstruction
  * timing.repeat
    * when[+] = #MORN
    * frequency = 1
    * period = 1
    * periodUnit = #d
  * doseAndRate.doseQuantity = 1 $kbv-dosiereinheit#1 "Stück"



// AUTO-DISABLED (SUSHI R6): Instance: ExampleExportMedicationRequest1
// AUTO-DISABLED (SUSHI R6): InstanceOf: MedicationRequest
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * id = "1959b8cd-58d2-4961-aa10-74d7e68896403"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-08-22T14:43:33.244Z"
  // AUTO-DISABLED (SUSHI R6): * profile[+] = "https://gematik.de/fhir/epa-medication/StructureDefinition/emp-medication-request|1.3.0" 
// AUTO-DISABLED (SUSHI R6): * insert ExampleExportMedicationRequest_Content


// AUTO-DISABLED (SUSHI R6): Instance: ExampleExportMedicationRequest2
// AUTO-DISABLED (SUSHI R6): InstanceOf: MedicationRequest
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * id = "1959b8cd-58d2-4961-aa10-74d7e68896403"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-08-22T14:50:10.000Z"
  // AUTO-DISABLED (SUSHI R6): * profile[+] = "https://gematik.de/fhir/epa-medication/StructureDefinition/emp-medication-request|1.3.0" 
// AUTO-DISABLED (SUSHI R6): * insert ExampleExportMedicationRequest_Content
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * extension[+]
  // AUTO-DISABLED (SUSHI R6): * url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction"
  // AUTO-DISABLED (SUSHI R6): * valueMarkdown = "1-0-2-0 Stück"
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * dosageInstruction[+]
  // AUTO-DISABLED (SUSHI R6): * timing.repeat.frequency = 1
  // AUTO-DISABLED (SUSHI R6): * timing.repeat.period = 1
  // AUTO-DISABLED (SUSHI R6): * timing.repeat.periodUnit = #d
  // AUTO-DISABLED (SUSHI R6): * timing.repeat.when = #MORN
  // AUTO-DISABLED (SUSHI R6): * doseAndRate[0].doseQuantity = 1 '1' "Stück"
// AUTO-DISABLED (SUSHI R6): * dosageInstruction[+]
  // AUTO-DISABLED (SUSHI R6): * timing.repeat.frequency = 1
  // AUTO-DISABLED (SUSHI R6): * timing.repeat.period = 1
  // AUTO-DISABLED (SUSHI R6): * timing.repeat.periodUnit = #d
  // AUTO-DISABLED (SUSHI R6): * timing.repeat.when = #EVE
  // AUTO-DISABLED (SUSHI R6): * doseAndRate[0].doseQuantity = 2 '1' "Stück"
