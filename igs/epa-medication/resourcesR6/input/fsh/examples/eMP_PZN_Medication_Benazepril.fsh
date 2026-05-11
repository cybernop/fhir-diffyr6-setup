RuleSet: eMP_Benazepril_Content
* extension[context].valueCode = #EMP

* extension[type].valueCoding = $sct#763158003 
// "Medicinal product (product)"
* extension[drugCategory].valueCoding.system = Canonical(EPADrugCategoryCS)
* extension[drugCategory].valueCoding.code = #00
* extension[normSizeCode].valueCode = #N3
* extension[isVaccine].valueBoolean = false

* status = #active
* code.coding[pzn] = $cs-pzn#04351736 "Benazepril AL 20mg 98 Filmtabletten N3"
* code.text = "Benazepril AL 20mg 98 Filmtabletten N3"
// AUTO-DISABLED (SUSHI R6): * form.coding[kbvDarreichungsform] = $cs-kbv-medication-darreichungsform#FTA
* ingredient[+]
  * itemCodeableConcept.coding[ask]
    // AUTO-DISABLED (SUSHI R6): * system = $cs-ask
    // AUTO-DISABLED (SUSHI R6): * code = #23413
  // AUTO-DISABLED (SUSHI R6): * itemCodeableConcept.text = "Benazepril hydrochlorid"
  * strength
    * numerator
      // AUTO-DISABLED (SUSHI R6): * value = 20
      // AUTO-DISABLED (SUSHI R6): * unit = "mg"
    * denominator
      // AUTO-DISABLED (SUSHI R6): * value = 1
      // AUTO-DISABLED (SUSHI R6): * unit = "Filmtbl."
// AUTO-DISABLED (SUSHI R6): * amount.numerator.unit = "Stück"
// AUTO-DISABLED (SUSHI R6): * amount.numerator.extension[totalQuantity].valueString = "98"
// AUTO-DISABLED (SUSHI R6): * amount.denominator.value = 1

Instance: Inline_eMP_Benazepril
InstanceOf: EMPMedicationR6
Usage: #inline
* insert EMPMedicationInstanceMeta
* id = "1193c409-3df4-4b55-b672-811665aaa1b7"
* insert eMP_Benazepril_Content


Instance: eMP_Benazepril
InstanceOf: EMPMedicationR6
Usage: #example
* insert EMPMedicationInstanceMeta
* id = "13c66845-d0ce-43e1-9b0b-884cbbe8df7f"
* meta
  * versionId = "1"
  * lastUpdated = "2026-12-01T14:00:00.200Z"

* identifier[EPAMedicationUniqueIdentifierR6].value = "D15E4956F59A13CD3BB365799857D6FA9757C62D36DBDB9578D018CA4B6D969F"
* insert eMP_Benazepril_Content


// MedicationRequest =======================

RuleSet: eMP_Benazepril_Request_Content
* extension[context].valueCode = #EMP
* extension[reasonPatientInstruction].valueString = "Bluthochdruck"
* extension[patientNote]
  * valueAnnotation.text = "Benazepril kann anfangs Schwindel verursachen - daher zuerst in Ruhe einnehmen und Autofahren vermeiden."
* extension[effectiveDosePeriod]
  * valuePeriod.start = "2026-12-01"
* extension[originMedication]
  * valueReference = Reference(eMP_Benazepril)
* intent = #plan
* status = #active
* subject = ExamplePatientReference
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(eMP_Benazepril)
* authoredOn = "2026-12-01"
* note
  * text = "Hinweis für den LE"
// * reasonCode[icd-10-gm]
* dosageInstruction[+]
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


// AUTO-DISABLED (SUSHI R6): Instance: Inline_eMP_Benazepril_Request
// AUTO-DISABLED (SUSHI R6): InstanceOf: EMPMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EMPMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "881f3c6d-20e6-443e-b7dc-580a40fa3d14"
// AUTO-DISABLED (SUSHI R6): * insert eMP_Benazepril_Request_Content
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(Inline_eMP_Benazepril)


// AUTO-DISABLED (SUSHI R6): Instance: eMP_Benazepril_Request
// AUTO-DISABLED (SUSHI R6): InstanceOf: EMPMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EMPMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "71b66f1b-8032-4886-b7bf-e775daee22fb"
// AUTO-DISABLED (SUSHI R6): * insert eMP_Benazepril_Request_Content
// AUTO-DISABLED (SUSHI R6): * identifier[MedicationPlanIdentifier]
  // AUTO-DISABLED (SUSHI R6): * system = $sid-medication-plan-identifier
  // AUTO-DISABLED (SUSHI R6): * value = "71b66f1b-8032-4886-b7bf-e775daee22fb"
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(eMP_Benazepril)
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-12-01T14:00:00.400Z"


// EPAActivityProvenance

Instance: eMP_Benazepril_Activity_Provenance
InstanceOf: EPAActivityProvenance
Usage: #example
* insert EPAActivityProvenanceInstanceMeta
* id = "8faa45dd-b2dc-4a80-8956-94aeab1db04b"
* activity = $v3-DataOperation#CREATE
* agent
  * type = $provenance-participant-type#author
  * who = Reference(PraxisTIOrganization)
  * who
    * identifier
      * type = $v2-0203#PRN
      * system = $sid-identifier-telematik-id
      * value = $PraxisTIOrganization-TelematikID
    * insert PraxisTIOrganization-display
* target[+] = Reference(MedicationRequest/71b66f1b-8032-4886-b7bf-e775daee22fb/_history/1)
* recorded = "2026-12-01T14:00:00.600Z"


// EMPChronologyProvenanceR6

Instance: eMP_Benazepril_Chronology_Provenance_1
InstanceOf: EMPChronologyProvenanceR6
Usage: #example
* insert EMPChronologyProvenanceInstanceMeta
* id = "0b383501-f078-464b-b984-9fdb6751601b"
* extension[isEMPChronology].valueBoolean = true
* activity = $v3-DataOperation#UPDATE
* recorded = "2026-11-10T14:00:00.700Z"
* occurredDateTime = "2026-11-10T14:00:00.700Z"
* agent
  * type = $provenance-participant-type#author
  * who = Reference(PraxisTIOrganization)
  * who
    * identifier
      * type = $v2-0203#PRN
      * system = $sid-identifier-telematik-id
      * value = $PraxisTIOrganization-TelematikID
    * insert PraxisTIOrganization-display
* target[+] = Reference(MedicationRequest/173439a1-40ee-4b61-bb8c-aab3f5a1af10/_history/2)
* target[+] = Reference(MedicationRequest/e2da4372-accc-4a76-81da-83e43ef9b15a/_history/1)



Instance: eMP_Benazepril_Chronology_Provenance_2
InstanceOf: EMPChronologyProvenanceR6
Usage: #example
* insert EMPChronologyProvenanceInstanceMeta
* id = "b467ce05-e0e5-4d71-9a0b-d824dbb492ef"
* extension[isEMPChronology].valueBoolean = true
* activity = $v3-DataOperation#UPDATE
* recorded = "2026-12-01T14:00:00.700Z"
* occurredDateTime = "2026-12-01T14:00:00.700Z"
* agent
  * type = $provenance-participant-type#author
  * who = Reference(PraxisTIOrganization)
  * who
    * identifier
      * type = $v2-0203#PRN
      * system = $sid-identifier-telematik-id
      * value = $PraxisTIOrganization-TelematikID
    * insert PraxisTIOrganization-display
* target[+] = Reference(MedicationRequest/173439a1-40ee-4b61-bb8c-aab3f5a1af10/_history/2)
* target[+] = Reference(MedicationRequest/e2da4372-accc-4a76-81da-83e43ef9b15a/_history/1)
* target[+] = Reference(MedicationRequest/71b66f1b-8032-4886-b7bf-e775daee22fb/_history/1)



// Update eMP Entry
RuleSet: eMP_Benazepril_Request_Update_Content
* insert eMP_Benazepril_Request_Content
* dosageInstruction[+]
  // * extension[generatedDosageInstructions]
  //   * extension[algorithm].valueCoding = DosageTextAlgorithmCS|1.0.0#GematikDosageTextGenerator
  //   * extension[algorithmVersion].valueString = "1.0.1"
  //   * extension[language].valueCode = #de-DE
  //   * extension[text].valueString = "3 x täglich: morgens, mittags und abends — je 1 Stück"
  * timing.repeat
    * when[+] = #MORN
    * when[+] = #AFT
    * when[+] = #EVE
    * frequency = 3
    * period = 1
    * periodUnit = #d
  * doseAndRate.doseQuantity = 1 $kbv-dosiereinheit#1 "Stück"
* extension[renderedDosageInstruction].valueMarkdown = "1-1-1-0 Stück"
* extension[generatedDosageInstructionsMeta]
  * extension[algorithmVersion].valueString = "1.0.1"
  * extension[language].valueCode = #de-DE


// AUTO-DISABLED (SUSHI R6): Instance: eMP_Benazepril_Request_Update
// AUTO-DISABLED (SUSHI R6): InstanceOf: EMPMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EMPMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "3dfe8327-dd4c-4e53-a695-cd2e0b21e699"
// AUTO-DISABLED (SUSHI R6): * insert eMP_Benazepril_Request_Content
// AUTO-DISABLED (SUSHI R6): * identifier[MedicationPlanIdentifier]
  // AUTO-DISABLED (SUSHI R6): * system = $sid-medication-plan-identifier
  // AUTO-DISABLED (SUSHI R6): * value = "3dfe8327-dd4c-4e53-a695-cd2e0b21e699"
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(eMP_Benazepril)
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-12-01T14:00:00.400Z"


// AUTO-DISABLED (SUSHI R6): Instance: eMP_Benazepril_Request_New_Version
// AUTO-DISABLED (SUSHI R6): InstanceOf: EMPMedicationRequestR6
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert EMPMedicationRequestInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "3dfe8327-dd4c-4e53-a695-cd2e0b21e699"
// AUTO-DISABLED (SUSHI R6): * insert eMP_Benazepril_Request_Content
// AUTO-DISABLED (SUSHI R6): * identifier[MedicationPlanIdentifier]
  // AUTO-DISABLED (SUSHI R6): * system = $sid-medication-plan-identifier
  // AUTO-DISABLED (SUSHI R6): * value = "3dfe8327-dd4c-4e53-a695-cd2e0b21e699"
// AUTO-DISABLED (SUSHI R6): * medicationReference = Reference(eMP_Benazepril)
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "2"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-12-15T14:00:00.400Z"


Instance: eMP_Benazepril_Activity_Provenance_New_Version
InstanceOf: EPAActivityProvenance
Usage: #inline
* insert EPAActivityProvenanceInstanceMeta
* id = "d79a8998-0143-47df-9b07-d0d4d6e8c64b"
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
* target[+] = Reference(MedicationRequest/3dfe8327-dd4c-4e53-a695-cd2e0b21e699/_history/2)
* recorded = "2026-12-15T14:00:00.100Z"


Instance: eMP_Benazepril_Chronology_Provenance_New_Version
InstanceOf: EMPChronologyProvenanceR6
Usage: #inline
* insert EMPChronologyProvenanceInstanceMeta
* id = "6c98e872-4247-4a54-aa7f-6967b099656a"
* extension[isEMPChronology].valueBoolean = true
* activity = $v3-DataOperation#UPDATE
* recorded = "2026-12-15T14:00:00.100Z"
* occurredDateTime = "2026-12-15T14:00:00.100Z"
* agent
  * type = $provenance-participant-type#author
  * who = Reference(PraxisTIOrganization)
  * who
    * identifier
      * type = $v2-0203#PRN
      * system = $sid-identifier-telematik-id
      * value = $PraxisTIOrganization-TelematikID
    * insert PraxisTIOrganization-display
* target[+] = Reference(MedicationRequest/173439a1-40ee-4b61-bb8c-aab3f5a1af10/_history/2)
* target[+] = Reference(MedicationRequest/e2da4372-accc-4a76-81da-83e43ef9b15a/_history/1)
* target[+] = Reference(MedicationRequest/3dfe8327-dd4c-4e53-a695-cd2e0b21e699/_history/2)


