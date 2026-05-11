Alias: $epa-version = 3.0.5

// Extensions r5
Alias: $medicationRequest-effectiveDosePeriod-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod
Alias: $medicationRequest-renderedDosageInstruction-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction
Alias: $medicationDispense-renderedDosageInstruction-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationDispense.renderedDosageInstruction
Alias: $medicationStatement-renderedDosageInstruction-r5 = http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationStatement.renderedDosageInstruction


// Extensions
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $capabilitystatement-expectation = http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation
Alias: $ext-pertains-to-goal = http://hl7.org/fhir/StructureDefinition/resource-pertainsToGoal

// International ValueSets
Alias: $vs-reason-medication-status-codes = http://hl7.org/fhir/ValueSet/reason-medication-status-codes
Alias: $hl7-vs-ucum-units = http://hl7.org/fhir/ValueSet/ucum-units
Alias: $vs-resource-types = http://hl7.org/fhir/ValueSet/resource-types
Alias: $vs-dosage-additional-instructions = https://hl7.org/fhir/r4/valueset-additional-instruction-codes.html
Alias: $vs-edqm-doseform = http://hl7.org/fhir/uv/ips/ValueSet/medicine-doseform
Alias: $vs-medicationdispense-status-reason = http://hl7.org/fhir/ValueSet/medicationdispense-status-reason

// International CodeSystems
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $sct-and-version = http://snomed.info/sct|http://snomed.info/sct/11000274103/version/20240515
Alias: $cs-edqm = http://standardterms.edqm.eu
Alias: $cs-ucum = http://unitsofmeasure.org
Alias: $ns-urn-uuid = urn:ietf:rfc:3986
Alias: $atc-en = http://www.whocc.no/atc
Alias: $orpha = http://www.orpha.net
Alias: $cs-medicationdispense-status-reason = https://hl7.org/fhir/R4/codesystem-medicationdispense-status-reason.html
// FHIR CS
Alias: $hl7-cs-event-timing = http://hl7.org/fhir/event-timing
Alias: $cs-resource-types = http://hl7.org/fhir/resource-types
Alias: $list-empty-reason = http://terminology.hl7.org/CodeSystem/list-empty-reason
Alias: $list-example-use-codes = http://terminology.hl7.org/CodeSystem/list-example-use-codes
Alias: $cs-allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $cs-allergyintolerance-verification = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: $provenance-participant-type = http://terminology.hl7.org/CodeSystem/provenance-participant-type
Alias: $cs-operation-outcome = http://terminology.hl7.org/CodeSystem/operation-outcome
// v2 CS
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v2-0131 = http://terminology.hl7.org/CodeSystem/v2-0131
// v3 CS
Alias: $hl7-cs-v3-timing-event = http://terminology.hl7.org/CodeSystem/v3-TimingEvent
Alias: $v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $v3-ParticipationType = http://terminology.hl7.org/CodeSystem/v3-ParticipationType
Alias: $provenance-participation-type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType
Alias: $v3-DataOperation = http://terminology.hl7.org/CodeSystem/v3-DataOperation
Alias: $provenance-data-operation = http://terminology.hl7.org/CodeSystem/v3-DataOperation
Alias: $v3-observation-interpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation

// HL7
Alias: $hl7-medication-statement-status-cs = http://hl7.org/fhir/CodeSystem/medication-statement-status
Alias: $hl7-medicationrequest-status-cs = http://hl7.org/fhir/CodeSystem/medicationrequest-status

// National ValueSets
// KBV Schluesseltabellen
Alias: $vs-kbv-medication-darreichungsform = https://fhir.kbv.de/ValueSet/KBV_VS_SFHIR_KBV_DARREICHUNGSFORM
Alias: $vs-kbv-sfhir-bmp-dosiereinheit = https://fhir.kbv.de/ValueSet/KBV_VS_SFHIR_BMP_DOSIEREINHEIT
Alias: $vs-kbv-narcotics = https://fhir.kbv.de/ValueSet/KBV_VS_SFHIR_KBV_NARCOTIC_LABEL
Alias: $cs-kbv-narcotics = https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_NARCOTIC_LABEL


// National CodeSystems
// HL7 DE
Alias: $cs-pzn = http://fhir.de/CodeSystem/ifa/pzn
Alias: $cs-atc-de = http://fhir.de/CodeSystem/bfarm/atc
Alias: $cs-ask = http://fhir.de/CodeSystem/ask
Alias: $icd-10-gm = http://fhir.de/CodeSystem/bfarm/icd-10-gm
Alias: $alpha-id = http://fhir.de/CodeSystem/bfarm/alpha-id
Alias: $identifier-type-de-basis = http://fhir.de/CodeSystem/identifier-type-de-basis
// Alias: $ucum-common-units-translation-de-de = https://terminologien.bfarm.de/fhir/CodeSystem/ucum-common-units-translation-de-de


// gematik
Alias: $cs-gematik-vzd-origin = https://gematik.de/fhir/directory/CodeSystem/Origin
Alias: $cs-gematik-vzd-org-profression-oid = https://gematik.de/fhir/directory/CodeSystem/OrganizationProfessionOID
Alias: $cs-role-care = https://gematik.de/fhir/terminology/CodeSystem/epa-role-care-cs
// KBV Schluesseltabellen
Alias: $cs-kbv-medication-darreichungsform = https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_DARREICHUNGSFORM
Alias: $cs-kbv-sfhir-bar2-arztnrfachgruppe = https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_BAR2_ARZTNRFACHGRUPPE
Alias: $cs-kbv-sfhir-bmp-zwischenueberschrift = https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_BMP_ZWISCHENUEBERSCHRIFT
Alias: $cs-kbv-sfhir-bmp-dosiereinheit = https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_BMP_DOSIEREINHEIT
Alias: $ti-medication-statement-status-vs = https://gematik.de/fhir/terminology/ValueSet/ti-medication-statement-status-vs
Alias: $kbv-dosiereinheit =  https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_BMP_DOSIEREINHEIT
Alias: $kbv-dosiereinheit-vs =  https://fhir.kbv.de/ValueSet/KBV_VS_SFHIR_BMP_DOSIEREINHEIT

// DE-Basis Profiles
Alias: $coding-icd-10-gm = http://fhir.de/StructureDefinition/CodingICD10GM
Alias: $coding-alpha-id = http://fhir.de/StructureDefinition/CodingAlphaID

// National Identifiers
Alias: $identifier-bsnr = http://fhir.de/StructureDefinition/identifier-bsnr
Alias: $identifier-telematik-id = http://fhir.de/StructureDefinition/identifier-telematik-id
Alias: $identifier-kvid-10 = http://fhir.de/StructureDefinition/identifier-kvid-10

// National System Identifier
Alias: $sid-identifier-kvid-10 = http://fhir.de/sid/gkv/kvid-10
Alias: $sid-identifier-telematik-id = https://gematik.de/fhir/sid/telematik-id

// gematik System Identifier
Alias: $sid-identifier-rx-originator-process = https://gematik.de/fhir/epa-medication/sid/rx-originator-process-identifier
Alias: $sid-identifier-dispensation = https://gematik.de/fhir/epa-medication/sid/dispensation-identifier

Alias: $sid-medication-plan-identifier = https://gematik.de/fhir/sid/emp-identifier

// no support for PKV required; see https://hl7germany.sharepoint.com/:w:/s/TCFHIR/EeWdppXQMblMqL0OHsBlhswBN5zPMHh4g5B72EJoNOzd_A?e=KMIaYnc
//Alias: $identifier-pkv = http://fhir.de/StructureDefinition/identifier-pkv
