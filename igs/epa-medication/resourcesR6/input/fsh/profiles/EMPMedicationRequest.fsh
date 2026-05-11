RuleSet: EMPMedicationRequestInstanceMeta
* insert InstanceMetaProfile(EMPMedicationRequestR6, 1.3.1)


Profile: EMPMedicationRequestR6
Parent: MedicationRequest
Id: emp-medication-request
Title: "eMP MedicationRequest"
Description: "eMP-Eintrag: Hält die Medikationsinformationen eines Eintrags für den elektronischen MedikationsPlan (eMP) vor und stellt das zentrale Element dar. Es stellt die Verbindung zwischen der Planung und einem oder mehrerer Verschreibungsprozesse oder Nachträge."
* insert Meta-With-Versioning
// preserve the version
* ^version = "1.3.2"
* ^date = "2026-03-20"
* ^status = #active

* extension MS
// AUTO-DISABLED (SUSHI R6): * extension contains
  // AUTO-DISABLED (SUSHI R6): ContextExtension named context 1..1 MS and
  // AUTO-DISABLED (SUSHI R6): EMPMedicationRequestActitvityExtension named activity 0..* MS and
  // AUTO-DISABLED (SUSHI R6): ReasonPatientInstructionExtension named reasonPatientInstruction 0..1 MS and
  // AUTO-DISABLED (SUSHI R6): PatientNoteExtension named patientNote 0..1 MS and
  // AUTO-DISABLED (SUSHI R6): $medicationRequest-effectiveDosePeriod-r5 named effectiveDosePeriod 0..1 MS and
  // AUTO-DISABLED (SUSHI R6): $medicationRequest-renderedDosageInstruction-r5 named renderedDosageInstruction 0..1 MS and
  // AUTO-DISABLED (SUSHI R6): GeneratedDosageInstructionsMeta named generatedDosageInstructionsMeta 0..1 MS and
  // AUTO-DISABLED (SUSHI R6): EMPOriginMedicationExtension named originMedication 0..1 MS

* extension[context]
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionCodeMS
  // AUTO-DISABLED (SUSHI R6): * valueCode = #EMP

* extension[activity]
  // AUTO-DISABLED (SUSHI R6): * ^short = "Aktivität die zu diesem Planelement gehört"
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionMS
  // AUTO-DISABLED (SUSHI R6): * extension[reference] MS
    // AUTO-DISABLED (SUSHI R6): * insert ExtensionReferenceMS
  // AUTO-DISABLED (SUSHI R6): * extension[addedOn] MS
    // AUTO-DISABLED (SUSHI R6): * insert ExtensionDateTimeMS

* extension[reasonPatientInstruction]
  // AUTO-DISABLED (SUSHI R6): * ^short = "Patientenlesbarer Grund für den Planungseintrag"
  // AUTO-DISABLED (SUSHI R6): * ^definition = "Benennt den Behandlungsanlass für das Arzneimittel in versichertenverständlicher Form und unterstützt so Verständnis und Wiedererkennung auf dem eMP. Ergänzend angegebene ICD-10-Codes enthalten oft vergleichbare Informationen in medizinischer Fachsprache."
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionStringMS

* extension[patientNote]
  // AUTO-DISABLED (SUSHI R6): * ^short = "Hinweis für den Patienten"
  // AUTO-DISABLED (SUSHI R6): * ^definition = "Übergeordnete Hinweise zur Therapie mit dem zugeordneten Arzneimittel; sie richten sich an den Versicherten, sind aber nicht der Dosierung zuzuordnen. Hierzu gehören bspw. mögliche unerwünschte Arzneimittelwirkungen, Empfehlungen zu regelmäßigen Kontrolluntersuchungen oder zur korrekten Lagerung des Arzneimittels."
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionAnnotationMS

// MedicationRequest.effectiveDosePeriod R5
* extension[effectiveDosePeriod]
  // AUTO-DISABLED (SUSHI R6): * ^short = "Zeitraum, in dem die Medikation eingenommen werden soll."
  // AUTO-DISABLED (SUSHI R6): * ^definition = "Zeitraum, über den die Medikation eingenommen werden soll. Wenn mehrere dosageInstruction-Zeilen vorhanden sind (z. B. bei einer ausschleichenden Dosierung), entspricht dieser Zeitraum dem frühesten Startdatum und dem spätesten Enddatum der dosageInstructions."
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionPeriodMS
  * valuePeriod
    // AUTO-DISABLED (SUSHI R6): * start obeys epa-datetime
    // AUTO-DISABLED (SUSHI R6): * end obeys epa-datetime

* extension[originMedication]
  // AUTO-DISABLED (SUSHI R6): * ^short = "Referenz auf die Ursprungs-Medication (Basis des eMP-Eintrags)"
  // AUTO-DISABLED (SUSHI R6): * ^definition = "Zeigt auf die Medication-Instanz, die als Grundlage für diesen MedicationRequest diente und stellt so den Ursprung (Origin) des eMP-Eintrags dar."
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionReferenceMS

* insert renderedDosageInstructionDefinition

* identifier 0.. MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* identifier contains MedicationPlanIdentifier 0..1 MS
* identifier[MedicationPlanIdentifier] only MedicationPlanIdentifier
* identifier[MedicationPlanIdentifier]
  // AUTO-DISABLED (SUSHI R6): * insert IdentifierMS
  * ^patternIdentifier.system = $sid-medication-plan-identifier
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * medication[x] only Reference(EPAMedicationR6 or EMPMedicationR6)
// AUTO-DISABLED (SUSHI R6): * medicationReference 1..1 MS
  // AUTO-DISABLED (SUSHI R6): * ^short = "Arzneimittel, welches geplant wird"
  // AUTO-DISABLED (SUSHI R6): * insert ReferenceMS

* insert Subject(subject)

* authoredOn 1..1 MS
  * obeys epa-datetime

* dosageInstruction 1..* MS
* dosageInstruction only DosageDgMP
  * ^short = "Hier werden Informationen zur Dosierung angegeben."
  * ^definition = "Hier werden Informationen zur Dosierung angegeben."
  // AUTO-DISABLED (SUSHI R6): * insert DosageDgMPMS

* status from EMPMedicationRequestStatusVS (required)
* status MS
  * ^short = "active | on-hold | completed | entered-in-error | stopped"

* intent = #plan
  * ^short = "plan"
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * reasonCode 0..1 MS
  // AUTO-DISABLED (SUSHI R6): * coding MS
    // AUTO-DISABLED (SUSHI R6): * ^slicing.discriminator.type = #pattern
    // AUTO-DISABLED (SUSHI R6): * ^slicing.discriminator.path = "$this"
    // AUTO-DISABLED (SUSHI R6): * ^slicing.rules = #closed
  // AUTO-DISABLED (SUSHI R6): * coding contains
    // AUTO-DISABLED (SUSHI R6): icd-10-gm 0..1 MS
  // AUTO-DISABLED (SUSHI R6): * coding[icd-10-gm] only $coding-icd-10-gm
    // AUTO-DISABLED (SUSHI R6): * ^patternCoding.system = $icd-10-gm
    // AUTO-DISABLED (SUSHI R6): * ^definition = "Der ICD-Code ist in Deutschland das abrechnungsrelevante Code System im ambulanten und stationären Bereich."
    // AUTO-DISABLED (SUSHI R6): * insert CodingMS
    // AUTO-DISABLED (SUSHI R6): * system 1..
    // AUTO-DISABLED (SUSHI R6): * version 1..
    // AUTO-DISABLED (SUSHI R6): * code 1..
    // AUTO-DISABLED (SUSHI R6): * display 1..
    // AUTO-DISABLED (SUSHI R6): * extension MS
    // AUTO-DISABLED (SUSHI R6): * extension[Mehrfachcodierungs-Kennzeichen] MS
      // AUTO-DISABLED (SUSHI R6): * insert ExtensionCodingMS
    // AUTO-DISABLED (SUSHI R6): * extension[Seitenlokalisation] MS
      // AUTO-DISABLED (SUSHI R6): * insert ExtensionCodingMS
    // AUTO-DISABLED (SUSHI R6): * extension[Diagnosesicherheit] MS
      // AUTO-DISABLED (SUSHI R6): * insert ExtensionCodingMS

* note 0..1 MS
  * ^short = "Zusätzliche Informationen durch einen Leistungserbringenden"
  * insert AnnotationMS
  * time
    * ^comment = "This information should be generated automatically"
