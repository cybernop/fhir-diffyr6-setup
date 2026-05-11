Profile: TIOrganizationR6
Id: ti-organization
Parent: Organization
Title: "TI Organization"
Description: "Definiert die Datenstruktur für medizinische, regulatorische und technische Organisationen"
* insert Meta-With-Versioning
// preserve the version of this resource
* ^version = "1.3.1"
* ^date = "2026-03-20"
* ^status = #active

* extension MS
* extension contains
    NcpehCountryExtension named ncpehCountryEx 0..1 MS
* extension[ncpehCountryEx] insert ExtensionCodingMS
* id MS
* active MS
* name 1..1 MS
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    TelematikID 0..1 MS and
    BSNR 0..1 MS and
    KZVA 0..1 MS and
    IKNR 0..* MS
* identifier[TelematikID] only $identifier-telematik-id
  // AUTO-DISABLED (SUSHI R6): * insert IdentifierMS
* identifier[BSNR] only $identifier-bsnr
  // AUTO-DISABLED (SUSHI R6): * insert IdentifierMS
* identifier[KZVA] only $identifier-kzva
  // AUTO-DISABLED (SUSHI R6): * insert IdentifierMS
* identifier[IKNR] only $identifier-iknr
  // AUTO-DISABLED (SUSHI R6): * insert IdentifierMS
* type MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* type contains
    providerType 0..* MS and
    profession 0..* MS
* type[providerType] from TIOrganizationTypeVS (required)
  // AUTO-DISABLED (SUSHI R6): * insert CodeableConceptMS
* type[profession] from TIOrganizationProfessionTypeOidVS (required)
  // AUTO-DISABLED (SUSHI R6): * insert CodeableConceptMS
* alias MS
* contact MS
  * name MS
    * insert HumanNameMS
// AUTO-DISABLED (SUSHI R6): * address MS
  // AUTO-DISABLED (SUSHI R6): * use MS
  // AUTO-DISABLED (SUSHI R6): * text MS
  // AUTO-DISABLED (SUSHI R6): * line MS
  // AUTO-DISABLED (SUSHI R6): * city MS
  // AUTO-DISABLED (SUSHI R6): * state MS
  // AUTO-DISABLED (SUSHI R6): * postalCode MS
  // AUTO-DISABLED (SUSHI R6): * country MS
* partOf MS
  * insert ReferenceMS
