Instance: EPAMHDDocumentResponder
InstanceOf: TICapabilityStatement
Title: "EPA MHD Service (Document Responder - Server)"
Usage: #definition
* insert Meta-Instance

* id = "epa-mhd-document-responder"
* name = "EPAMHDDocumentResponder"
* title = "ePA MHD Service (Document Responder - Server)"
* contact
  * telecom
    * system = #url
    * value = "https://www.gematik.de"
* description = "CapabilityStatement für den ePA MHD Service (Document Responder - Server)"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+json
* format[+] = #application/fhir+xml
* rest.mode = #server
* extension[baseUrl].valueString = "http://epa4all/epa/mhd/api/v1/fhir/"
* insert ImportCapabilityStatment(EPABasicServer, #SHALL)
* insert DocumentReferenceInteraction(#SHALL)
* insert CapSupportResource(Bundle, #SHALL)
* insert CapSupportProfile(EPADocumentSearchResultBundleR6, #SHALL)