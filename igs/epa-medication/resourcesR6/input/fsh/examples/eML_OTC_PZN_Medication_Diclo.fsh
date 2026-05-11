RuleSet: Diclo_Content
* extension[type].valueCoding = $sct#781405001 
// "Medicinal product package (product)"
* extension[normSizeCode].valueCode = #N1
* status = #active
* code.coding[pzn] = $cs-pzn#14170042 "Diclo-ratiopharm® bei Schmerzen und Fieber 25 mg Filmtabletten"
* code.text = "Diclo-ratiopharm® bei Schmerzen und Fieber 25 mg Filmtabletten"
// AUTO-DISABLED (SUSHI R6): * form.coding[kbvDarreichungsform] = $cs-kbv-medication-darreichungsform#TAB
// AUTO-DISABLED (SUSHI R6): * amount.numerator.value = 20
// AUTO-DISABLED (SUSHI R6): * amount.numerator.unit = "St"
// AUTO-DISABLED (SUSHI R6): * amount.numerator.extension[totalQuantity].valueString = "20 St."
// AUTO-DISABLED (SUSHI R6): * amount.denominator.value = 1


Instance: Inline_Diclo
InstanceOf: EPAMedicationR6
Usage: #inline
* insert EPAMedicationInstanceMeta
* id = "fe79ff64-42e5-4cf8-a8d1-5ce527323dcc"
* insert Diclo_Content


Instance: Diclo
InstanceOf: EPAMedicationR6
Usage: #example
* insert EPAMedicationInstanceMeta
* id = "2571d29b-e213-40ec-b817-a1490718f491"
* meta
  * versionId = "1"
  * lastUpdated = "2026-02-22T14:43:33.244Z"
* identifier[EPAMedicationUniqueIdentifierR6].value = "B849184C973EA5FA7D9751E6FAA6AFCFFD100183596239F84DD2C0FG4C751D67"
* insert Diclo_Content


// MedicationStatement =================

RuleSet: Diclo_Information_Content
* extension[context].valueCode = #MANUAL
* status = #unknown
* subject = ExamplePatientReference
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Diclo)
// * effectiveDateTime = "2026-02-10"
* effectivePeriod
  * start = "2026-02-10"
* dosage
  // * extension[generatedDosageInstructions]
  //   * extension[algorithm].valueCoding = DosageTextAlgorithmCS|1.0.0#GematikDosageTextGenerator
  //   * extension[algorithmVersion].valueString = "1.0.1"
  //   * extension[language].valueCode = #de-DE
  //   * extension[text].valueString = "2 x täglich: morgens und abends — je 1 Stück"
  * timing.repeat
    * when[+] = #MORN
    * when[+] = #EVE
    * frequency = 2
    * period = 1
    * periodUnit = #d
  * doseAndRate.doseQuantity = 1 $kbv-dosiereinheit#1 "Stück"

* extension[renderedDosageInstruction].valueMarkdown = "1-0-1-0 Stück"
* extension[generatedDosageInstructionsMeta]
  * extension[algorithmVersion].valueString = "1.0.1"
  * extension[language].valueCode = #de-DE


// AUTO-DISABLED (SUSHI R6): Instance: Inline_Diclo_Information
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationStatementR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationStatementInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "36581a11-806e-4455-a1c9-9173b7d247fd"
// AUTO-DISABLED (SUSHI R6): * insert Diclo_Information_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Inline_Diclo)


// AUTO-DISABLED (SUSHI R6): Instance: Diclo_Information
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationStatementR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationStatementInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "71601cdb-8a53-4f26-b5d5-e5457b498e76"
// AUTO-DISABLED (SUSHI R6): * insert Diclo_Information_Content
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-02-22T14:43:33.444Z"
// AUTO-DISABLED (SUSHI R6): * dateAsserted = "2026-02-22"
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Diclo)


Instance: Diclo_Information_Provenance
InstanceOf: EPAActivityProvenance
Usage: #example
* insert EPAActivityProvenanceInstanceMeta
* id = "a36b3ae8-1c1d-4dbb-b209-ee2ee9fc31e6"
* activity = $v3-DataOperation#CREATE
* agent
  * type = $provenance-participant-type#author
  * who = Reference(ApothekeTIOrganization)
  * who
    * identifier
      * type = $v2-0203#PRN
      * system = $sid-identifier-telematik-id
      * value = $ApothekeTIOrganization-TelematikID
    * insert ApothekeTIOrganization-display
* target[+] = Reference(MedicationStatement/71601cdb-8a53-4f26-b5d5-e5457b498e76/_history/1)
* recorded = "2026-08-18T14:43:33.344Z"



// Cancelled
// Instance: Cancelled_Diclo
// InstanceOf: EPAMedicationR6
// Usage: #example
// * insert EPAMedicationInstanceMeta
// * id = "16920f85-569e-415b-8b01-476bb018c794"
// * meta
//   * versionId = "2"
//   * lastUpdated = "2026-02-23T15:00:00.500Z"
// * identifier[EPAMedicationUniqueIdentifierR6].value = "B849184C973EA5FA7D9751E6FAA6AFCFFD100183596239F84DD2C0FG4C751D67"
// * insert Diclo_Content
// * status = #entered-in-error


// Instance: Cancelled_Diclo_Information
// InstanceOf: EPAMedicationStatementR6
// Usage: #example
// * insert EPAMedicationStatementInstanceMeta
// * id = "6e340b90-35cd-4070-bad8-c26704d85d55"
// * insert Diclo_Information_Content
// * meta
//   * versionId = "2"
//   * lastUpdated = "2026-02-23T15:00:00.444Z"
// * medicationReference = Reference(Diclo)
// * status = #entered-in-error


Instance: Cancelled_Diclo_Information_Provenance
InstanceOf: EPAActivityProvenance
Usage: #example
* insert EPAActivityProvenanceInstanceMeta
* id = "39475183-3444-4b63-bfed-ae0741f4496b"
* activity = $v3-DataOperation#DELETE
* agent
  * type = $provenance-participant-type#author
  * who = Reference(ApothekeTIOrganization)
  * who
    * identifier
      * type = $v2-0203#PRN
      * system = $sid-identifier-telematik-id
      * value = $ApothekeTIOrganization-TelematikID
    * insert ApothekeTIOrganization-display
* target[+] = Reference(MedicationStatement/6e340b90-35cd-4070-bad8-c26704d85d55/_history/1)
* recorded = "2026-02-23T15:00:00.550Z"
