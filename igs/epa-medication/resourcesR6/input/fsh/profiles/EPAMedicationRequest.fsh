RuleSet: EPAMedicationRequestInstanceMeta
* insert InstanceMetaProfile(EPAMedicationRequestR6, 1.3.0)


Profile: EPAMedicationRequestR6
Parent: MedicationRequest
Id: epa-medication-request
Title: "EPA MedicationRequest"
Description: "Defines the medication request resource for the Medication Service in the ePA system."
* insert Meta-With-Versioning
// preserve the version
* ^version = "1.3.2"
* ^date = "2026-03-20"
* ^status = #active

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "ePrescription identifier and overall transaction identifier"
* identifier ^slicing.ordered = false
* identifier 0.. MS
* identifier contains
    RxPrescriptionProcessIdentifierR6 0..1 MS and
    RxOriginatorProcessIdentifierR6 0..1 MS
* identifier[RxPrescriptionProcessIdentifierR6] only RxPrescriptionProcessIdentifierR6
* identifier[RxPrescriptionProcessIdentifierR6] ^patternIdentifier.system = "https://gematik.de/fhir/epa-medication/sid/rx-prescription-process-identifier"
// AUTO-DISABLED (SUSHI R6): * identifier[RxPrescriptionProcessIdentifierR6] insert IdentifierMS

* identifier[RxOriginatorProcessIdentifierR6] only RxOriginatorProcessIdentifierR6
* identifier[RxOriginatorProcessIdentifierR6] ^patternIdentifier.system = $sid-identifier-rx-originator-process
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6] insert IdentifierMS

* extension MS
// AUTO-DISABLED (SUSHI R6): * extension contains
    // AUTO-DISABLED (SUSHI R6): MultiplePrescriptionExtension named multiplePrescription 0..1 MS and
    // AUTO-DISABLED (SUSHI R6): IndicatorBVGExtension named isBvg 0..1 MS and
    // AUTO-DISABLED (SUSHI R6): IndicatorSERExtension named isSer 0..1 MS and
    // AUTO-DISABLED (SUSHI R6): PrescriberIDExtension named prescriberID 0..1 MS and
    // AUTO-DISABLED (SUSHI R6): PatientIDExtension named patientID 0..1 MS and
    // AUTO-DISABLED (SUSHI R6): NarcoticsExtension named narcotics 0..1 MS and
    // AUTO-DISABLED (SUSHI R6): TeratogenicExtension named teratogenic 0..1 MS and
    // AUTO-DISABLED (SUSHI R6): $medicationRequest-renderedDosageInstruction-r5 named renderedDosageInstruction 0..1 MS and
    // AUTO-DISABLED (SUSHI R6): GeneratedDosageInstructionsMeta named generatedDosageInstructionsMeta 0..1 MS
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * extension[isBvg] insert ExtensionBooleanMS
// AUTO-DISABLED (SUSHI R6): * extension[isSer] insert ExtensionBooleanMS

* extension[narcotics]
  // AUTO-DISABLED (SUSHI R6): * ^short = "Betäubungsmittel (BtM)"
  // AUTO-DISABLED (SUSHI R6): * ^definition = "Abbildung der Angaben zur Verordnung eines Betäubungsmittels im Sinne des Betäubungsmittelgesetzes (BtMG)"
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionExtensionMS

* extension[teratogenic]
  // AUTO-DISABLED (SUSHI R6): * ^short = "T-Rezept"
  // AUTO-DISABLED (SUSHI R6): * ^definition = "Abbildung der Angaben zur Verordnung eines teratogenen Arzneimittels (T-Rezept)"
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionExtensionMS
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * extension[prescriberID] insert ExtensionIdentifierMS
// AUTO-DISABLED (SUSHI R6): * extension[patientID] insert ExtensionIdentifierMS
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * extension[multiplePrescription] MS
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionExtensionMS
  // AUTO-DISABLED (SUSHI R6): * extension[indicator] MS
    // AUTO-DISABLED (SUSHI R6): * insert ExtensionBooleanMS
    // AUTO-DISABLED (SUSHI R6): * value[x] only boolean
// AUTO-DISABLED (SUSHI R6): 
  // AUTO-DISABLED (SUSHI R6): * extension[counter] MS
    // AUTO-DISABLED (SUSHI R6): * insert ExtensionRatioMS
    // AUTO-DISABLED (SUSHI R6): * value[x] only Ratio
// AUTO-DISABLED (SUSHI R6): 
  // AUTO-DISABLED (SUSHI R6): * extension[period] MS
    // AUTO-DISABLED (SUSHI R6): * insert ExtensionPeriodMS
    // AUTO-DISABLED (SUSHI R6): * value[x] only Period
// AUTO-DISABLED (SUSHI R6): 
  // AUTO-DISABLED (SUSHI R6): * extension[id] MS
    // AUTO-DISABLED (SUSHI R6): * insert ExtensionIdentifierMS
    // AUTO-DISABLED (SUSHI R6): * value[x] only Identifier

* insert renderedDosageInstructionDefinition

* status from TIMedicationRequestStatusVS
* status MS
* status ^short = "Status of Medication Request"

* intent MS
* intent ^short = "filler-order"
* intent ^definition = "e.g. when data is synchronized with the E-Rezept-Fachdienst, the 'filler-order' code should be used here."

* insert Subject(subject)
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * medication[x] only Reference
// AUTO-DISABLED (SUSHI R6): * medicationReference MS
// AUTO-DISABLED (SUSHI R6): * medicationReference only Reference(Medication)
// AUTO-DISABLED (SUSHI R6): * medicationReference insert ReferenceMS

* requester MS
* requester only Reference(Organization or Practitioner or PractitionerRole)
// AUTO-DISABLED (SUSHI R6): * requester insert ReferenceMS
* authoredOn 1.. MS
* authoredOn ^short = "Issue Date"
* authoredOn ^definition = "Issue Date of the Prescription"

* note ..1 MS
  * insert AnnotationMS
  * text ^short = "Dispensing Note"
  * text ^definition = "Instructions to the pharmacy that go beyond the dosage information"

* dosageInstruction MS
* dosageInstruction only DosageDgMP
  * ^short = "Hier werden Informationen zur Dosierung angegeben."
  * ^definition = "Hier werden Informationen zur Dosierung angegeben."
  // AUTO-DISABLED (SUSHI R6): * insert DosageDgMPMS

* dispenseRequest 0.. MS
  * expectedSupplyDuration MS
  * quantity 0.. MS
    * value 1.. MS
    * value ^short = "Number of Prescribed Packages"
    * value ^definition = "Number of Prescribed Packages"
    * system 0..1 MS
    * system = $cs-ucum
    * code 0.. MS
    * unit MS
    // * code = #{Package}

* substitution MS
* substitution.allowed[x] only boolean
* substitution.allowedBoolean 1.. MS

* basedOn only Reference(EMPMedicationRequestR6)
* basedOn MS
  // AUTO-DISABLED (SUSHI R6): * insert ReferenceMS
  * identifier only MedicationPlanIdentifier
