Instance: ExampleEPAMHDDocumentReference
InstanceOf: EPAMHDDocumentReferenceR6
Title: "Example EPA MHD DocumentReference"
Description: "Beispiel für eine DocumentReference"
Usage: #example

* id = "b2d5f8db-48ca-43c4-a540-6c8f2e853913"
* identifier[entryUUID]
  * system = "urn:ietf:rfc:3986"
  * value = "urn:uuid:b2d5f8db-48ca-43c4-a540-6c8f2e853913"
  * use = #official
* identifier[uniqueId]
  * system = "urn:ietf:rfc:3986"
  * value = "urn:oid:2.25.104666037230925920288492414767863731214"
* masterIdentifier
  * system = "urn:ietf:rfc:3986"
  * value = "urn:oid:2.25.104666037230925920288492414767863731214"
* status = #current
* type = $ihe-dokumenten-typen-cs#ADCH "Administrative Checklisten"
* category = $ihe-dokumenten-klassen-cs#BEF "Befundbericht"
* subject
  * type = #Patient
  * identifier
    * type = http://fhir.de/CodeSystem/identifier-type-de-basis#KVZ10 "Krankenversichertennummer"
    * value = "G995030566"
    * system = "http://fhir.de/sid/gkv/kvid-10"
  * display = "Gundlach, Monika"
* author[+]
  * type = #Organization
  * identifier
    * system = "https://gematik.de/fhir/sid/telematik-id"
    * value = "1-2c47sd-e518"
  * display = "Arztpraxis Dr. Thilo Weber"
* description = "Beispieldokument"
* securityLabel[+] = $hl7-confidentiality-cs#N "normal"
* securityLabel[+] = $epa-data-category-medical-cs-oid#reports "Befunde/Diagnosen/Berichte"
* content[+]
  * attachment
    * contentType = #application/pdf
    * language = #de-DE
    * url = "http://epa4all/epa/mhd/retrieve/v1/content/b2d5f8db-48ca-43c4-a540-6c8f2e853913.pdf"
    * size = 3654
    * hash = "yPnibUHWIkRejf1euZCDWQ=="
    * title = "Neurologischer_Untersuchungsbefund.pdf"
    * creation = "2025-12-01T09:03:24Z"
  * format = $ihe-dokumenten-formate-cs#urn:ihe-d:spec:PDF_A1:2005 "PDF/A-1"
* context
  * event[+] = $ihe-fallkontext-dokumentenerstellung-cs#E200 "stationärer Aufenthalt"
  * period.start = "2025-11-28"
  * facilityType = $ihe-einrichtungen-patientenbezogen-cs#KHS "Krankenhaus"
  * practiceSetting = $ihe-fachrichtungen-aerztlich-cs#NEUR "Neurologie"
  * related[+].identifier.system = "urn:gematik:iti:xds:2023:rootDocumentUniqueId"
  * related[+].identifier.value = "http://epa4all/epa/mhd/retrieve/v1/content/2.25.31457958586625016607071363908764203414.pdf"
