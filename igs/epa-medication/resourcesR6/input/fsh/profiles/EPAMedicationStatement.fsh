RuleSet: EPAMedicationStatementInstanceMeta
* insert InstanceMetaProfile(EPAMedicationStatementR6, 1.3.0)


Profile: EPAMedicationStatementR6
Parent: MedicationStatement
Id: epa-medication-statement
Title: "EPA MedicationStatement"
Description: "Hält die Medikationsinformationen eines Eintrags in der elektronischen Medikationsliste (eML) vor und stellt das zentrale Element dar. Es wird zu Verschreibungs- und Dispensierinformationen als auch Nachträgen in der eML genutzt."
* insert Meta-With-Versioning
// preserve the version
* ^version = "1.3.2"
* ^date = "2026-03-20"
* ^status = #active

* obeys epa-med-statement-status

* extension MS
// AUTO-DISABLED (SUSHI R6): * extension contains
  // AUTO-DISABLED (SUSHI R6): ContextExtension named context 1..1 MS and
  // AUTO-DISABLED (SUSHI R6): RxPrescriptionProcessIdentifierExtension named rxPrescriptionProcessIdentifier 0..1 MS and
  // AUTO-DISABLED (SUSHI R6): EPAMedicationStatementProcessingEventExtension named processingEvent 0..* MS and
  // AUTO-DISABLED (SUSHI R6): $medicationStatement-renderedDosageInstruction-r5 named renderedDosageInstruction 0..1 MS and
  // AUTO-DISABLED (SUSHI R6): GeneratedDosageInstructionsMeta named generatedDosageInstructionsMeta 0..1 MS
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * extension[rxPrescriptionProcessIdentifier] insert ExtensionIdentifierMS

* extension[context]
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionCodeMS
  // AUTO-DISABLED (SUSHI R6): * valueCode from EPAMedicationStatementContextCodeVS (required)

* extension[processingEvent]
  // AUTO-DISABLED (SUSHI R6): * ^short = "Ein Ereignis, welches während eines Prozessschritts auftritt."
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionExtensionMS
  // AUTO-DISABLED (SUSHI R6): * extension[event] MS
    // AUTO-DISABLED (SUSHI R6): * insert ExtensionCodeMS
  // AUTO-DISABLED (SUSHI R6): * extension[dateTime] MS
    // AUTO-DISABLED (SUSHI R6): * insert ExtensionDateTimeMS

* insert renderedDosageInstructionDefinition
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * medication[x] only Reference(EPAMedicationR6)
// AUTO-DISABLED (SUSHI R6): * medicationReference 1..1 MS
  // AUTO-DISABLED (SUSHI R6): * ^short = "Arzneimittel, welches diese Medikationsinformation bzw. dieses MedicationStatement näher beschreibt"
  // AUTO-DISABLED (SUSHI R6): * insert ReferenceMS

* insert Subject(subject)

* dateAsserted MS
  * obeys epa-datetime

* effective[x] MS
  * ^short = "effective[x] gibt den Zeitpunkt oder Zeitraum der Gültigkeit der Medikation an"
  * ^definition = "Das Element effective[x] gibt den Zeitraum an, in dem die Angaben zur Medikation gültig sind. Je nach Situation kann hierfür ein einzelner Zeitpunkt (effectiveDateTime) oder ein Zeitraum (effectivePeriod mit Start und ggf. Enddatum) angegeben werden"
* effectiveDateTime 0..1 MS
  * obeys epa-datetime
* effectivePeriod MS
  // AUTO-DISABLED (SUSHI R6): * insert PeriodMS
  // AUTO-DISABLED (SUSHI R6): * start 0..1
    // AUTO-DISABLED (SUSHI R6): * obeys epa-datetime
  // AUTO-DISABLED (SUSHI R6): * end 0..1
    // AUTO-DISABLED (SUSHI R6): * obeys epa-datetime

* dosage MS
* dosage only DosageDgMP
  * ^short = "Strukturierte Dosierung/Gebrauchsanweisung"
  * ^definition = "Hier werden strukturierte Informationen zur Dosierung/Gebrauchsanweisung zur Arzneimitteleinnahme gemäß Vorgabe von HL7 Deutschland e.V. angegeben."
  // AUTO-DISABLED (SUSHI R6): * insert DosageDgMPMS

* status MS
* status from EPAMedicationStatementStatusVS (required)
  * ^short = "unknown | entered-in-error | intended"

* derivedFrom MS
* derivedFrom only Reference(EPAMedicationRequestR6 or EPAMedicationDispenseR6)
  * ^short = "Information des Verschreibungs- und Dispensierprozesses"
  // AUTO-DISABLED (SUSHI R6): * insert ReferenceMS
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * basedOn MS
// AUTO-DISABLED (SUSHI R6): * basedOn only Reference(EPAMedicationRequestR6 or EMPMedicationRequestR6)
  // AUTO-DISABLED (SUSHI R6): * insert ReferenceMS
  // AUTO-DISABLED (SUSHI R6): * extension MS
  // AUTO-DISABLED (SUSHI R6): * extension contains IsEMPExtension named isEMP 0..1 MS
  * extension[isEMP]
    // AUTO-DISABLED (SUSHI R6): * insert ExtensionBooleanMS

