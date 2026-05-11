Alias: $sid-epa-fhir-data-service = https://gematik.de/fhir/sid/epa-fhir-data-service

Profile: IdentifierEPAFHIRDataServiceR6
Parent: Identifier
Id: identifier-epa-fhir-data-service
Title: "Identifikator-Profil für ein FHIR Data Service der ePA"
Description: "Identifikator-Profil für ein FHIR Data Service der ePA"
* insert Meta

// preserve the version of this resource
* ^version = "1.2.0"
* ^date = "2025-09-12"
* ^status = #active

* use = #official (exactly)
* system 1..1 MS
* system = $sid-epa-fhir-data-service (exactly)
* obeys epa-fhir-data-service-identifier-allowed-values
* value 1..1 MS
  * ^short = "Beispiel: MEDICATIONSVC"