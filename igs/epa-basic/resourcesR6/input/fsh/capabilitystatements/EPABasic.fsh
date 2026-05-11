RuleSet: X-Request-ID (required)
* extension[header][+]
  * extension[name].valueString = "X-Request-ID"
  * extension[type].valueString = "string"
  * extension[description].valueString = "UUID of the request message"
  * extension[format].valueString = "uuid"
  * extension[required].valueBoolean = {required}


RuleSet: X-InsurantID (required)
* extension[header][+]
  * extension[name].valueString = "x-insurantid"
  * extension[type].valueString = "string"
  * extension[description].valueString = "Health Record Identifier"
  * extension[pattern].valueString = """^[A-Z]{1}\d{9}$"""
  * extension[required].valueBoolean = {required}


RuleSet: X-UserAgent (required)
* extension[header][+]
  * extension[name].valueString = "x-useragent"
  * extension[type].valueString = "string"
  * extension[description].valueString = "user agent information"
  * extension[pattern].valueString = """^[a-zA-Z0-9]{20}\/[a-zA-Z0-9\-\.]{1,15}$"""
  * extension[required].valueBoolean = {required}


RuleSet: BaseSuccessful
* extension[responseInfo][+]
  * extension[statusCode].valueString = "200"
  * extension[description].valueString = "Successful operation"

RuleSet: BaseInvalAuth
* extension[responseInfo][+]
  * extension[statusCode].valueString = "403"
  * extension[description].valueString = "Requestor not authorized (no user session with valid ID-Token available)"
  * extension[responseType].valueString = "application/json"
  * extension[errorCode].valueString = "invalAuth"

RuleSet: BaseNotEntitled
* extension[responseInfo][+]
  * extension[statusCode].valueString = "403"
  * extension[description].valueString = "Requestor has no valid entitlement"
  * extension[responseType].valueString = "application/json"
  * extension[errorCode].valueString = "notEntitled"

RuleSet: BaseInvalidOid
* extension[responseInfo][+]
  * extension[statusCode].valueString = "403"
  * extension[description].valueString = "Requestor role is not in the list of allowed user groups"
  * extension[responseType].valueString = "application/json"
  * extension[errorCode].valueString = "invalidOid"

RuleSet: BaseUnregisteredDevice
* extension[responseInfo][+]
  * extension[statusCode].valueString = "403"
  * extension[description].valueString = "Device registration does not exist (if requestor role is oid_versicherter only)"
  * extension[responseType].valueString = "application/json"
  * extension[errorCode].valueString = "unregisteredDevice"

RuleSet: BaseNoHealthRecord
* extension[responseInfo][+]
  * extension[statusCode].valueString = "404"
  * extension[description].valueString = "Health record is in state UNKNOWN or INITIALIZED"
  * extension[responseType].valueString = "application/json"
  * extension[errorCode].valueString = "noHealthRecord"

RuleSet: BaseStatusMismatch
* extension[responseInfo][+]
  * extension[statusCode].valueString = "409"
  * extension[description].valueString = "Request conflicts with the current state of the health record"
  * extension[responseType].valueString = "application/json"
  * extension[errorCode].valueString = "statusMismatch"

RuleSet: BaseInternalError
* extension[responseInfo][+]
  * extension[statusCode].valueString = "500"
  * extension[description].valueString = "Any other error"
  * extension[responseType].valueString = "application/json"
  * extension[errorCode].valueString = "internalError"


Instance: EPABasicServer
InstanceOf: TICapabilityStatement
Usage: #definition
* insert Meta-Instance

* id = "epa-basic-server"
* name = "EPABasicServer"
* title = "EPA Basic Server"
* description = "Das Basis Capability Statement für einen FHIR Data Service in der ePA. Es beschreibt globale Header-Anforderungen und einheitliche HTTP Fehler Codes."

* contact
  * telecom
    * system = #url
    * value = "https://www.gematik.de"

* kind = #requirements
* fhirVersion = #4.0.1

* format[0] = #application/fhir+json

* insert X-Request-ID(true)
* insert X-InsurantID(true)
* insert X-UserAgent(true)

* insert BaseInvalAuth
* insert BaseNotEntitled
* insert BaseInvalidOid
* insert BaseUnregisteredDevice
* insert BaseNoHealthRecord
* insert BaseStatusMismatch
* insert BaseInternalError
* rest[0].mode = #server


Instance: EPABasicClient
InstanceOf: TICapabilityStatement
Usage: #definition
* insert Meta-Instance

* id = "epa-basic-client"
* name = "EPABasicClient"
* title = "EPA Basic Client"
* description = "Dieses Capability Statement beschreibt die Anforderungen an Clients, die den FHIR Data Service der ePA verwenden. Es legt fest, welche HTTP-Header obligatorisch sind und welche einheitlichen Fehlercodes im Fehlerfall zu erwarten sind."

* contact
  * telecom
    * system = #url
    * value = "https://www.gematik.de"

* kind = #requirements
* fhirVersion = #4.0.1

* format[0] = #application/fhir+json

* insert X-Request-ID(false)
* insert X-InsurantID(true)
* insert X-UserAgent(true)

* insert BaseInvalAuth
* insert BaseNotEntitled
* insert BaseInvalidOid
* insert BaseUnregisteredDevice
* insert BaseNoHealthRecord
* insert BaseStatusMismatch
* insert BaseInternalError
* rest[0].mode = #client
