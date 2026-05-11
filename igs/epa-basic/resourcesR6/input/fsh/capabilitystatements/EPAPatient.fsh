Instance: EPAPatientServer
InstanceOf: TICapabilityStatement
Usage: #definition
* insert Meta-Instance
* id = "epa-patient-server"
* name = "EPAPatientServer"
* title = "EPA CapabilityStatement für den Patient Service"

* extension[baseUrl].valueString = "http://epa4all/epa/patient/api/v1/fhir"

* contact
  * telecom
    * system = #url
    * value = "https://www.gematik.de"
* description = "EPA Capability Statement für den Patient Service"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml
* rest.mode = #server

* insert ImportCapabilityStatment(EPABasicServer, #SHALL)

* insert CapSupportResource(Patient, #SHALL)
* rest.resource[=].versioning = #versioned-update
* rest.resource[=].readHistory = true
* insert CapBaseProfile(EPAPatientR6, #SHALL)
* insert CapSupportProfile(TIPatient, #SHALL)
* insert CapSupportResourceConditionalUpdate(true, #SHALL)

* insert CapSupportInteraction(#search-type, #SHALL)
* insert SearchTypeInteractionErrorCodes

* insert CapSupportInteraction(#history-type, #SHALL)
* insert HistoryInteractionStatusCodes

* insert CapSupportInteraction(#read, #SHALL)
* insert ReadPatientInteractionStatusCodes

* insert CapSupportInteraction(#history-instance, #SHALL)
* insert ReadPatientHistortyInstanceInteractionStatusCodes

* insert CapSupportInteraction(#vread, #SHALL)
* insert ReadPatientInteractionStatusCodes

* insert CapSupportInteraction(#update, #SHALL)
* insert PatientUpdateInteractionErrorCodes

* insert CapSupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Patient-identifier, #token, #SHALL, "Patient.identifier")



Instance: EPAPatientClient
InstanceOf: TICapabilityStatement
Usage: #definition
* insert Meta-Instance
* id = "epa-patient-client"
* name = "EPAPatientClient"
* title = "Capability Statement für Clients des ePA Patient Service"

* extension[baseUrl].valueString = "http://epa4all/epa/patient/api/v1/fhir"

* contact
  * telecom
    * system = #url
    * value = "https://www.gematik.de"
* description = "EPA CapabilityStatement für den Patient Service"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml
* rest.mode = #client

* insert ImportCapabilityStatment(EPABasicClient, #SHALL)

* insert CapSupportResource(Patient, #SHALL)
* rest.resource[=].versioning = #versioned-update
* rest.resource[=].readHistory = true
* insert CapBaseProfile(EPAPatientR6, #SHALL)
* insert CapSupportProfile(TIPatient, #SHALL)
* insert CapSupportResourceConditionalUpdate(true, #SHALL)

* insert CapSupportInteraction(#search-type, #MAY)
* insert SearchTypeInteractionErrorCodes

* insert CapSupportInteraction(#history-type, #MAY)
* insert HistoryInteractionStatusCodes

* insert CapSupportInteraction(#read, #MAY)
* insert ReadPatientInteractionStatusCodes

* insert CapSupportInteraction(#history-instance, #MAY)
* insert ReadPatientHistortyInstanceInteractionStatusCodes

* insert CapSupportInteraction(#vread, #MAY)
* insert ReadPatientInteractionStatusCodes

* insert CapSupportInteraction(#update, #SHALL)
* insert PatientUpdateInteractionErrorCodes

* insert CapSupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/Patient-identifier, #token, #SHALL, "Patient.identifier")