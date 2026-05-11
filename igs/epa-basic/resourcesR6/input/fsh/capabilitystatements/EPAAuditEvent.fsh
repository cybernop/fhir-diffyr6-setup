RuleSet: AuditEventSearchParameter(expectation)
* insert CapSupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, {expectation}, "Resource.id")
* insert CapSupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, {expectation}, "Resource.meta.lastUpdated")
* insert CapSupportSearchParam(action, http://hl7.org/fhir/SearchParameter/AuditEvent-action, #token, {expectation}, "AuditEvent.action")
* insert CapSupportSearchParam(altid, http://hl7.org/fhir/SearchParameter/AuditEvent-altid, #token, {expectation}, "AuditEvent.agent.altId")
* insert CapSupportSearchParam(date, http://hl7.org/fhir/SearchParameter/AuditEvent-date, #date, {expectation}, "AuditEvent.recorded")
* insert CapSupportSearchParam(outcome, http://hl7.org/fhir/SearchParameter/AuditEvent-outcome, #token, {expectation}, "AuditEvent.outcome")
* insert CapSupportSearchParam(entity-name, http://hl7.org/fhir/SearchParameter/AuditEvent-entity-name, #string, {expectation}, "AuditEvent.entity.name")
* insert CapSupportSearchParam(agent-name, http://hl7.org/fhir/SearchParameter/AuditEvent-agent-name, #string, {expectation}, "AuditEvent.agent.name")
* insert CapSupportSearchParam(type, http://hl7.org/fhir/SearchParameter/AuditEvent-type, #token, {expectation}, "AuditEvent.type")


Instance: EPAAuditEventServer
InstanceOf: TICapabilityStatement
Usage: #definition
* insert Meta-Instance

* id = "epa-audit-event-server"
* name = "EPAAuditEventServer"
* title = "EPA Capability Statement für den Audit Event Service"
* contact
  * telecom
    * system = #url
    * value = "https://www.gematik.de"
* description = "EPA Capability Statement für den Audit Event Service"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml
* rest.mode = #server

* extension[baseUrl].valueString = "http://epa4all/epa/audit/api/v1/fhir"

* insert ImportCapabilityStatment(EPABasicServer, #SHALL)

* insert CapSupportResource(AuditEvent, #SHALL)
* insert CapBaseProfile(EPAAuditEventR6, #SHALL)
* insert CapSupportProfile(EPAAuditEventR6, #SHALL)

* insert CapSupportInteraction(#search-type, #SHALL)
* insert SearchTypeInteractionErrorCodes

* insert CapSupportInteraction(#read, #SHALL)
* insert ReadAuditEventInteractionStatusCodes

* insert AuditEventSearchParameter(#SHALL)



Instance: EPAAuditEventClient
InstanceOf: TICapabilityStatement
Usage: #definition
* insert Meta-Instance
* id = "epa-audit-event-client"
* name = "EPAAuditEventClient"
* title = "Capability Statement für Clients des ePA Audit Event Service"
* contact
  * telecom
    * system = #url
    * value = "https://www.gematik.de"
* description = "Dieses Capability Statement legt die Anforderungen an ePA Clients fest, die den Audit Event Service der verwenden. Es definiert die unterstützten Interaktionen, erforderliche HTTP Header sowie erwartete Statuscodes."
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml

* rest.mode = #client

* extension[baseUrl].valueString = "http://epa4all/epa/audit/api/v1/fhir"

* insert ImportCapabilityStatment(EPABasicClient, #SHALL)

* insert CapSupportResource(AuditEvent, #SHALL)
* insert CapBaseProfile(EPAAuditEventR6, #SHALL)
* insert CapSupportProfile(EPAAuditEventR6, #SHALL)

* insert CapSupportInteraction(#search-type, #SHALL)
* insert SearchTypeInteractionErrorCodes

* insert CapSupportInteraction(#read, #SHALL)
* insert ReadAuditEventInteractionStatusCodes

* insert AuditEventSearchParameter(#MAY)
