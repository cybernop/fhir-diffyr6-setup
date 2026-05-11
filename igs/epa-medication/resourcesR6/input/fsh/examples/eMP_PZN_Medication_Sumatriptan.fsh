RuleSet: eMP_Sumatriptan_Content
* extension[context].valueCode = #EMP
* insert Sumatriptan_Content


Instance: eMP_Sumatriptan
InstanceOf: EMPMedicationR6
Usage: #example
* insert EMPMedicationInstanceMeta
* id = "87f08ba2-da7e-467e-86aa-404d9035297c"
* meta
  * versionId = "1"
  * lastUpdated = "2026-11-01T14:00:00.200Z"

* identifier[EPAMedicationUniqueIdentifierR6].value = "5CA9B89A31D81FFF6869E6A93B192C03C7F715FC4A568FB060630DD639F94EF1"
* insert eMP_Sumatriptan_Content


// eMP MedicationRequest =======================
RuleSet: eMP_Sumatriptan_Request_Dosage
// * extension[generatedDosageInstructions]
//   * extension[algorithm].valueCoding = DosageTextAlgorithmCS|1.0.0#GematikDosageTextGenerator
//   * extension[algorithmVersion].valueString = "1.0.1"
//   * extension[language].valueCode = #de-DE
//   * extension[text].valueString = "täglich: morgens — je 1 Stück"
* timing.repeat
  * when[+] = #MORN
  * frequency = 1
  * period = 1
  * periodUnit = #d
* doseAndRate.doseQuantity = 1 $kbv-dosiereinheit#1 "Stück"

RuleSet: eMP_Sumatriptan_Request_Dosagee_Rendered
* extension[renderedDosageInstruction].valueMarkdown = "1-0-0-0 Stück"
* extension[generatedDosageInstructionsMeta]
  * extension[algorithmVersion].valueString = "1.0.1"
  * extension[language].valueCode = #de-DE


RuleSet: eMP_Sumatriptan_Request_Content
* extension[context].valueCode = #EMP
* extension[reasonPatientInstruction].valueString = "akuten Behandlung von Migräneanfällen mit und ohne Aura"
* extension[patientNote]
  * valueAnnotation.text = "Bitte schützen Sie das Arzneimittel vor hohen Temperaturen und direkter Sonneneinstrahlung."
* extension[effectiveDosePeriod]
  * valuePeriod.start = "2026-12-01"
  * valuePeriod.end = "2027-02-01"
* extension[originMedication]
  * valueReference = Reference(eMP_Sumatriptan)
* intent = #plan
* status = #active
* subject = ExamplePatientReference
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(eMP_Sumatriptan)
* authoredOn = "2026-11-01"
* note
  * text = "Hinweis für den LE"
// * reasonCode[icd-10-gm]
* insert eMP_Sumatriptan_Request_Dosagee_Rendered
* dosageInstruction[+] insert eMP_Sumatriptan_Request_Dosage


// AUTO-DISABLED (SUSHI R6): Instance: eMP_Sumatriptan_Request
// AUTO-DISABLED (SUSHI R6): InstanceOf: EMPMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EMPMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "266620a9-2c26-41c1-b0cb-a10947b867f5"
// AUTO-DISABLED (SUSHI R6): * insert eMP_Sumatriptan_Request_Content
// AUTO-DISABLED (SUSHI R6): * identifier[MedicationPlanIdentifier]
  // AUTO-DISABLED (SUSHI R6): * system = $sid-medication-plan-identifier
  // AUTO-DISABLED (SUSHI R6): * value = "266620a9-2c26-41c1-b0cb-a10947b867f5"
// AUTO-DISABLED (SUSHI R6): // * extension[activity].valueReference = Reference(Sumatriptan_Information)
// AUTO-DISABLED (SUSHI R6): * extension[activity]
  // AUTO-DISABLED (SUSHI R6): * extension[reference].valueReference = Reference(Sumatriptan_Information)
  // AUTO-DISABLED (SUSHI R6): * extension[addedOn].valueDateTime = "2026-11-01T15:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Sumatriptan)
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-11-01T15:43:33.244Z"


// EPAActivityProvenance

Instance: eMP_Sumatripta_Activity_Provenance
InstanceOf: EPAActivityProvenance
Usage: #example
* insert EPAActivityProvenanceInstanceMeta
* id = "9090b28c-e165-4823-b82b-15bb63012123"
* activity = $v3-DataOperation#UPDATE
* agent
  * type = $provenance-participant-type#author
  * who = Reference(PraxisTIOrganization)
  * who
    * identifier
      * type = $v2-0203#PRN
      * system = $sid-identifier-telematik-id
      * value = $PraxisTIOrganization-TelematikID
    * insert PraxisTIOrganization-display
* target[+] = Reference(MedicationRequest/266620a9-2c26-41c1-b0cb-a10947b867f5/_history/1)
* recorded = "2026-11-01T15:43:33.244Z"


// EMPChronologyProvenanceR6

Instance: eMP_Sumatripta_Chronology_Provenance
InstanceOf: EMPChronologyProvenanceR6
Usage: #example
* insert EMPChronologyProvenanceInstanceMeta
* id = "2e112cb5-3b9f-4434-848e-26e27756cd30"
* extension[isEMPChronology].valueBoolean = true
* activity = $v3-DataOperation#UPDATE
* recorded = "2026-11-01T15:43:33.244Z"
* occurredDateTime = "2026-11-01T15:43:33.244Z"
* agent
  * type = $provenance-participant-type#author
  * who = Reference(PraxisTIOrganization)
  * who
    * identifier
      * type = $v2-0203#PRN
      * system = $sid-identifier-telematik-id
      * value = $PraxisTIOrganization-TelematikID
    * insert PraxisTIOrganization-display
* target[+] = Reference(MedicationRequest/266620a9-2c26-41c1-b0cb-a10947b867f5/_history/2)
