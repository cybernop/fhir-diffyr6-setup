Alias: $EPAActivityProvenance-Version = 1.3.0
RuleSet: EPAActivityProvenanceInstanceMeta
* insert InstanceMetaProfile(EPAActivityProvenanceR6, 1.3.0)


Profile: EPAActivityProvenanceR6
Parent: Provenance
Id: epa-activity-provenance
Title: "EPA Activity Provenance"
Description: """
Dieses Profil beschreibt die Verwendung der FHIR-Resource Provenance zur Dokumentation von Änderungen und Aktivitäten im Rahmen ePA FHIR Data Services. Es ermöglicht die strukturierte Nachverfolgung, wer zu welchem Zeitpunkt welche Ressourcen erstellt oder verändert hat.
Der ePA Änderungseintrag dient damit als technischer und fachlicher Nachweis über den Ursprung und die Verantwortlichkeit von Einträgen in der ePA.
"""
* insert Meta

// preserve the version of this resource
* ^version = $EPAActivityProvenance-Version
* ^date = "2025-09-12"
* ^status = #active

* . ^short = "Dieses Profil beschreibt die Verwendung der FHIR-Resource Provenance zur Dokumentation von Änderungen und Aktivitäten im Rahmen der ePA FHIR Data Services."
* target MS
  * ^short = "Gibt die Ressource(n) an, die im Rahmen der Änderung innerhalb der ePA erstellt oder aktualisiert wurden. Es muss eine versionierte Referenz (ResourceType/id/_history/vid) verwendet werden."
  * ^definition = """
Gibt die Ressource(n) an, die im Rahmen der Änderung innerhalb der ePA erstellt oder aktualisiert wurden.
Es muss eine versionierte Referenz (ResourceType/id/_history/vid) verwendet werden, um eindeutig die durch diese Änderung entstandene Version der betroffenen Ressource anzugeben.
Dadurch wird eine eindeutige, nachvollziehbare Zuordnung zwischen einer fachlichen Änderung und dem resultierenden Ressourcenzustand gewährleistet.
"""
  * reference MS

  * display MS
* occurred[x] MS
* occurred[x] only dateTime
  * ^short = "Gibt den Zeitraum oder Zeitpunkt an, in dem die  Änderung tatsächlich stattgefunden hat - also wann die Aktion inhaltlich durchgeführt wurde, z.B. das Erfassen oder Bearbeiten von Daten."
* recorded MS
  * ^short = "Gibt den technischen Zeitpunkt an, zu dem dieser Provenance-Eintrag im FHIR Data Service erstellt und persistiert wurde."
// * activity 1..1 MS
//   * ^short = "Beschreibt die Art der Aktivität, die zu der Änderung im FHIR Data Service der ePA geführt hat. Beispiel CREATE | UPDATE | DELETE"
* activity 1..1 MS
  * ^short = "Beschreibt die Art der Aktivität, die zu der Änderung im FHIR Data Service der ePA geführt hat. Beispiel CREATE | UPDATE"
  // AUTO-DISABLED (SUSHI R6): * insert CodeableConceptMS
* activity from EPAActivityProvenanceTypeVS (required)
* agent MS
  * ^short = "Gibt den verantwortlichen Leistungserbringer, die Leistungserbringerinstitution oder das System an, das die Änderung im FHIR Data Service der ePA durchgeführt hat."
  * type 1..1 MS
  * type from EPAProvenanceParticipantTypeVS (required)
    * ^short = "Gibt die Rolle oder Funktion an, die der Agent im Rahmen der dokumentierten Änderung eingenommen hat. Im Kontext dieses Profils ist ausschließlich die Rolle author zulässig, da jede Änderung im FHIR Data Service der ePA fachlich verantwortet sein muss."
    * ^definition = """
Gibt die Rolle oder Funktion an, die der Agent im Rahmen der dokumentierten Änderung eingenommen hat.
Während agent.who beschreibt, wer die Änderung durchgeführt hat (z.B. ein System oder eine Institution), legt agent.type fest, in welcher Eigenschaft oder mit welcher funktionalen Verantwortung diese Aktion erfolgt ist. Im Kontext dieses Profils ist ausschließlich die Rolle author zulässig, da jede Änderung im FHIR Data Service der ePA fachlich verantwortet sein muss.
"""
    * coding 1..1 MS
      * system 1.. MS
      * code 1.. MS
      * display MS
  // * who only Reference(TIPractitioner or TIOrganization or OrganizationDirectory)
  // * who only Reference(Practitioner or Organization or PractitionerRole or Patient)
  * who only Reference(Practitioner or Organization or PractitionerRole)
  * who MS
    * reference MS
    * identifier MS
      // AUTO-DISABLED (SUSHI R6): * insert IdentifierMS
    // * identifier only IdentifierKvid10 or IdentifierTelematikId or IdentifierEPAFHIRDataServiceR6
    * identifier only IdentifierTelematikId or IdentifierEPAFHIRDataServiceR6
    * display MS

