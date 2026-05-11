RuleSet: EPAMedicationInstanceMeta
* insert InstanceMetaProfile(EPAMedicationR6, 1.3.0)


Profile: EPAMedicationR6
Parent: Medication
Id: epa-medication
Title: "EPA Medication"
Description: "Defines the medication resource for the Medication Service in the ePA system."
// preserve the version
* ^version = "1.3.2"
* ^date = "2026-03-20"
* ^status = #active

* contained MS
* contained only EPAMedicationPharmaceuticalProductR6 or EPAMedicationPZNIngredientR6
  * ^short = "Contains PZN Ingredients for Compounding Medications & PharmaceuticalProducts in case of a 'Kombipackung'"
//TODO: copy Ruleset contents into this resource as soon as the issue: https://github.com/hapifhir/org.hl7.fhir.core/issues/1670 is resolved
* insert epaMedicationElements
* batch MS
  * lotNumber MS



//TODO: This RuleSet was only created as a workaround for the java snapshotgenerator, as soon as the generator supports contained child profiles this ruleset should be removed.
// zulip thread tracking this issue: https://chat.fhir.org/#narrow/stream/179167-hapi/topic/5.2E1.20Validation.20Detected.20circular.20dependency.20-.20StackOverflow
// issue in fhir core: https://github.com/hapifhir/org.hl7.fhir.core/issues/1670

RuleSet: epaMedicationElements
* insert Meta-With-Versioning
* obeys epa-med-1
// * obeys epa-med-2
// * obeys epa-med-3
* extension MS
* extension contains
    RxPrescriptionProcessIdentifierExtension named rxPrescriptionProcessIdentifier 0..1 MS and
    MedicationIsVaccineExtension named isVaccine 0..1 MS and
    DrugCategoryExtension named drugCategory 0..1 MS and
    ExtensionNormgroesseDeBasis named normSizeCode 0..1 MS and
    MedicationFormulationPackagingExtension named packaging 0..1 MS and
    MedicationManufacturingInstructionsExtension named manufacturingInstructions 0..1 MS and
    EPAMedicationTypeExtension named type 0..1 MS
// AUTO-DISABLED (SUSHI R6): * extension[isVaccine] insert ExtensionBooleanMS

* extension[drugCategory]
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionCodingMS
  * valueCoding
    * system 1..1
    * code 1..1

* extension[normSizeCode] ^short = "Package size according to N-designation"
* extension[normSizeCode] ^definition = "Description of the therapy-appropriate package size (e.g., N1)"
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionCodeMS

* extension[packaging]
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionStringMS

* extension[manufacturingInstructions]
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionStringMS

* identifier 0.. MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* identifier contains
    EPAMedicationUniqueIdentifierR6 0..1 MS and
    RxOriginatorProcessIdentifierR6 0..1 MS
* identifier[EPAMedicationUniqueIdentifierR6] only EPAMedicationUniqueIdentifierR6
* identifier[EPAMedicationUniqueIdentifierR6]
  * ^patternIdentifier.system = "https://gematik.de/fhir/epa-medication/sid/epa-medication-unique-identifier"
  // AUTO-DISABLED (SUSHI R6): * insert IdentifierMS

* identifier[RxOriginatorProcessIdentifierR6] only RxOriginatorProcessIdentifierR6
* identifier[RxOriginatorProcessIdentifierR6]
  * ^patternIdentifier.system = $sid-identifier-rx-originator-process
  // AUTO-DISABLED (SUSHI R6): * insert IdentifierMS

* code 0..1 MS
  * ^short = "Medication in coded form or as free text if necessary"
  * coding MS
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains
      pzn 0..1 MS and
      atc-de 0.. MS and
      ask 0.. MS // and
      // snomed 0..
  * coding[pzn]
    * ^patternCoding.system = $cs-pzn
    // AUTO-DISABLED (SUSHI R6): * insert CodingMS
    * system 1..1
    * code 1..1
  * coding[atc-de]
    * ^patternCoding.system = $cs-atc-de
    // AUTO-DISABLED (SUSHI R6): * insert CodingMS
    * system 1..1
    * version 1..1
    * code 1..1
  * coding[ask]
    * ^patternCoding.system = $cs-ask
    // AUTO-DISABLED (SUSHI R6): * insert CodingMS
    * system 1..1
    * code 1..1
  // * coding[snomed] from TIMedicationSNOMEDCTVS (extensible)
  //   * ^patternCoding.system = $sct
  //   * system 1..1 MS
  //   * code 1..1 MS
  //   * display MS
  * text MS
* status 0..1 MS
  * ^short = "Status of Medication Information"
// AUTO-DISABLED (SUSHI R6): * manufacturer MS
  // AUTO-DISABLED (SUSHI R6): * ^short = "Manufacturer of the Medication"
  // AUTO-DISABLED (SUSHI R6): * ^comment = "Here, the actual manufacturer of the medication can be named, primarily in the case of active ingredient mixtures (compounding prescriptions), such as the hospital pharmacy. It is important to note that the licensing organization, as mentioned in the PZN (Pharmaceutical Central Number) data, is not considered the manufacturer."
  // AUTO-DISABLED (SUSHI R6): * display 1..1 MS
// AUTO-DISABLED (SUSHI R6): * form MS
  // AUTO-DISABLED (SUSHI R6): * ^short = "Form of Dispensing"
* form
  // AUTO-DISABLED (SUSHI R6): * coding MS
    // AUTO-DISABLED (SUSHI R6): * ^slicing.discriminator.type = #value
    // AUTO-DISABLED (SUSHI R6): * ^slicing.discriminator.path = "$this"
    // AUTO-DISABLED (SUSHI R6): * ^slicing.rules = #open
  // AUTO-DISABLED (SUSHI R6): * coding contains
      // AUTO-DISABLED (SUSHI R6): // edqm 0.. and
      // AUTO-DISABLED (SUSHI R6): // snomed 0.. and
      // AUTO-DISABLED (SUSHI R6): kbvDarreichungsform 0.. MS
  // * coding[edqm] from $vs-edqm-doseform (preferred)
  //   * ^patternCoding.system = $cs-edqm
  //   * system 1..1 MS
  //   * code 1..1 MS
  //   * display MS
  // * coding[snomed] from TIMedicineFormSNOMEDCTVS (preferred)
  //   * ^patternCoding.system = $sct
  //   * system 1..1 MS
  //   * code 1..1 MS
  //   * version MS
  //   * display MS
  // AUTO-DISABLED (SUSHI R6): * coding[kbvDarreichungsform] from $vs-kbv-medication-darreichungsform (required)
    // AUTO-DISABLED (SUSHI R6): * ^comment = "KBV updates its \"Schüsseltabellen\" package more often than ePA versions get released. However, the eRezept clients and eRezept service take over new KBV package versions quickly after release and thus hands them over to the ePA Medication Service. Since the Medication Service is potentially fixed onto an older version of the KBV package, it would reject the forwarded eRezept data. In the future, the Medication Service will be enabled to update to the latest KBV package versions without the need for a new ePA release.
    // AUTO-DISABLED (SUSHI R6): Since the eRezept *does* check the codes against the latest KBV package version, the Medication Service will not receive any \"invalid\" codes and clients can rely on the Medication Service data conforming to the latest KBV package."
    // AUTO-DISABLED (SUSHI R6): * ^patternCoding.system = $cs-kbv-medication-darreichungsform
    // AUTO-DISABLED (SUSHI R6): * insert CodingMS
    // AUTO-DISABLED (SUSHI R6): * system 1..1
    // AUTO-DISABLED (SUSHI R6): * code 1..1
// AUTO-DISABLED (SUSHI R6): * amount 0..1 MS
  * insert RatioMS
  // AUTO-DISABLED (SUSHI R6): * numerator 0..1
  // AUTO-DISABLED (SUSHI R6): * numerator from $hl7-vs-ucum-units (preferred)
    // AUTO-DISABLED (SUSHI R6): * extension MS
    // AUTO-DISABLED (SUSHI R6): * extension contains
        // AUTO-DISABLED (SUSHI R6): MedicationPackagingSizeExtension named packagingSize 0..1 MS and
        // AUTO-DISABLED (SUSHI R6): MedicationTotalQuantityFormulationExtension named totalQuantity 0..1 MS
    * extension[packagingSize]
      // AUTO-DISABLED (SUSHI R6): * insert ExtensionStringMS
    * extension[totalQuantity]
      // AUTO-DISABLED (SUSHI R6): * insert ExtensionStringMS
    // AUTO-DISABLED (SUSHI R6): * value 0..1
    // AUTO-DISABLED (SUSHI R6): * system 0..1
    // AUTO-DISABLED (SUSHI R6): * code 0..1
  // AUTO-DISABLED (SUSHI R6): * denominator from $hl7-vs-ucum-units (preferred)
    // AUTO-DISABLED (SUSHI R6): * value 0..1
    // AUTO-DISABLED (SUSHI R6): * system 0..1
    // AUTO-DISABLED (SUSHI R6): * code 0..1
* ingredient MS
  // * ^short = "Aktive oder inaktive Bestandteile des Medikaments, einschließlich Wirkstoffe sowie einzelner Arzneimittel in Kombipackungen."
  * ^short = "Active or inactive ingredients of the medication, including pharmaceutical substances as well as individual medicinal products in combination packs."
  * extension MS
  * extension contains
      MedicationIngredientDarreichungsformExtension named darreichungsform 0..1 MS
  * extension[darreichungsform]
    * url MS
    * valueString MS
  // AUTO-DISABLED (SUSHI R6): * item[x] 1..1 MS
  // AUTO-DISABLED (SUSHI R6): * itemCodeableConcept MS
    // * ^short = "Kodierte Beschreibung des Wirkstoffs oder der Komponente."
    // AUTO-DISABLED (SUSHI R6): * ^short = "Encoded description of the substance or component."
    // AUTO-DISABLED (SUSHI R6): * coding 0.. MS
      // AUTO-DISABLED (SUSHI R6): * ^slicing.discriminator.type = #value
      // AUTO-DISABLED (SUSHI R6): * ^slicing.discriminator.path = "$this"
      // AUTO-DISABLED (SUSHI R6): * ^slicing.rules = #open
    // AUTO-DISABLED (SUSHI R6): * coding contains
        // AUTO-DISABLED (SUSHI R6): ask 0.. MS and
        // AUTO-DISABLED (SUSHI R6): atc-de 0.. MS and
        // AUTO-DISABLED (SUSHI R6): // snomed 0.. and
        // AUTO-DISABLED (SUSHI R6): pzn 0.. MS
    * coding[ask]
      // AUTO-DISABLED (SUSHI R6): * ^patternCoding.system = $cs-ask
      // AUTO-DISABLED (SUSHI R6): * insert CodingMS
      // AUTO-DISABLED (SUSHI R6): * system 1..1
      // AUTO-DISABLED (SUSHI R6): * code 1..1
    * coding[atc-de]
      // AUTO-DISABLED (SUSHI R6): * ^patternCoding.system = $cs-atc-de
      // AUTO-DISABLED (SUSHI R6): * insert CodingMS
      // AUTO-DISABLED (SUSHI R6): * system 1..1
      // AUTO-DISABLED (SUSHI R6): * version 1..1
      // AUTO-DISABLED (SUSHI R6): * code 1..1
    // * coding[snomed] from TISubstanceSNOMEDCTVS (preferred)
    //   * ^patternCoding.system = $sct
    //   * system 1..1 MS
    //   * code 1..1 MS
    //   * version MS
    //   * display MS
    * coding[pzn]
      // AUTO-DISABLED (SUSHI R6): * ^patternCoding.system = $cs-pzn
      // AUTO-DISABLED (SUSHI R6): * insert CodingMS
      // AUTO-DISABLED (SUSHI R6): * system 1..1
      // AUTO-DISABLED (SUSHI R6): * code 1..1
    // AUTO-DISABLED (SUSHI R6): * text MS
  // AUTO-DISABLED (SUSHI R6): * itemReference MS
  // AUTO-DISABLED (SUSHI R6): * itemReference only Reference(Medication)
    // AUTO-DISABLED (SUSHI R6): * ^short = "Restricted EPAMedicationPZNIngredientR6 & EPAMedicationPharmaceuticalProductR6 only"
    // AUTO-DISABLED (SUSHI R6): * insert ReferenceMS
  * isActive MS
    * ^short = "Is it an active ingredient?"
  // AUTO-DISABLED (SUSHI R6): * strength MS
    // AUTO-DISABLED (SUSHI R6): * ^short = "Strength"
    // AUTO-DISABLED (SUSHI R6): * extension contains
        // AUTO-DISABLED (SUSHI R6): MedicationIngredientAmountExtensions named amountText 0..1
    * extension[amountText]
      // AUTO-DISABLED (SUSHI R6): * insert ExtensionStringMS
    // AUTO-DISABLED (SUSHI R6): * numerator MS
    // AUTO-DISABLED (SUSHI R6): * numerator from $hl7-vs-ucum-units (preferred)
      // AUTO-DISABLED (SUSHI R6): * insert QuantityMS
      // AUTO-DISABLED (SUSHI R6): * value 1..1
      // AUTO-DISABLED (SUSHI R6): * system 0..1
      // AUTO-DISABLED (SUSHI R6): * code 0..1
    // AUTO-DISABLED (SUSHI R6): * denominator MS
    // AUTO-DISABLED (SUSHI R6): * denominator from $hl7-vs-ucum-units (preferred)
      // AUTO-DISABLED (SUSHI R6): * insert QuantityMS
      // AUTO-DISABLED (SUSHI R6): * value 1..1
      // AUTO-DISABLED (SUSHI R6): * system 0..1
      // AUTO-DISABLED (SUSHI R6): * code 0..1
* batch
  * ^short = "Batch Information"
  * lotNumber
    * ^short = "Batch Number"
