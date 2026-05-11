// RuleSet: AcceptHeader
// * extension[header][+]
//   * extension[name].valueString = "Accept"
//   * extension[type].valueString = "string"
//   * extension[description].valueString = "Der Accept-Header gibt an, in welchem Format der Client die FHIR-Antwort erhalten möchte  unterstützt werden application/fhir+json und application/fhir+xml"
//   * extension[required].valueBoolean = false


RuleSet: Successful
* extension[responseInfo][+]
  * extension[statusCode].valueString = "200"
  * extension[description].valueString = "Successful operation"


RuleSet: Created
* extension[responseInfo][+]
  * extension[statusCode].valueString = "201"
  * extension[description].valueString = "Created, wenn eine neue Ressourceninstanz erstellt wurde"


RuleSet: IDTokenCheck
* extension[responseInfo][+]
  * extension[statusCode].valueString = "403"
  * extension[description].valueString = "ID-Token or Insurant-ID mismatch"
  * extension[responseType].valueString = "TIOperationOutcome"
  * extension[errorCode].valueString = "SVC_IDENTITY_MISMATCH"


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


// RuleSet: UnprocessableContent
// * extension[responseInfo][+]
//   * extension[statusCode].valueString = "422"
//   * extension[description].valueString = "Unprocessable Content, falls ein falscher Identifier (KVNR) in der Anfrage angegeben wurd"
//   * extension[responseType].valueString = "TIOperationOutcome"
//   * extension[errorCode].valueString = "MSG_RESOURCE_ID_MISMATCH"

// RuleSet: NotFound
// * extension[responseInfo][+]
//   * extension[statusCode].valueString = "404"
//   * extension[description].valueString = "Not found"
//   * extension[responseType].valueString = "TIOperationOutcome"
//   * extension[errorCode].valueString = "MSG_RESOURCE_ID_FAIL"


RuleSet: InvalidQueryParameters
* extension[responseInfo][+]
  * extension[statusCode].valueString = "400"
  * extension[description].valueString = "Invalid query parameter(s)"
  * extension[responseType].valueString = "TIOperationOutcome"
  * extension[errorCode].valueString = "MSG_BAD_SYNTAX"


RuleSet: UnknownSearchParameter
* extension[responseInfo][+]
  * extension[statusCode].valueString = "400"
  * extension[description].valueString = "Unknown search parameter"
  * extension[responseType].valueString = "TIOperationOutcome"
  * extension[errorCode].valueString = "MSG_PARAM_UNKNOWN"


RuleSet: UnprocessableEntity
* extension[responseInfo][+]
  * extension[statusCode].valueString = "422"
  * extension[description].valueString = "Unprocessable Entity"
  * extension[responseType].valueString = "TIOperationOutcome"


RuleSet: ImportCapabilityStatment (capabilityStatement, expectation)
* imports[+] = Canonical({capabilityStatement})
* imports[=].extension[0].url = $capabilitystatement-expectation
* imports[=].extension[0].valueCode = {expectation}


RuleSet: CapSupportResource (resource, expectation)
* rest.resource[+].type = #{resource}
// * rest.resource[=].versioning = #versioned-update
// * rest.resource[=].readHistory = true
* rest.resource[=].extension[0].url = $capabilitystatement-expectation
* rest.resource[=].extension[0].valueCode = {expectation}

RuleSet: CapSupportProfile (profile, expectation)
* rest.resource[=].supportedProfile[+] = Canonical({profile})
* rest.resource[=].supportedProfile[=].extension[0].url = $capabilitystatement-expectation
* rest.resource[=].supportedProfile[=].extension[0].valueCode = {expectation}

RuleSet: CapBaseProfile (profile, expectation)
* rest.resource[=].profile = Canonical({profile})
* rest.resource[=].profile.extension[0].url = $capabilitystatement-expectation
* rest.resource[=].profile.extension[0].valueCode = {expectation}

RuleSet: CapSupportInteraction (interaction, expectation)
* rest.resource[=].interaction[+].code = {interaction}
* rest.resource[=].interaction[=].extension[0].url = $capabilitystatement-expectation
* rest.resource[=].interaction[=].extension[0].valueCode = {expectation}

RuleSet: CapSupportSearchParam (name, canonical, type, expectation, documentation)
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{canonical}"
* rest.resource[=].searchParam[=].type = {type}
* rest.resource[=].searchParam[=].documentation = {documentation}
* rest.resource[=].searchParam[=].extension[0].url = $capabilitystatement-expectation
* rest.resource[=].searchParam[=].extension[0].valueCode = {expectation}

RuleSet: CapSupportCustomSearchParam (name, instance, type, expectation, documentation)
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = Canonical({instance})
* rest.resource[=].searchParam[=].type = {type}
* rest.resource[=].searchParam[=].documentation = {documentation}
* rest.resource[=].searchParam[=].extension[0].url = $capabilitystatement-expectation
* rest.resource[=].searchParam[=].extension[0].valueCode = {expectation}

RuleSet: CapSupportResourceOperation(name, operation, expectation)
* rest.resource[=].operation[+].name = "{name}"
* rest.resource[=].operation[=].definition = Canonical({operation})
* rest.resource[=].operation[=].extension[0].url = $capabilitystatement-expectation
* rest.resource[=].operation[=].extension[0].valueCode = {expectation}

RuleSet: CapSupportResourceConditionalCreate(value, expectation)
* rest.resource[=].conditionalCreate = {value}
* rest.resource[=].conditionalCreate.extension[0].url = $capabilitystatement-expectation
* rest.resource[=].conditionalCreate.extension[0].valueCode = {expectation}

RuleSet: CapSupportResourceConditionalUpdate(value, expectation)
* rest.resource[=].conditionalUpdate = {value}
* rest.resource[=].conditionalUpdate.extension[0].url = $capabilitystatement-expectation
* rest.resource[=].conditionalUpdate.extension[0].valueCode = {expectation}

RuleSet: CapSupportResourceUpdateCreate(value, expectation)
* rest.resource[=].updateCreate = {value}
* rest.resource[=].updateCreate.extension[0].url = $capabilitystatement-expectation
* rest.resource[=].updateCreate.extension[0].valueCode = {expectation}



RuleSet: ReadInteractionErrorCodes
// * rest.resource[=].interaction[=] insert AcceptHeader
// * rest.resource[=].interaction[=] insert Successful
* rest.resource[=].interaction[=] insert InvalidRequest
* rest.resource[=].interaction[=] insert UnknownResourceType
* rest.resource[=].interaction[=] insert ResourceIsNotKnown
// * rest.resource[=].interaction[=] insert NotFound

RuleSet: ReadPatientInteractionStatusCodes
* rest.resource[=].interaction[=] insert Successful
* rest.resource[=].interaction[=].extension[responseInfo][=]
  * extension[responseType].valueString = "EPAPatientR6"
* insert ReadInteractionErrorCodes

RuleSet: ReadPatientHistortyInstanceInteractionStatusCodes
* rest.resource[=].interaction[=] insert Successful
* rest.resource[=].interaction[=].extension[responseInfo][=]
  * extension[responseType].valueString = "Bundle"
* insert ReadInteractionErrorCodes

RuleSet: ReadAuditEventInteractionStatusCodes
* rest.resource[=].interaction[=] insert Successful
* rest.resource[=].interaction[=].extension[responseInfo][=]
  * extension[responseType].valueString = "EPAAuditEventR6"
* insert ReadInteractionErrorCodes


RuleSet: SearchTypeInteractionErrorCodes
// * rest.resource[=].interaction[=] insert AcceptHeader
* rest.resource[=].interaction[=] insert Successful
* rest.resource[=].interaction[=].extension[responseInfo][=]
  * extension[responseType].valueString = "Bundle"
* rest.resource[=].interaction[=] insert UnknownSearchParameter
* rest.resource[=].interaction[=] insert InvalidQueryParameters
* rest.resource[=].interaction[=] insert InvalidRequest
* rest.resource[=].interaction[=] insert UnknownResourceType


RuleSet: HistoryInteractionStatusCodes
// * rest.resource[=].interaction[=] insert AcceptHeader
* rest.resource[=].interaction[=] insert Successful
* rest.resource[=].interaction[=].extension[responseInfo][=]
  * extension[responseType].valueString = "Bundle"
* rest.resource[=].interaction[=] insert InvalidRequest
* rest.resource[=].interaction[=] insert UnknownResourceType


RuleSet: PatientUpdateInteractionErrorCodes
// * rest.resource[=].interaction[=] insert AcceptHeader
* rest.resource[=].interaction[=] insert Created
* rest.resource[=].interaction[=].extension[responseInfo][=]
  * extension[responseType].valueString = "EPAPatientR6"
* rest.resource[=].interaction[=] insert Successful
* rest.resource[=].interaction[=].extension[responseInfo][=]
  * extension[responseType].valueString = "EPAPatientR6"

* rest.resource[=].interaction[=] insert InvalidRequest
* rest.resource[=].interaction[=].extension[responseInfo][+]
  * extension[statusCode].valueString = "400"
  * extension[description].valueString = "Invalid request"
  * extension[responseType].valueString = "application/json"
  * extension[errorCode].valueString = "malformedRequest"
* rest.resource[=].interaction[=].extension[responseInfo][+]
  * extension[statusCode].valueString = "422"
  * extension[description].valueString = "Unprocessable Content, falls ein falscher Identifier (KVNR) in der Anfrage angegeben wurde"
  * extension[responseType].valueString = "TIOperationOutcome"
  * extension[errorCode].valueString = "MSG_RESOURCE_ID_MISMATCH"
* rest.resource[=].interaction[=] insert IDTokenCheck
* rest.resource[=].interaction[=] insert UnknownResourceType
* rest.resource[=].interaction[=] insert ResourceIsNotKnown
* rest.resource[=].interaction[=] insert UnprocessableEntity
* rest.resource[=].interaction[=].extension[responseInfo][+]
  * extension[statusCode].valueString = "412"
  * extension[description].valueString = "Precondition Failed, wenn mehrere Ressourceninstanzen gefunden wurden"
  * extension[responseType].valueString = "TIOperationOutcome"
  * extension[errorCode].valueString = "UPDATE_MULTIPLE_MATCHES"
