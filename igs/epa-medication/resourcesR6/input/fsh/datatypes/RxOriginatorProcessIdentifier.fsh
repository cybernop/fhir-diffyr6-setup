Profile: RxOriginatorProcessIdentifierR6
Parent: Identifier
Id: rx-originator-process-identifier
Description: "The RxOriginatorProcessIdentifierR6, generated within the Medication Service, links the prescriptionID from the E-Rezept-Fachdienst with the original input FHIR resource ID, facilitating accurate tracking and utilization of medication data in operational processes within digital healthcare systems."
* insert Meta
// preserve the version
* ^version = "1.0.6-2"
* ^date = "2025-05-12"
* ^status = #active

* system 1..1 MS
* system = $sid-identifier-rx-originator-process
* value 1.. MS
