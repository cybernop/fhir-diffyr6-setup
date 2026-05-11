Profile: TIPractitionerRoleR6
Parent: PractitionerRole
Id: ti-practitioner-role
Title: "TI PractitionerRole"
Description: """
Dieses Profil beschreibt die Verwendung der FHIR-Ressource PractitionerRole in der Telematikinfrastruktur (TI). Es wird verwendet, um die Rolle und Funktion einer Gesundheitsfachperson innerhalb einer Organisation zu definieren.
"""
* insert Meta-With-Versioning
// preserve the version of this resource
* ^version = "1.3.1"
* ^date = "2026-03-20"
* ^status = #active

* id MS
* practitioner MS
  * insert ReferenceMS
* organization MS
  * insert ReferenceMS
// AUTO-DISABLED (SUSHI R6): * telecom MS
  // AUTO-DISABLED (SUSHI R6): * system MS
  // AUTO-DISABLED (SUSHI R6): * value MS
  // AUTO-DISABLED (SUSHI R6): * use MS
