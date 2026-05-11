Alias: $EPAAuditEvent-Version = 1.3.0
RuleSet: EPAAuditEventInstanceMeta
* insert InstanceMetaProfile(EPAAuditEventR6, 1.3.0)

RuleSet: Requestor
* requestor
  * ^short = "Sollte auf true gesetzt sein, wenn dieser Agent das Ereignis initiiert hat"
  * ^definition = "Dieses Feld sollte auf true gesetzt sein, wenn der jeweilige Agent (z.B. Nutzer oder System) der Auslöser der dokumentierten Aktion war"

Profile: EPAAuditEventR6
Id: epa-auditevent
Parent: AuditEvent
Title: "EPA AuditEvent"
Description: "Defines the data structure for audit events in the ePA system."
* insert Meta

// preserve the version of this resource
* ^version = $EPAAuditEvent-Version
* ^date = "2025-12-15"
* ^status = #active

* type from EPAAuditEventTypeVS (required)
* subtype 0..0
* action 1..1 MS
  * ^short = "Type of action performed during the event. CREATE: C | READ: R | UPDATE: U | DELETE: D | EXECUTE: E"
  * ^definition = "Type of action performed during the event. CREATE: C | READ: R | UPDATE: U | DELETE: D | EXECUTE: E"
// AUTO-DISABLED (SUSHI R6): * period 0..0
* recorded 1..1 MS
* outcome 1..1 MS
  * ^short = "success: 0; failure: 4; major failure: 12"
  * ^definition = "success: 0; failure: 4; major failure: 12"
// AUTO-DISABLED (SUSHI R6): * outcomeDesc 0..0
* agent 1.. MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* agent contains
  user 0..1 MS and
  client 0..1 MS and
  internal 0..1 MS
* agent[user]
  * ^short = "The agent user refers to the service provider (LE) or the service provider institution (LEI)"
  * ^definition = "The agent user refers to the service provider (LE) or the service provider institution (LEI)"
  * extension contains EPAHealthcareFacilityTypeExtension named healthcareFacilityType ..1 MS
  * type from EPAAuditEventAgentTypeUserVS (required)
  * type 1..1 MS
    // AUTO-DISABLED (SUSHI R6): * insert CodeableConceptMS
  * role from EPAEHealthDSIHealthcareFacilityTypeVS
  * role MS
    * ^short = "Professional role of the service provider"
    * ^definition = "Professional role of the service provider"
    * coding MS
      * system 1.. MS
      * code 1.. MS
      * display MS
  // AUTO-DISABLED (SUSHI R6): * altId 0..1 MS
    // AUTO-DISABLED (SUSHI R6): * ^short = "Alternative User identity (e.g. Telematik-ID or the KVNR)"
    // AUTO-DISABLED (SUSHI R6): * ^definition = "Alternative User identity (e.g. Telematik-ID or the KVNR)"
  // AUTO-DISABLED (SUSHI R6): * who 0..1 MS
    * ^short = "The subject Id of the IDToken"
    * ^definition = "The subject Id of the IDToken"
    // AUTO-DISABLED (SUSHI R6): * identifier 1..1 MS
    // AUTO-DISABLED (SUSHI R6): * identifier only IdentifierTelematikId or IdentifierKvid10
      // AUTO-DISABLED (SUSHI R6): * insert IdentifierMS
  // AUTO-DISABLED (SUSHI R6): * name 1.. MS
    // AUTO-DISABLED (SUSHI R6): * ^short = "Name of HCP or Insurant"
    // AUTO-DISABLED (SUSHI R6): * ^definition = "Name of HCP or Insurant, in case of EU-access provide the name of the practitioner and the organization separated by a '/' "
  * insert Requestor
  * location 0..0
  * policy 0..0
  // AUTO-DISABLED (SUSHI R6): * media 0..0
  // AUTO-DISABLED (SUSHI R6): * network 0..0
* agent[client]
  * ^short = "The agent client refers to a software system that has executed the action, for example, E-Rezept Fachdienst"
  * ^definition = "The agent client refers to a software system that has executed the action, for example, E-Rezept Fachdienst"
  * type from EPAAuditEventAgentTypeClientVS (required)
  * type 1..1 MS
    // AUTO-DISABLED (SUSHI R6): * insert CodeableConceptMS
  * role MS
  // AUTO-DISABLED (SUSHI R6): * altId 0..1 MS
    // AUTO-DISABLED (SUSHI R6): * ^short = "Alternative client identity (e.g. Telematik-ID))"
    // AUTO-DISABLED (SUSHI R6): * ^definition = "Alternative client identity (e.g. Telematik-ID)"
  * who 1..1 MS
    * ^short = "The subject Id of the IDToken"
    * ^definition = "The subject Id of the IDToken"
    * identifier 1..1 MS
    * identifier only IdentifierTelematikId
      // AUTO-DISABLED (SUSHI R6): * insert IdentifierMS
  // AUTO-DISABLED (SUSHI R6): * name 1..1 MS
    // AUTO-DISABLED (SUSHI R6): * ^short = "Name e.g. eRezept, EU access/country name or DiGA"
    // AUTO-DISABLED (SUSHI R6): * ^definition = "Name of a service e.g. eRezept, EU access/country name or DiGA"
  * insert Requestor
  * location 0..0
  * policy 0..0
  // AUTO-DISABLED (SUSHI R6): * media 0..0
  // AUTO-DISABLED (SUSHI R6): * network 0..0
* agent[internal]
  * ^short = "The agent internal refers to internal actions of the Elektronische Patientenakte Fachdienst (ePA) service, such as data export submissions"
  * ^definition = "The agent internal refers to internal actions of the Elektronische Patientenakte Fachdienst (ePA) service, such as data export submissions"
  * type from EPAAuditEventServiceTypeVS (required)
  * type 1..1 MS
    // AUTO-DISABLED (SUSHI R6): * insert CodeableConceptMS
  * role 0..0
  // AUTO-DISABLED (SUSHI R6): * altId 0..1 MS
  // AUTO-DISABLED (SUSHI R6): * altId = "epa" (exactly)
    // AUTO-DISABLED (SUSHI R6): * ^short = "altId MUST be epa"
    // AUTO-DISABLED (SUSHI R6): * ^definition = "altId MUST be epa"
  // AUTO-DISABLED (SUSHI R6): * name 1..1 MS
  // AUTO-DISABLED (SUSHI R6): * name = "ePA" (exactly)
    // AUTO-DISABLED (SUSHI R6): * ^short = "Name MUST be ePA"
    // AUTO-DISABLED (SUSHI R6): * ^definition = "Name MUST be ePA"
  * insert Requestor
  * location 0..0
  * policy 0..0
  // AUTO-DISABLED (SUSHI R6): * media 0..0
  // AUTO-DISABLED (SUSHI R6): * network 0..0
* source 1..1 MS
  * observer
    * display = "Elektronische Patientenakte Fachdienst" (exactly)
  * type 1..1 MS
    * insert CodingMS
  * type from EPAAuditEventServiceTypeVS (required)
* entity 1.. MS
  * what 0..0
  // AUTO-DISABLED (SUSHI R6): * type 0..0
  * role 0..0
  // AUTO-DISABLED (SUSHI R6): * lifecycle 0..0
  * securityLabel 0..0
  // AUTO-DISABLED (SUSHI R6): * name 0..1 MS
    // AUTO-DISABLED (SUSHI R6): * ^short = "The title of the XDS document, FHIR resource or object name of a service (e.g. Entitlement Service, Device Management, ...)."
    // AUTO-DISABLED (SUSHI R6): * ^definition = "The title of the XDS document, FHIR resource or object name of a service (e.g. Entitlement Service, Device Management, ...)."
  * description 0..1 MS
    * ^short = "The OperationId"
    * ^definition = "The OperationId"
  * query 0..0
  * detail 0.. MS
    * type 1..1 MS
      * ^short = "The Name of the property (e.g. Document Format, DocumentID, ...)."
      * ^definition = "The Name of the property (e.g. Document Format, DocumentID, ...)."
    * valueString 1..1 MS
      * ^short = "Property value (e.g. urn:gematik:ig:Zahnbonusheft:v1.1.0)"
      * ^definition = "Property value (e.g. urn:gematik:ig:Zahnbonusheft:v1.1.0)"
