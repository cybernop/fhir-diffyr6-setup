
// AUTO-DISABLED (SUSHI R6): Instance: InvalidExampleHistoryReferenceSumatriptanEmpRequest
// AUTO-DISABLED (SUSHI R6): InstanceOf: EMPMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): Title: "INVALIDE - EMP MedicationRequest mit History-Referenzen (Sumatriptan)"
// AUTO-DISABLED (SUSHI R6): Description: "Dieses Beispiel ist absichtlich invalide und demonstriert, dass History-Referenzen (/_history/) in den Extensions 'originMedication' und 'activity' nicht erlaubt sind. Die Validierungsfehler sind gewollt und erwartet."
// AUTO-DISABLED (SUSHI R6): * insert EMPMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "55b8a1f8-daeb-4d1e-a0e1-36279e2d9913"
// AUTO-DISABLED (SUSHI R6): * extension[context].valueCode = #EMP
// AUTO-DISABLED (SUSHI R6): * extension[reasonPatientInstruction].valueString = "akuten Behandlung von Migräneanfällen mit und ohne Aura"
// AUTO-DISABLED (SUSHI R6): * extension[patientNote]
  // AUTO-DISABLED (SUSHI R6): * valueAnnotation.text = "Bitte schützen Sie das Arzneimittel vor hohen Temperaturen und direkter Sonneneinstrahlung."
// AUTO-DISABLED (SUSHI R6): * extension[effectiveDosePeriod]
  // AUTO-DISABLED (SUSHI R6): * valuePeriod.start = "2026-12-01"
  // AUTO-DISABLED (SUSHI R6): * valuePeriod.end = "2027-02-01"
// AUTO-DISABLED (SUSHI R6): * extension[originMedication]
  // AUTO-DISABLED (SUSHI R6): * valueReference = Reference(Medication/fc7b28e8-05ac-4ac8-86d7-7677d9c6134e/_history/2)
// AUTO-DISABLED (SUSHI R6): * extension[activity]
  // AUTO-DISABLED (SUSHI R6): * extension[reference].valueReference = Reference(MedicationStatement/f29f1d0c-be05-4b0d-a335-3e508da39c0c/_history/2)
  // AUTO-DISABLED (SUSHI R6): * extension[addedOn].valueDateTime = "2026-11-01T15:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * identifier[MedicationPlanIdentifier]
  // AUTO-DISABLED (SUSHI R6): * system = $sid-medication-plan-identifier
  // AUTO-DISABLED (SUSHI R6): * value = "266620a9-2c26-41c1-b0cb-a10947b867f5"
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Sumatriptan)
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-11-01T15:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * intent = #plan
// AUTO-DISABLED (SUSHI R6): * status = #active
// AUTO-DISABLED (SUSHI R6): * subject = ExamplePatientReference
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(eMP_Sumatriptan)
// AUTO-DISABLED (SUSHI R6): * authoredOn = "2026-11-01"
// AUTO-DISABLED (SUSHI R6): * note
  // AUTO-DISABLED (SUSHI R6): * text = "Hinweis für den LE"
// AUTO-DISABLED (SUSHI R6): * extension[renderedDosageInstruction].valueMarkdown = "1-0-0-0 Stück"
// AUTO-DISABLED (SUSHI R6): * extension[generatedDosageInstructionsMeta]
  // AUTO-DISABLED (SUSHI R6): * extension[algorithmVersion].valueString = "1.0.1"
  // AUTO-DISABLED (SUSHI R6): * extension[language].valueCode = #de-DE
// AUTO-DISABLED (SUSHI R6): * dosageInstruction[+]
  // AUTO-DISABLED (SUSHI R6): * timing.repeat
    // AUTO-DISABLED (SUSHI R6): * when[+] = #MORN
    // AUTO-DISABLED (SUSHI R6): * frequency = 1
    // AUTO-DISABLED (SUSHI R6): * period = 1
    // AUTO-DISABLED (SUSHI R6): * periodUnit = #d
  // AUTO-DISABLED (SUSHI R6): * doseAndRate.doseQuantity = 1 $kbv-dosiereinheit#1 "Stück"