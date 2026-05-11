Alias: $designation-usage = http://terminology.hl7.org/CodeSystem/designation-usage

ValueSet: EPAProvideDispensationStatusVS
Id: epa-provide-dispensation-status-vs
Title: "EPA Statuswerte Dispensierinformationen einstellen (E-Rezept-Fachdienst)"
Description: "Dieses ValueSet definiert die möglichen ePA Statuswerte für die FHIR-Operation Dispensierinformationen einstellen (E-Rezept-Fachdienst). Es bestimmt, ob eine vorläufige oder abgeschlossene Dispensierung vorliegt."
* insert Meta-VS
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* medicationdispense-status#in-progress "In Progress"
* medicationdispense-status#in-progress ^designation[0].language = #de
// * medicationdispense-status#in-progress ^designation[=].use = $designation-usage#display
* medicationdispense-status#in-progress ^designation[=].value = "In Bearbeitung"
* medicationdispense-status#in-progress ^designation[+].language = #de
// * medicationdispense-status#in-progress ^designation[=].use = $designation-usage#definition
* medicationdispense-status#in-progress ^designation[=].value = "Abgabe ist erfolgt, Bearbeitung noch nicht final abgeschlossen."
* medicationdispense-status#completed "Completed"
* medicationdispense-status#completed ^designation[0].language = #de
// * medicationdispense-status#completed ^designation[=].use = $designation-usage#display
* medicationdispense-status#completed ^designation[=].value = "Abgeschlossen"
* medicationdispense-status#completed ^designation[+].language = #de
// * medicationdispense-status#completed ^designation[=].use = $designation-usage#definition
* medicationdispense-status#completed ^designation[=].value = "Abgabe ist final abgeschlossen und quittiert."


