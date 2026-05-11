Instance: EPAMHDDocumentConsumer
InstanceOf: TICapabilityStatement
Title: "EPA MHD Service (Document Consumer - Client)"
Usage: #definition
* insert Meta-Instance

* id = "epa-mhd-document-consumer"
* name = "EPAMHDDocumentConsumer"
* title = "EPA MHD Service (Document Consumer - Client)"
* contact
  * telecom
    * system = #url
    * value = "https://www.gematik.de"
* description = "CapabilityStatement für den ePA MHD Service (Document Consumer - Client)"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml
* rest.mode = #client
* extension[baseUrl].valueString = "http://epa4all/epa/mhd/api/v1/fhir/"
* insert ImportCapabilityStatment(EPABasicClient, #SHALL)
* insert DocumentReferenceInteraction(#MAY)
* insert CapSupportResource(Bundle, #SHALL)
* insert CapSupportProfile(EPADocumentSearchResultBundleR6, #SHALL)