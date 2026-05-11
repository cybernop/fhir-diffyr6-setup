RuleSet: EPAMedicationDispenseInstanceMeta
* insert InstanceMetaProfile(EPAMedicationDispenseR6, 1.3.0)


Profile: EPAMedicationDispenseR6
Parent: MedicationDispense
Id: epa-medication-dispense
Title: "EPA MedicationDispense"
Description: "Defines the medication dispense resource for the Medication Service in the ePA system."
* insert Meta-With-Versioning
// preserve the version
* ^version = "1.3.1"
* ^date = "2026-03-20"
* ^status = #active

* extension MS
// AUTO-DISABLED (SUSHI R6): * extension contains
  // AUTO-DISABLED (SUSHI R6): RxPrescriptionProcessIdentifierExtension named rxPrescriptionProcessIdentifier 0..1 MS and
  // AUTO-DISABLED (SUSHI R6): $medicationDispense-renderedDosageInstruction-r5 named renderedDosageInstruction 0..1 MS and
  // AUTO-DISABLED (SUSHI R6): GeneratedDosageInstructionsMeta named generatedDosageInstructionsMeta 0..1 MS

* extension[rxPrescriptionProcessIdentifier]
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionIdentifierMS

* insert renderedDosageInstructionDefinition

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier 0.. MS
* identifier contains
    RxOriginatorProcessIdentifierR6 0..1 MS

* identifier[RxOriginatorProcessIdentifierR6] only RxOriginatorProcessIdentifierR6
* identifier[RxOriginatorProcessIdentifierR6] ^patternIdentifier.system = $sid-identifier-rx-originator-process
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6] insert IdentifierMS

* status from TIMedicationDispenseStatusVS
* status ^short = "Status of medication dispense"
* status MS

// This is > ePA 3.1.2
* category MS
  * ^short = "Fehlender oder nicht vorhandener Wert weist auf eine Abgabe mit Verschreibung hin."
* category from TIMedicationDispenseCategoryVS
  * ^binding.description = "Definiert den Kontext einer Abgabe: mit oder ohne ärztliche Verschreibung."
  // AUTO-DISABLED (SUSHI R6): * insert CodeableConceptMS
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * medication[x] only Reference
// AUTO-DISABLED (SUSHI R6): * medicationReference MS
// AUTO-DISABLED (SUSHI R6): * medicationReference only Reference(Medication)
// AUTO-DISABLED (SUSHI R6): * medicationReference insert ReferenceMS

* insert Subject(subject)
* performer 1..1 MS
  * actor only Reference(Organization or PractitionerRole)
  * actor MS
  // AUTO-DISABLED (SUSHI R6): * actor insert ReferenceMS

* authorizingPrescription 0.. MS
  // AUTO-DISABLED (SUSHI R6): * insert ReferenceMS
  * reference 1..
* authorizingPrescription only Reference(MedicationRequest)
* whenHandedOver 1.. MS
// * dosageInstruction MS
//   * ^short = "Hier werden Informationen zur Dosierung angegeben."
//   * ^definition = "Hier werden Informationen zur Dosierung angegeben."
//   * text 0..1 MS
//   * text ^short = "Hier kann die Dosieranweisung in Form eines Freitextes abgebildet werden."
//   * text ^definition = "Hier kann die Dosieranweisung in Form eines Freitextes abgebildet werden."
* dosageInstruction MS
* dosageInstruction only DosageDgMP
  * ^short = "Hier werden Informationen zur Dosierung angegeben."
  * ^definition = "Hier werden Informationen zur Dosierung angegeben."
  // AUTO-DISABLED (SUSHI R6): * insert DosageDgMPMS
* substitution MS
  * wasSubstituted MS
