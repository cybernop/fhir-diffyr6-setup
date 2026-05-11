RuleSet: JanuviaFilmtablettenContent
* extension[drugCategory].valueCoding.system = Canonical(EPADrugCategoryCS)
* extension[drugCategory].valueCoding.code = #00
* extension[normSizeCode].valueCode = #N1
* extension[isVaccine].valueBoolean = false

* status = #active
* code.coding[pzn] = $cs-pzn#00814665
* code.text = "Januvia® 50 mg 28 Filmtabletten N1"
// AUTO-DISABLED (SUSHI R6): * form.coding[kbvDarreichungsform] = $cs-kbv-medication-darreichungsform#FTA "Tabletten"


Instance: InlineJanuviaFilmtabletten
InstanceOf: EPAMedicationR6
Usage: #inline
* insert EPAMedicationInstanceMeta
* id = "ec4d55a0-dec1-46b7-96cc-096845b74c4b"
* insert JanuviaFilmtablettenContent

Instance: JanuviaFilmtabletten
InstanceOf: EPAMedicationR6
Usage: #example
* insert EPAMedicationInstanceMeta
* id = "bb91cde8-0426-4f4b-a766-5d818d0605bd"
* meta
  * versionId = "2"
  * lastUpdated = "2025-05-22T14:43:33.244Z"
* extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.006.24_20250520"
* identifier[EPAMedicationUniqueIdentifierR6].value = "936396A4B0EAD8DE8ACD0F32BBC410523150A2F943908D3C9600AF253BE4B93A"
* identifier[RxOriginatorProcessIdentifierR6].value = "ec4d55a0-dec1-46b7-96cc-096845b74c4b_160.100.000.000.006.24"
* insert JanuviaFilmtablettenContent


// MedicationRequest =======================
RuleSet: JanuviaFilmtabletten_Request_Dosage
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

RuleSet: JanuviaFilmtabletten_Request_Dosage_Rendered
* extension[renderedDosageInstruction].valueMarkdown = "1-0-1-0 Stück"
* extension[generatedDosageInstructionsMeta]
  * extension[algorithmVersion].valueString = "1.0.1"
  * extension[language].valueCode = #de-DE

RuleSet: JanuviaFilmtabletten_Request_Content
* extension[multiplePrescription].extension[indicator].valueBoolean = false
* status = #active
* intent = #filler-order
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(JanuviaFilmtabletten)
* subject = ExamplePatientReference
* authoredOn = "2025-05-20"
* dispenseRequest.quantity = 1 '{Package}'
* substitution.allowedBoolean = true
* insert JanuviaFilmtabletten_Request_Dosage_Rendered
* dosageInstruction[+] insert JanuviaFilmtabletten_Request_Dosage


// AUTO-DISABLED (SUSHI R6): Instance: Inline_JanuviaFilmtabletten_Request
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "54b29415-37fb-4f56-83cf-986b9d1cc8b9"
// AUTO-DISABLED (SUSHI R6): * insert JanuviaFilmtabletten_Request_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(InlineJanuviaFilmtabletten)


// AUTO-DISABLED (SUSHI R6): Instance: JanuviaFilmtabletten_Request
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "3191d752-3adf-4c7f-848d-8d43766fed72"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-05-22T14:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * status = #completed
// AUTO-DISABLED (SUSHI R6): * identifier[RxPrescriptionProcessIdentifierR6].value = "160.100.000.000.006.24_20250520"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "ec4d55a0-dec1-46b7-96cc-096845b74c4b_160.100.000.000.006.24"
// AUTO-DISABLED (SUSHI R6): * insert JanuviaFilmtabletten_Request_Content
// AUTO-DISABLED (SUSHI R6): * insert Arzt_PractitionerRole_Reference



// MedicationDispense =================

RuleSet: JanuviaFilmtabletten_Dispense_Content
* status = #completed
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(JanuviaFilmtabletten)
* subject = ExamplePatientReference
* whenHandedOver = "2025-05-22"
* substitution
  * wasSubstituted = false


// AUTO-DISABLED (SUSHI R6): Instance: Inline_JanuviaFilmtabletten_Dispense
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationDispenseR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationDispenseInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "5d8fbf7c-bdb0-44c2-95fe-423ae0404ccd"
// AUTO-DISABLED (SUSHI R6): * insert JanuviaFilmtabletten_Dispense_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(InlineJanuviaFilmtabletten)
// AUTO-DISABLED (SUSHI R6): * performer.actor = Reference(InlineGematikApotheke)
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * type
      // AUTO-DISABLED (SUSHI R6): // * coding.version = "2.9.0"
      // AUTO-DISABLED (SUSHI R6): * coding = $v2-0203#PRN "Provider number"
    // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-telematik-id
    // AUTO-DISABLED (SUSHI R6): * value = $GematikApotheke-TelematikID
  // AUTO-DISABLED (SUSHI R6): * insert GematikApotheke-display


// AUTO-DISABLED (SUSHI R6): Instance: JanuviaFilmtabletten_Dispense
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationDispenseR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationDispenseInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "4e6e1623-778e-44a3-b208-8479f5339e43"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-05-22T14:43:33.244Z"
// AUTO-DISABLED (SUSHI R6): * extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.006.24_20250520"
// AUTO-DISABLED (SUSHI R6): * identifier[RxOriginatorProcessIdentifierR6].value = "5d8fbf7c-bdb0-44c2-95fe-423ae0404ccd_160.100.000.000.006.24"
// AUTO-DISABLED (SUSHI R6): * insert JanuviaFilmtabletten_Dispense_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(JanuviaFilmtabletten)
// AUTO-DISABLED (SUSHI R6): * performer.actor = Reference(GematikApotheke)
  // AUTO-DISABLED (SUSHI R6): * identifier
    // AUTO-DISABLED (SUSHI R6): * type
      // AUTO-DISABLED (SUSHI R6): // * coding.version = "2.9.0"
      // AUTO-DISABLED (SUSHI R6): * coding = $v2-0203#PRN "Provider number"
    // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-telematik-id
    // AUTO-DISABLED (SUSHI R6): * value = $GematikApotheke-TelematikID
  // AUTO-DISABLED (SUSHI R6): * insert GematikApotheke-display
// AUTO-DISABLED (SUSHI R6): * authorizingPrescription = Reference(JanuviaFilmtabletten_Request)


// MedicationStatement =================

// AUTO-DISABLED (SUSHI R6): Instance: JanuviaFilmtabletten_Information
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationStatementR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationStatementInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "f3988023-2313-4645-bd6b-f9e37cfb6fc7"
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2025-05-22T14:43:34.244Z"
// AUTO-DISABLED (SUSHI R6): * extension[rxPrescriptionProcessIdentifier].valueIdentifier.value = "160.100.000.000.006.24_20250520"
// AUTO-DISABLED (SUSHI R6): * extension[context].valueCode = #PRESCRIPTION
// AUTO-DISABLED (SUSHI R6): * status = #unknown
// AUTO-DISABLED (SUSHI R6): * subject = ExamplePatientReference
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(JanuviaFilmtabletten)
// AUTO-DISABLED (SUSHI R6): * derivedFrom[+] = Reference(JanuviaFilmtabletten_Request)
// AUTO-DISABLED (SUSHI R6): * derivedFrom[+] = Reference(JanuviaFilmtabletten_Dispense)
// AUTO-DISABLED (SUSHI R6): * dateAsserted = "2025-05-22"
// AUTO-DISABLED (SUSHI R6): // * effectiveDateTime = "2025-05-22"
// AUTO-DISABLED (SUSHI R6): * effectivePeriod
  // AUTO-DISABLED (SUSHI R6): * start = "2025-05-22"
// AUTO-DISABLED (SUSHI R6): * insert JanuviaFilmtabletten_Request_Dosage_Rendered
// AUTO-DISABLED (SUSHI R6): * dosage[+] insert JanuviaFilmtabletten_Request_Dosage


Instance: JanuviaFilmtabletten_Information_Provenance
InstanceOf: EPAActivityProvenance
Usage: #example
* insert EPAActivityProvenanceInstanceMeta
* id = "de42aa65-f84e-4e96-acfb-b9fd5e104b2d"
* activity = $v3-DataOperation#UPDATE
* agent
  * type = $provenance-participant-type#author
  * who = MedicationSvcIdentifier
* target[+] = Reference(MedicationStatement/f3988023-2313-4645-bd6b-f9e37cfb6fc7/_history/2)
* recorded = "2025-05-22T14:43:34.244Z"
