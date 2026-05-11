Instance: ExpEPAOpUnlinkEMPEntryParameters
InstanceOf: EPAOpLinkEMPEntryParametersR6
Usage: #example
* insert InstanceMetaProfileCurrent(EPAOpLinkEMPEntryParametersR6)
* id = "example-epa-op-unlink-emp-entry-parameters-1"
* parameter[acknowledgedChronologyId]
  * name = "acknowledgedChronologyId"
  * valueId = "0b383501-f078-464b-b984-9fdb6751601b"
* parameter[medicationPlanIdentifier]
  * name = "medicationPlanIdentifier"
  * valueIdentifier
    * system = $sid-medication-plan-identifier
    * value = "266620a9-2c26-41c1-b0cb-a10947b867f5"


// AUTO-DISABLED (SUSHI R6): Instance: ExpEPAOpUnlinkEMPEntryOutputParameters
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAOpLinkEMPEntryOutputParametersR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert InstanceMetaProfileCurrent(EPAOpLinkEMPEntryOutputParametersR6)
// AUTO-DISABLED (SUSHI R6): * id = "example-epa-op-unlink-emp-entry-output-parameters-1"
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * parameter[medicationStatement]
  // AUTO-DISABLED (SUSHI R6): * name = "medicationStatement"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_Unlink_Information
// AUTO-DISABLED (SUSHI R6): * parameter[empEntry]
  // AUTO-DISABLED (SUSHI R6): * name = "empEntry"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_Unlink_Request
// AUTO-DISABLED (SUSHI R6): * parameter[relatedActivity]
  // AUTO-DISABLED (SUSHI R6): * name = "relatedActivity"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_Unlink_Activity_Provenance
// AUTO-DISABLED (SUSHI R6): * parameter[relatedChronology]
  // AUTO-DISABLED (SUSHI R6): * name = "relatedChronology"
  // AUTO-DISABLED (SUSHI R6): * resource = eMP_Unlink_Chronology_Provenance





// Example inline Data

RuleSet: eMP_Unlink_Dosage
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

RuleSet: eMP_Unlink_Dosage_Rendered
* extension[renderedDosageInstruction].valueMarkdown = "1-0-0-0 Stück"
* extension[generatedDosageInstructionsMeta]
  * extension[algorithmVersion].valueString = "1.0.1"
  * extension[language].valueCode = #de-DE


// AUTO-DISABLED (SUSHI R6): Instance: eMP_Unlink_Request
// AUTO-DISABLED (SUSHI R6): InstanceOf: EMPMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EMPMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "266620a9-2c26-41c1-b0cb-a10947b867f5"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "3"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-11-25T14:00:00.000Z"
// AUTO-DISABLED (SUSHI R6): * identifier[MedicationPlanIdentifier]
  // AUTO-DISABLED (SUSHI R6): * system = $sid-medication-plan-identifier
  // AUTO-DISABLED (SUSHI R6): * value = "266620a9-2c26-41c1-b0cb-a10947b867f5"
// AUTO-DISABLED (SUSHI R6): * extension[context].valueCode = #EMP
// AUTO-DISABLED (SUSHI R6): // * extension[activity].valueReference = Reference(eMP_Link_Information)
// AUTO-DISABLED (SUSHI R6): * extension[reasonPatientInstruction].valueString = "Kopfschmerzen"
// AUTO-DISABLED (SUSHI R6): * extension[patientNote]
  // AUTO-DISABLED (SUSHI R6): * valueAnnotation.text = "Alkohol: das Risiko für Magen-Darm-Geschwüre und -Blutungen ist erhöht."
// AUTO-DISABLED (SUSHI R6): * extension[effectiveDosePeriod]
  // AUTO-DISABLED (SUSHI R6): * valuePeriod.start = "2026-11-02"
// AUTO-DISABLED (SUSHI R6): * intent = #plan
// AUTO-DISABLED (SUSHI R6): * status = #active
// AUTO-DISABLED (SUSHI R6): * subject = ExamplePatientReference
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Medication/d6508f13-9314-4e54-a0c3-3eafe1f356ff)
// AUTO-DISABLED (SUSHI R6): * authoredOn = "2026-11-01"
// AUTO-DISABLED (SUSHI R6): * note
  // AUTO-DISABLED (SUSHI R6): * text = "Hinweis für den LE"
// AUTO-DISABLED (SUSHI R6): // * reasonCode[icd-10-gm]
// AUTO-DISABLED (SUSHI R6): * insert eMP_Unlink_Dosage_Rendered
// AUTO-DISABLED (SUSHI R6): * dosageInstruction[+] insert eMP_Link_Dosage


// AUTO-DISABLED (SUSHI R6): Instance: eMP_Unlink_Information
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationStatementR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationStatementInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "3afe43bc-8b57-417f-9e84-a70ea5062a6c"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "3"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-11-25T14:00:00.000Z"
// AUTO-DISABLED (SUSHI R6): * extension[context].valueCode = #MANUAL
// AUTO-DISABLED (SUSHI R6): * status = #unknown
// AUTO-DISABLED (SUSHI R6): * subject = ExamplePatientReference
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Medication/b43cb3c2-552a-4da1-9eaa-605ac532a83d)
// AUTO-DISABLED (SUSHI R6): * dateAsserted = "2026-11-01"
// AUTO-DISABLED (SUSHI R6): // * effectiveDateTime = "2026-11-01"
// AUTO-DISABLED (SUSHI R6): * effectivePeriod
  // AUTO-DISABLED (SUSHI R6): * start = "2026-11-01"
// AUTO-DISABLED (SUSHI R6): * insert eMP_Unlink_Dosage_Rendered
// AUTO-DISABLED (SUSHI R6): * dosage[+] insert eMP_Link_Dosage
// * basedOn[+] = Reference(eMP_Link_Request)
//   * extension[isEMP].valueBoolean = true


Instance: eMP_Unlink_Activity_Provenance
InstanceOf: EPAActivityProvenance
Usage: #inline
* insert EPAActivityProvenanceInstanceMeta
* id = "6fbf6cb7-6425-49c5-a005-50aac83fd8cd"
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
* target[+] = Reference(MedicationStatement/3afe43bc-8b57-417f-9e84-a70ea5062a6c/_history/3)
* target[+] = Reference(MedicationRequest/266620a9-2c26-41c1-b0cb-a10947b867f5/_history/3)
* recorded = "2026-11-25T14:00:00.000Z"


Instance: eMP_Unlink_Chronology_Provenance
InstanceOf: EMPChronologyProvenanceR6
Usage: #inline
* insert EMPChronologyProvenanceInstanceMeta
* id = "005c1662-8f1c-49cb-a08c-dfdf08080032"
* extension[isEMPChronology].valueBoolean = true
* activity = $v3-DataOperation#UPDATE
* recorded = "2026-11-25T14:00:00.000Z"
* occurredDateTime = "2026-11-25T14:00:00.000Z"
* agent
  * type = $provenance-participant-type#author
  * who = Reference(PraxisTIOrganization)
  * who
    * identifier
      * type = $v2-0203#PRN
      * system = $sid-identifier-telematik-id
      * value = $PraxisTIOrganization-TelematikID
    * insert PraxisTIOrganization-display
* target[+] = Reference(MedicationRequest/266620a9-2c26-41c1-b0cb-a10947b867f5/_history/3)

