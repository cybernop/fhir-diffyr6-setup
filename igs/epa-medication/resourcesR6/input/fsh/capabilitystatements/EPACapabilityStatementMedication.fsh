
RuleSet: MedicationInteraction(expectation)
* insert CapSupportResource(Medication, #SHALL)
// * insert CapProfile(EPAMedicationR6, #SHALL)
* insert CapSupportProfile(EPAMedicationR6, #SHALL)
* insert CapSupportProfile(EMPMedicationR6, #SHALL)
* insert CapSupportProfile(EPAMedicationPharmaceuticalProductR6, #SHALL)
* insert CapSupportProfile(EPAMedicationPZNIngredientR6, #SHALL)

* insert CapResourceInteraction(#search-type, #SHALL)
* insert SearchTypeInteractionStatusCodes
* insert CapResourceInteraction(#history-type, #SHALL)
* insert HistoryInteractionStatusCodes
* insert CapResourceInteraction(#read, #SHALL)
* insert ReadInteractionStatusCodes
* insert CapResourceInteraction(#history-instance, #SHALL)
* insert ReadInteractionStatusCodes
* insert CapResourceInteraction(#vread, #SHALL)
* insert ReadInteractionStatusCodes

* insert CapSupportResourceSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, {expectation}, "Resource.id")
* insert CapSupportResourceSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, {expectation}, "Resource.meta.lastUpdated")
* insert CapSupportResourceSearchParamNoDefinition(_has, #string, {expectation}, "Return resources linked to by the given target")
* insert CapSupportResourceSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, {expectation}, "Medication.identifier")
* insert CapSupportResourceSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, {expectation}, "Medication.code")
* insert CapSupportResourceSearchParam(status, http://hl7.org/fhir/SearchParameter/Medication-status, #token, {expectation}, "Medication.status")
// * insert CapSupportResourceSearchParam(ingredient, http://hl7.org/fhir/SearchParameter/Medication-ingredient, #reference, {expectation}, "Medication.​ingredient.​item.​reference")
* insert CapSupportResourceSearchParam(ingredient-code, http://hl7.org/fhir/SearchParameter/Medication-ingredient-code, #token, {expectation}, "Medication.ingredient.item as CodeableConcept")
* insert CapSupportCustomSearchParam(rx-prescription, RxPrescriptionProcessSP, #token, {expectation}, "Medication.extension")
* insert CapSupportCustomSearchParam(context, ContextSP, #token, {expectation}, "Medication.extension:context")
// * rest.resource[=].searchInclude[+] = "Medication:ingredient"
* rest.resource[=].searchRevInclude[+] = "MedicationRequest:medication"
* rest.resource[=].searchRevInclude[+] = "MedicationDispense:medication"
* rest.resource[=].searchRevInclude[+] = "MedicationStatement:medication"
// * rest.resource[=].searchRevInclude[+] = "Medication:ingredient"


RuleSet: MedicationRequestInteraction(expectation)
* insert CapSupportResource(MedicationRequest, #SHALL)
// * insert CapProfile(EPAMedicationRequestR6, #SHALL)
* insert CapSupportProfile(EPAMedicationRequestR6, #SHALL)
* insert CapSupportProfile(EMPMedicationRequestR6, #SHALL)

* insert CapResourceInteraction(#search-type, #SHALL)
* insert SearchTypeInteractionStatusCodes
* insert CapResourceInteraction(#history-type, #SHALL)
* insert HistoryInteractionStatusCodes
* insert CapResourceInteraction(#read, #SHALL)
* insert ReadInteractionStatusCodes
* insert CapResourceInteraction(#history-instance, #SHALL)
* insert ReadInteractionStatusCodes
* insert CapResourceInteraction(#vread, #SHALL)
* insert ReadInteractionStatusCodes

* insert CapSupportResourceSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, {expectation}, "Resource.id")
* insert CapSupportResourceSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, {expectation}, "Resource.meta.lastUpdated")
* insert CapSupportResourceSearchParamNoDefinition(_has, #string, {expectation}, "Return resources linked to by the given target")
* insert CapSupportResourceSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, {expectation}, "MedicationRequest.identifier")
* insert CapSupportResourceSearchParam(authoredon, http://hl7.org/fhir/SearchParameter/MedicationRequest-authoredon, #date, {expectation}, "MedicationRequest.authoredOn")
* insert CapSupportResourceSearchParam(intent, http://hl7.org/fhir/SearchParameter/MedicationRequest-intent, #token, {expectation}, "MedicationRequest.intent")
* insert CapSupportResourceSearchParam(status, http://hl7.org/fhir/SearchParameter/medications-status, #token, {expectation}, "MedicationRequest.status")
* insert CapSupportResourceSearchParam(requester, http://hl7.org/fhir/SearchParameter/MedicationRequest-requester, #reference, {expectation}, "MedicationRequest.requester")
* insert CapSupportResourceSearchParam(medication, http://hl7.org/fhir/SearchParameter/medications-medication, #reference, {expectation}, "MedicationRequest.medication as Reference")
* insert CapSupportCustomSearchParam(context, ContextSP, #token, {expectation}, "MedicationRequest.extension:context")
* insert CapSupportCustomSearchParam(activity, MedicationRequestActivitySP, #reference, {expectation}, "MedicationRequest.extension:activity")
* insert CapSupportCustomSearchParam(effective-dose-period, MedicationRequestEffectiveDosePeriodSP, #date, {expectation}, "MedicationRequest.extension:effectiveDosePeriod")
* rest.resource[=].searchInclude[+] = "MedicationRequest:medication"
* rest.resource[=].searchInclude[+] = "MedicationRequest:requester"
* rest.resource[=].searchInclude[+] = "MedicationRequest:activity"
* rest.resource[=].searchRevInclude[+] = "MedicationDispense:prescription"
* rest.resource[=].searchRevInclude[+] = "MedicationStatement:derived-from"


RuleSet: MedicationDispenseInteraction(expectation)
* insert CapSupportResource(MedicationDispense, #SHALL)
// * insert CapProfile(EPAMedicationDispenseR6, #SHALL)
* insert CapSupportProfile(EPAMedicationDispenseR6, #SHALL)

* insert CapResourceInteraction(#search-type, #SHALL)
* insert SearchTypeInteractionStatusCodes
* insert CapResourceInteraction(#history-type, #SHALL)
* insert HistoryInteractionStatusCodes
* insert CapResourceInteraction(#read, #SHALL)
* insert ReadInteractionStatusCodes
* insert CapResourceInteraction(#history-instance, #SHALL)
* insert ReadInteractionStatusCodes
* insert CapResourceInteraction(#vread, #SHALL)
* insert ReadInteractionStatusCodes

* insert CapSupportResourceSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, {expectation}, "Resource.id")
* insert CapSupportResourceSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, {expectation}, "Resource.meta.lastUpdated")
* insert CapSupportResourceSearchParamNoDefinition(_has, #string, {expectation}, "Return resources linked to by the given target")
* insert CapSupportResourceSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, {expectation}, "MedicationDispense.identifier")
* insert CapSupportResourceSearchParam(whenhandedover, http://hl7.org/fhir/SearchParameter/MedicationDispense-whenhandedover, #date, {expectation}, "MedicationDispense.whenHandedOver")
* insert CapSupportResourceSearchParam(prescription, http://hl7.org/fhir/SearchParameter/medications-prescription, #reference, {expectation}, "MedicationDispense.authorizingPrescription")
* insert CapSupportResourceSearchParam(performer, http://hl7.org/fhir/SearchParameter/MedicationDispense-performer, #reference, {expectation}, "MedicationDispense.performer.actor")
* insert CapSupportResourceSearchParam(status, http://hl7.org/fhir/SearchParameter/medications-status, #token, {expectation}, "MedicationDispense.status")
* insert CapSupportResourceSearchParam(medication, http://hl7.org/fhir/SearchParameter/medications-medication, #reference, {expectation}, "MedicationDispense.medication as Reference")
* insert CapSupportCustomSearchParam(rx-prescription, RxPrescriptionProcessSP, #token, {expectation}, "MedicationDispense.extension")
* rest.resource[=].searchInclude[+] = "MedicationDispense:medication"
* rest.resource[=].searchInclude[+] = "MedicationDispense:performer"
* rest.resource[=].searchInclude[+] = "MedicationDispense:prescription"
* rest.resource[=].searchRevInclude[+] = "MedicationStatement:derived-from"


RuleSet: MedicationStatementInteraction(expectation)
* insert CapSupportResource(MedicationStatement, #SHALL)
// * insert CapProfile(EPAMedicationStatementR6, #SHALL)
* insert CapSupportProfile(EPAMedicationStatementR6, #SHALL)

* insert CapResourceInteraction(#search-type, #SHALL)
* insert SearchTypeInteractionStatusCodes
* insert CapResourceInteraction(#history-type, #SHALL)
* insert HistoryInteractionStatusCodes
* insert CapResourceInteraction(#read, #SHALL)
* insert ReadInteractionStatusCodes
* insert CapResourceInteraction(#history-instance, #SHALL)
* insert ReadInteractionStatusCodes
* insert CapResourceInteraction(#vread, #SHALL)
* insert ReadInteractionStatusCodes

* insert CapSupportResourceSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, {expectation}, "Resource.id")
* insert CapSupportResourceSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, {expectation}, "Resource.meta.lastUpdated")
* insert CapSupportResourceSearchParamNoDefinition(_has, #string, {expectation}, "Return resources linked to by the given target")
// * insert CapSupportResourceSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, {expectation}, "MedicationStatement.identifier")
* insert CapSupportResourceSearchParam(medication, http://hl7.org/fhir/SearchParameter/medications-medication, #reference, {expectation}, "MedicationStatement.medication as Reference")
// * insert CapSupportResourceSearchParam(part-of, http://hl7.org/fhir/SearchParameter/MedicationStatement-part-of, #reference, {expectation}, "MedicationStatement.partOf as Reference")
* insert CapSupportResourceSearchParam(status, http://hl7.org/fhir/SearchParameter/medications-status, #token, {expectation}, "MedicationStatement.status")
* insert CapSupportResourceSearchParam(effective, http://hl7.org/fhir/SearchParameter/MedicationStatement-effective, #date, {expectation}, "MedicationStatement.effective")
* insert CapSupportCustomSearchParam(rx-prescription, RxPrescriptionProcessSP, #token, {expectation}, "Medication.extension")
// Custom SearchParameter for derivedFrom MedicationStatement.derived-from
* insert CapSupportCustomSearchParam(derived-from, DerivedFromSP, #reference, {expectation}, "MedicationStatement.derivedFrom as Reference")
* insert CapSupportCustomSearchParam(context, ContextSP, #token, {expectation}, "MedicationStatement.extension:context")
* insert CapSupportCustomSearchParam(based-on-emp, BasedOnEMPSP, #reference, {expectation}, "MedicationStatement.basedOn mit Extension:is-emp = true")

* rest.resource[=].searchInclude[+] = "MedicationStatement:medication"
// * rest.resource[=].searchInclude[+] = "MedicationStatement:part-of"
* rest.resource[=].searchInclude[+] = "MedicationStatement:derived-from"
* rest.resource[=].searchInclude[+] = "MedicationStatement:based-on-emp"
* rest.resource[=].searchRevInclude[+] = "Provenance:target"

* insert CapSupportResourceOperation(add-eml-entry, AddEMLEntryOP, {expectation})
* insert TypeLevelPostEMLOperation

* insert CapSupportResourceOperation(cancel-eml-entry, CancelEMLEntryOP, {expectation})
* insert TypeLevelCancelEMLOperation

* insert CapSupportResourceOperation(link-emp, LinkEMPEntryOP, {expectation})
* insert TypeLevelLinkEMPOperation

* insert CapSupportResourceOperation(unlink-emp, UnlinkEMPEntryOP, {expectation})
* insert TypeLevelUnlinkEMPOperation


RuleSet: OrganizationInteraction(expectation)
* insert CapSupportResource(Organization, #SHALL)
* insert CapSupportProfile(OrganizationDirectory, #SHALL)
* insert CapSupportProfile(TIOrganization, #SHALL)

* insert CapResourceInteraction(#search-type, #SHALL)
* insert SearchTypeInteractionStatusCodes
* insert CapResourceInteraction(#history-type, #SHALL)
* insert HistoryInteractionStatusCodes
* insert CapResourceInteraction(#read, #SHALL)
* insert ReadInteractionStatusCodes
* insert CapResourceInteraction(#history-instance, #SHALL)
* insert ReadInteractionStatusCodes
* insert CapResourceInteraction(#vread, #SHALL)
* insert ReadInteractionStatusCodes

* insert CapSupportResourceSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, {expectation}, "Resource.id")
* insert CapSupportResourceSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, {expectation}, "Resource.meta.lastUpdated")
* insert CapSupportResourceSearchParamNoDefinition(_has, #string, {expectation}, "Return resources linked to by the given target")
* insert CapSupportResourceSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Organization-identifier, #token, {expectation}, "Organization.identifier")
* insert CapSupportResourceSearchParam(name, http://hl7.org/fhir/SearchParameter/Organization-name, #string, {expectation}, "Organization.name | Organization.alias")
* rest.resource[=].searchRevInclude[+] = "MedicationDispense:performer"
* rest.resource[=].searchRevInclude[+] = "PractitionerRole:organization"
* rest.resource[=].searchRevInclude[+] = "MedicationRequest:requester"


RuleSet: PractitionerInteraction(expectation)
* insert CapSupportResource(Practitioner, #SHALL)
* insert CapSupportProfile(PractitionerDirectory, #SHALL)
* insert CapSupportProfile(TIPractitioner, #SHALL)

* insert CapResourceInteraction(#search-type, #SHALL)
* insert SearchTypeInteractionStatusCodes
* insert CapResourceInteraction(#history-type, #SHALL)
* insert HistoryInteractionStatusCodes
* insert CapResourceInteraction(#read, #SHALL)
* insert ReadInteractionStatusCodes
* insert CapResourceInteraction(#history-instance, #SHALL)
* insert ReadInteractionStatusCodes
* insert CapResourceInteraction(#vread, #SHALL)
* insert ReadInteractionStatusCodes

* insert CapSupportResourceSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, {expectation}, "Resource.id")
* insert CapSupportResourceSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, {expectation}, "Resource.meta.lastUpdated")
* insert CapSupportResourceSearchParamNoDefinition(_has, #string, {expectation}, "Return resources linked to by the given target")
* insert CapSupportResourceSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Practitioner-identifier, #token, {expectation}, "Practitioner.identifier")
* insert CapSupportResourceSearchParam(name, http://hl7.org/fhir/SearchParameter/Practitioner-name, #string, {expectation}, "Practitioner.name")
// * rest.resource[=].searchRevInclude[+] = "MedicationDispense:performer"
* rest.resource[=].searchRevInclude[+] = "PractitionerRole:practitioner"
* rest.resource[=].searchRevInclude[+] = "MedicationRequest:requester"


RuleSet: PractitionerRoleInteraction(expectation)
* insert CapSupportResource(PractitionerRole, #SHALL)

* insert CapResourceInteraction(#search-type, #SHALL)
* insert SearchTypeInteractionStatusCodes
* insert CapResourceInteraction(#history-type, #SHALL)
* insert HistoryInteractionStatusCodes
* insert CapResourceInteraction(#read, #SHALL)
* insert ReadInteractionStatusCodes
* insert CapResourceInteraction(#history-instance, #SHALL)
* insert ReadInteractionStatusCodes
* insert CapResourceInteraction(#vread, #SHALL)
* insert ReadInteractionStatusCodes

* insert CapSupportResourceSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, {expectation}, "Resource.id")
* insert CapSupportResourceSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, {expectation}, "Resource.meta.lastUpdated")
* insert CapSupportResourceSearchParamNoDefinition(_has, #string, {expectation}, "Return resources linked to by the given target")
* insert CapSupportResourceSearchParam(identifier, http://hl7.org/fhir/SearchParameter/PractitionerRole-identifier, #token, {expectation}, "PractitionerRole.identifier")
* insert CapSupportResourceSearchParam(practitioner, http://hl7.org/fhir/SearchParameter/PractitionerRole-practitioner, #reference, {expectation}, "PractitionerRole.practitioner")
* insert CapSupportResourceSearchParam(organization, http://hl7.org/fhir/SearchParameter/PractitionerRole-organization, #reference, {expectation}, "PractitionerRole.organization")
* rest.resource[=].searchInclude[+] = "PractitionerRole:practitioner"
* rest.resource[=].searchInclude[+] = "PractitionerRole:organization"
* rest.resource[=].searchRevInclude[+] = "MedicationDispense:performer"
* rest.resource[=].searchRevInclude[+] = "MedicationRequest:requester"


RuleSet: ProvenanceInteraction(expectation)
* insert CapSupportResource(Provenance, #SHALL)
* insert CapSupportProfile(EPAActivityProvenance, #SHALL)
* insert CapSupportProfile(EMPChronologyProvenanceR6, #SHALL)

* insert CapResourceInteraction(#search-type, #SHALL)
* insert SearchTypeInteractionStatusCodes
// * insert CapResourceInteraction(#history-type, #SHALL)
// * insert HistoryInteractionStatusCodes
* insert CapResourceInteraction(#read, #SHALL)
* insert ReadInteractionStatusCodes
// * insert CapResourceInteraction(#history-instance, #SHALL)
// * insert ReadInteractionStatusCodes
// * insert CapResourceInteraction(#vread, #SHALL)
// * insert ReadInteractionStatusCodes

* insert CapSupportResourceSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, {expectation}, "Resource.id")
* insert CapSupportResourceSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, {expectation}, "Resource.meta.lastUpdated")
* insert CapSupportResourceSearchParamNoDefinition(_has, #string, {expectation}, "Return resources linked to by the given target")
* insert CapSupportResourceSearchParam(agent, http://hl7.org/fhir/SearchParameter/Provenance-agent, #reference, {expectation}, "Who participated")
* insert CapSupportCustomSearchParam(agent-identifier, ProvenanceAgentIdentifierSP, #token, {expectation}, "Provenance.agent.who.identifier")
* insert CapSupportResourceSearchParam(target, http://hl7.org/fhir/SearchParameter/Provenance-target, #reference, {expectation}, "Target References - usually version specific")
* insert CapSupportResourceSearchParam(recorded, http://hl7.org/fhir/SearchParameter/Provenance-recorded, #date, {expectation}, "When the activity was recorded / updated")
* insert CapSupportResourceSearchParam(when, http://hl7.org/fhir/SearchParameter/Provenance-when, #date, {expectation}, "Provenance.occurred as dateTime")
* insert CapSupportCustomSearchParam(is-emp-chronology, IsEMPChronologySP, #token, {expectation}, "Provenance.extension:isEMPChronology")
// TODO: Custom SearchParameter for extension of the Type MedicationStatement.extension.typr
* rest.resource[=].searchInclude[+] = "Provenance:agent"
* rest.resource[=].searchInclude[+] = "Provenance:target"
// * rest.resource[=].searchRevInclude[+] = "Provenance:target"







Instance: EPAMedicationServiceServer
InstanceOf: TICapabilityStatement
Usage: #definition
* insert Meta-Instance

* id = "epa-medication-service-server"
* name = "EPAMedicationServiceServer"
* title = "EPA CapabilityStatement für den Medication Service"
* description = "EPA CapabilityStatement für den Medication Service"
* contact
  * telecom
    * system = #url
    * value = "https://www.gematik.de"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml
* rest.mode = #server
* extension[baseUrl].valueString = "http://epa4all/epa/medication/api/v1/fhir"
* insert Error423Locked

* insert ImportCapabilityStatment(EPABasicServer, #SHALL)
* insert MedicationInteraction(#SHALL)
* insert MedicationRequestInteraction(#SHALL)
* insert MedicationDispenseInteraction(#SHALL)
* insert MedicationStatementInteraction(#SHALL)
* insert OrganizationInteraction(#SHALL)
* insert PractitionerInteraction(#SHALL)
* insert PractitionerRoleInteraction(#SHALL)
* insert ProvenanceInteraction(#SHALL)

* insert CapSupportSystemOperation(provide-prescription-erp, ProvidePrescriptionERPOP, #SHALL)
* insert SystemLevelOperationStatusCodesWithParameters
* insert SystemLevelOperationStatusCodesEmptyIdTokenCheck

* insert CapSupportSystemOperation(cancel-prescription-erp, CancelPrescriptionERPOP, #SHALL)
* insert SystemLevelOperationStatusCodesWithParameters

* insert CapSupportSystemOperation(provide-dispensation-erp, ProvideDispensationERPOP, #SHALL)
* insert SystemLevelOperationStatusCodesWithParameters
* insert SystemLevelOperationStatusCodesEmptyIdTokenCheck

* insert CapSupportSystemOperation(cancel-dispensation-erp, CancelDispensationERPOP, #SHALL)
* insert SystemLevelOperationStatusCodesWithParameters

* insert CapSupportSystemOperation(medication-list, GetMedicationListOP, #SHALL)
* insert SystemLevelOperationStatusCodesWithBundle
* insert SystemLevelOperationStatusCodesEmptyList

* insert CapSupportSystemOperation(medication-plan, GetMedicationPlanOP, #SHALL)
* insert SystemLevelOperationStatusCodesWithBundle
* insert SystemLevelOperationStatusCodesGeteMP

* insert CapSupportSystemOperation(medication-plan-log, MedicationPlanChronologyLogOP, #SHALL)
* rest.operation[=] insert SuccessfulWithBundle

* insert CapSupportSystemOperation(add-emp-entry, AddEMPEntryOP, #SHALL)
* insert SystemLevelPostEMPOperation

* insert CapSupportSystemOperation(update-emp-entry, UpdateEMPEntryOP, #SHALL)
* insert SystemLevelUpdateEMPOperation

// * insert CapSupportSystemOperation(add-eml-entry, AddEMLEntryOP, #SHALL)
// * insert SystemLevelPostEMLOperation

// * insert CapSupportSystemOperation(update-eml-entry, UpdateEMLEntryOP, #SHALL)
// * insert SystemLevelUpdateEMLOperation


* insert CapSupportSystemOperation(batch-emp, BatchEMPEntriesOP, #SHALL)
* insert SystemLevelPostBatchEMPOperation

* insert CapSupportSystemOperation(emp-commit, EMPCommitOP, #SHALL)
* insert SystemLevelPostEMPCommitOperation


Instance: EPAMedicationServiceClient
InstanceOf: TICapabilityStatement
Usage: #definition
* insert Meta-Instance

* id = "epa-medication-service-client"
* name = "EPAMedicationServiceClient"
* title = "EPA Capability Statement für Clients des ePA Medication Service"
* description = "Dieses Capability Statement legt die Anforderungen an ePA Clients fest, die den Medication Service der verwenden. Es definiert die unterstützten Interaktionen, erforderliche HTTP Header sowie erwartete Status Codes."
* contact
  * telecom
    * system = #url
    * value = "https://www.gematik.de"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml
* rest.mode = #client

* extension[baseUrl].valueString = "http://epa4all/epa/medication/api/v1/fhir"
* insert Error423Locked

* insert ImportCapabilityStatment(EPABasicClient, #SHALL)
* insert MedicationInteraction(#MAY)
* insert MedicationRequestInteraction(#MAY)
* insert MedicationDispenseInteraction(#MAY)
* insert MedicationStatementInteraction(#MAY)
* insert OrganizationInteraction(#MAY)
* insert PractitionerInteraction(#MAY)
* insert PractitionerRoleInteraction(#MAY)
* insert ProvenanceInteraction(#MAY)

* insert CapSupportSystemOperation(provide-prescription-erp, ProvidePrescriptionERPOP, #MAY)
* insert SystemLevelOperationStatusCodesWithParameters
* insert SystemLevelOperationStatusCodesEmptyIdTokenCheck

* insert CapSupportSystemOperation(cancel-prescription-erp, CancelPrescriptionERPOP, #MAY)
* insert SystemLevelOperationStatusCodesWithParameters

* insert CapSupportSystemOperation(provide-dispensation-erp, ProvideDispensationERPOP, #MAY)
* insert SystemLevelOperationStatusCodesWithParameters
* insert SystemLevelOperationStatusCodesEmptyIdTokenCheck

* insert CapSupportSystemOperation(cancel-dispensation-erp, CancelDispensationERPOP, #MAY)
* insert SystemLevelOperationStatusCodesWithParameters

* insert CapSupportSystemOperation(medication-list, GetMedicationListOP, #MAY)
* insert SystemLevelOperationStatusCodesWithBundle
* insert SystemLevelOperationStatusCodesEmptyList

* insert CapSupportSystemOperation(medication-plan, GetMedicationPlanOP, #MAY)
* insert SystemLevelOperationStatusCodesWithBundle
* insert SystemLevelOperationStatusCodesGeteMP

* insert CapSupportSystemOperation(medication-plan-log, MedicationPlanChronologyLogOP, #MAY)
* rest.operation[=] insert SuccessfulWithBundle

* insert CapSupportSystemOperation(add-emp-entry, AddEMPEntryOP, #MAY)
* insert SystemLevelPostEMPOperation

* insert CapSupportSystemOperation(update-emp-entry, UpdateEMPEntryOP, #MAY)
* insert SystemLevelUpdateEMPOperation

// * insert CapSupportSystemOperation(add-eml-entry, AddEMLEntryOP, #MAY)
// * insert SystemLevelPostEMLOperation

// * insert CapSupportSystemOperation(update-eml-entry, UpdateEMLEntryOP, #MAY)
// * insert SystemLevelUpdateEMLOperation

* insert CapSupportSystemOperation(batch-emp, BatchEMPEntriesOP, #MAY)
* insert SystemLevelPostBatchEMPOperation

* insert CapSupportSystemOperation(emp-commit, EMPCommitOP, #MAY)
* insert SystemLevelPostEMPCommitOperation
