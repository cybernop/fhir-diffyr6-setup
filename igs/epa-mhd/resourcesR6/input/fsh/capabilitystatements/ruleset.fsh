RuleSet: Successful
* extension[responseInfo][+]
  * extension[statusCode].valueString = "200"
  * extension[description].valueString = "Successful operation"

RuleSet: SuccessfulWithBundle
* extension[responseInfo][+]
  * extension[statusCode].valueString = "200"
  * extension[description].valueString = "Successful operation"
  * extension[responseType].valueString = "Bundle"


RuleSet: SuccessfulWithDocumentReference
* extension[responseInfo][+]
  * extension[statusCode].valueString = "200"
  * extension[description].valueString = "Successful operation"
  * extension[responseType].valueString = "DocumentReference"


RuleSet: InvalidRequest
* extension[responseInfo][+]
  * extension[statusCode].valueString = "400"
  * extension[description].valueString = "Invalid request"
  * extension[responseType].valueString = "TIOperationOutcome"
  * extension[errorCode].valueString = "MSG_BAD_FORMAT"


RuleSet: UnknownResourceType
* extension[responseInfo][+]
  * extension[statusCode].valueString = "404"
  * extension[description].valueString = "Unknown resource type"
  * extension[responseType].valueString = "TIOperationOutcome"
  * extension[errorCode].valueString = "MSG_UNKNOWN_TYPE"


RuleSet: ResourceIsNotKnown
* extension[responseInfo][+]
  * extension[statusCode].valueString = "404"
  * extension[description].valueString = "Resource is not known"
  * extension[responseType].valueString = "TIOperationOutcome"
  * extension[errorCode].valueString = "MSG_RESOURCE_ID_FAIL"


RuleSet: UnknownSearchParameter
* extension[responseInfo][+]
  * extension[statusCode].valueString = "400"
  * extension[description].valueString = "Unknown search parameter"
  * extension[responseType].valueString = "TIOperationOutcome"
  * extension[errorCode].valueString = "MSG_PARAM_UNKNOWN"


RuleSet: InvalidQueryParameters
* extension[responseInfo][+]
  * extension[statusCode].valueString = "400"
  * extension[description].valueString = "Invalid query parameter(s)"
  * extension[responseType].valueString = "TIOperationOutcome"
  * extension[errorCode].valueString = "MSG_BAD_SYNTAX" 



RuleSet: ImportCapabilityStatment (capabilityStatement, expectation)
* imports[+] = Canonical({capabilityStatement})
* imports[=].extension[0].url = $capabilitystatement-expectation
* imports[=].extension[0].valueCode = {expectation} 

RuleSet: CapSupportResource (resource, expectation)
* rest.resource[+].type = #{resource}
* rest.resource[=].versioning = #versioned-update
* rest.resource[=].readHistory = true
* rest.resource[=].extension[0].url = $capabilitystatement-expectation
* rest.resource[=].extension[0].valueCode = {expectation}

RuleSet: CapSupportProfile (profile, expectation)
* rest.resource[=].supportedProfile[+] = Canonical({profile})
* rest.resource[=].supportedProfile[=].extension[0].url = $capabilitystatement-expectation
* rest.resource[=].supportedProfile[=].extension[0].valueCode = {expectation}

RuleSet: CapSupportInteraction (interaction, expectation)
* rest.resource[=].interaction[+].code = {interaction}
* rest.resource[=].interaction[=].extension[0].url = $capabilitystatement-expectation
* rest.resource[=].interaction[=].extension[0].valueCode = {expectation}

RuleSet: CapSupportResourceSearchParam (name, canonical, type, expectation, documentation)
* rest.resource[=] insert CapSupportSearchParam ({name}, {canonical}, {type}, {expectation}, {documentation})

RuleSet: CapSupportResourceSearchParamNoDefinition (name, type, expectation, documentation)
* rest.resource[=].searchParam[+]
  * name = "{name}"
  * type = {type}
  * documentation = {documentation}
  * extension[0].url = $capabilitystatement-expectation
  * extension[0].valueCode = {expectation}

RuleSet: CapSupportSearchParam (name, canonical, type, expectation, documentation)
* searchParam[+]
  * name = "{name}"
  * definition = "{canonical}"
  * type = {type}
  * documentation = {documentation}
  * extension[0].url = $capabilitystatement-expectation
  * extension[0].valueCode = {expectation}

RuleSet: CapSupportCustomSearchParam (name, instance, type, expectation, documentation)
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = Canonical({instance})
* rest.resource[=].searchParam[=].type = {type}
* rest.resource[=].searchParam[=].documentation = {documentation}
* rest.resource[=].searchParam[=].extension[0].url = $capabilitystatement-expectation
* rest.resource[=].searchParam[=].extension[0].valueCode = {expectation}

RuleSet: CapSupportResourceOperation(name, operation, expectation)
* rest.resource[=] insert CapSupportOperation({name}, {operation}, {expectation})

RuleSet: CapSupportSystemOperation(name, operation, expectation)
* rest insert CapSupportOperation({name}, {operation}, {expectation})

RuleSet: CapSupportOperation(name, operation, expectation)
* operation[+]
  * name = "{name}"
  * definition = Canonical({operation})
  * extension.url = $capabilitystatement-expectation
  * extension.valueCode = {expectation}

RuleSet: ReadInteractionErrorCodes
* rest.resource[=].interaction[=] insert SuccessfulWithDocumentReference
* rest.resource[=].interaction[=] insert InvalidRequest
* rest.resource[=].interaction[=] insert UnknownResourceType
* rest.resource[=].interaction[=] insert ResourceIsNotKnown


RuleSet: SearchTypeInteractionErrorCodes
* rest.resource[=].interaction[=] insert SuccessfulWithBundle
* rest.resource[=].interaction[=] insert UnknownSearchParameter
* rest.resource[=].interaction[=] insert InvalidQueryParameters
* rest.resource[=].interaction[=] insert InvalidRequest
* rest.resource[=].interaction[=] insert UnknownResourceType


// Interactions

RuleSet: DocumentReferenceInteraction(expectation)
* insert CapSupportResource(DocumentReference, #SHALL)
* insert CapSupportProfile(EPAMHDDocumentReferenceR6, #SHALL)
* insert CapSupportInteraction(#search-type, #SHALL)
* insert SearchTypeInteractionErrorCodes
* insert CapSupportInteraction(#read, #SHALL)
* insert ReadInteractionErrorCodes
// Search
* insert CapSupportResourceSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, {expectation}, "Aktenweit eindeutige Kennung des Dokuments auf Basis von DocumentReference.entryUUID")
* insert CapSupportResourceSearchParam(_content, http://hl7.org/fhir/SearchParameter/Resource-content, #string, {expectation}, "Angaben für inhaltsbasierte Volltextsuche in von DocumentReference referenzierten Dokumenten")
* insert CapSupportResourceSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, {expectation}, "Änderungszeitpunkt der DocumentReference")
* insert CapSupportResourceSearchParamNoDefinition(author.given, #string, {expectation}, "Vorname der dokumenterstellenden Person auf Basis von DocumentReference.author\, welcher dem authorPerson-Slot der DocumentEntry.author-Classification entspricht")
* insert CapSupportResourceSearchParamNoDefinition(author.family, #string, {expectation}, "Nachname der dokumenterstellenden Person auf Basis von DocumentReference.author\, welcher dem authorPerson-Slot der DocumentEntry.author-Classification entspricht")
* insert CapSupportResourceSearchParamNoDefinition(author.organization.name, #string, {expectation}, "Name der dokumenterstellenden Leistungserbringerinstitution auf Basis von DocumentReference.author\, welcher dem authorInstitution-Slot der DocumentEntry.author-Classification entspricht")
* insert CapSupportResourceSearchParam(category, http://hl7.org/fhir/SearchParameter/DocumentReference-category, #token, {expectation}, "Grobe Klassifizierung des Dokuments auf Basis von DocumentReference.category")
* insert CapSupportResourceSearchParam(contenttype, http://hl7.org/fhir/SearchParameter/DocumentReference-contenttype, #token, {expectation}, "MimeType des Dokuments auf Basis von DocumentReference.content.attachment.contentType")
* insert CapSupportResourceSearchParam(creation, https://profiles.ihe.net/ITI/MHD/SearchParameter/DocumentReference-Creation, #date, {expectation}, "Erstellungszeitpunkt des Dokuments auf Basis von DocumentReference.content.attachment.creation")
* insert CapSupportResourceSearchParam(date, https://profiles.ihe.net/ITI/MHD/SearchParameter/DocumentReference-date, #date, {expectation}, "Erstellungszeitpunkt der DocumentReference")
* insert CapSupportResourceSearchParam(description, http://hl7.org/fhir/SearchParameter/DocumentReference-description, #string, {expectation}, "Ergänzende Hinweise in Freitext auf Basis von DocumentReference.description")
* insert CapSupportResourceSearchParam(event, http://hl7.org/fhir/SearchParameter/DocumentReference-event, #token, {expectation}, "Die zur Erstellung des Dokuments geführten Ereignisse auf Basis von DocumentReference.context.event")
* insert CapSupportResourceSearchParam(facility, http://hl7.org/fhir/SearchParameter/DocumentReference-facility, #token, {expectation}, "Die auf Basis von DocumentReference.context.facilityTypeArt benannte Art der Einrichtung des dokumentierenden Ereignisses")
* insert CapSupportResourceSearchParam(format, http://hl7.org/fhir/SearchParameter/DocumentReference-format, #token, {expectation}, "Global eindeutiger Code für das Dokumentenformat  auf Basis von DocumentReference.content.format")
* insert CapSupportResourceSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, {expectation}, "Aktenweit eindeutige Kennung des Dokuments auf Basis von DocumentReference.entryUUID")
* insert CapSupportResourceSearchParam(language, http://hl7.org/fhir/SearchParameter/DocumentReference-contenttype, #token, {expectation}, "Sprache in der ein Dokument verfasst ist")
* insert CapSupportResourceSearchParam(patient, http://hl7.org/fhir/SearchParameter/clinical-patient, #reference, {expectation}, "Aktenkontoinhaber")
* insert CapSupportResourceSearchParamNoDefinition(patient.identifier, #token, #SHALL, "Identifikator des Aktenkontoinhabers")
* insert CapSupportResourceSearchParam(period, http://hl7.org/fhir/SearchParameter/DocumentReference-period, #date, {expectation}, "Zeitraum des dokumentierenden Ereignisses auf Basis von DocumentReference.context.period")
* insert CapSupportResourceSearchParam(related, http://hl7.org/fhir/SearchParameter/DocumentReference-related, #reference, {expectation}, "ID-Liste mit assoziierten Dokumenten auf Basis von DocumentReference.context.related")
* insert CapSupportResourceSearchParam(security-label, http://hl7.org/fhir/SearchParameter/DocumentReference-security-label, #token, {expectation}, "Vertraulichkeitskennzeichnung/Datenkategorie des Dokuments auf Basis von DocumentReference.securityLabel")
* insert CapSupportResourceSearchParam(setting, http://hl7.org/fhir/SearchParameter/DocumentReference-setting, #token, {expectation}, "Art der Fachrichtung der erstellenden Einrichtung auf Basis von DocumentReference.context.practiceSetting")
* insert CapSupportResourceSearchParam(status, http://hl7.org/fhir/SearchParameter/DocumentReference-status, #token, #SHALL, "Status des Dokuments auf Basis von DocumentReference.status")
* insert CapSupportCustomSearchParam(title, EPAMHDDocumentReferenceTitleSearchParameter, #string, {expectation}, "Titel des Dokuments auf Basis von DocumentReference.content.attachment.title")
* insert CapSupportResourceSearchParam(type, http://hl7.org/fhir/SearchParameter/clinical-type, #token, {expectation}, "Art des Dokuments auf Basis von DocumentReference.type")

