RuleSet: EMPChronologyProvenanceInstanceMeta
* insert InstanceMetaProfile(EMPChronologyProvenanceR6, 1.3.0)


Profile: EMPChronologyProvenanceR6
Parent: Provenance
Id: emp-chronology-provenance
Title: "eMP Chronology Provenance"
Description: """
Dieses Profil beschreibt die Verwendung der FHIR-Resource Provenance zur Abbildung eines eMP-Chronologieeintrags. Die Provenance-Instanz dokumentiert, welche eMP-Einträge (MedicationRequest-Instanzen) zu einem bestimmten Zeitpunkt als Teil des elektronischen Medikationsplans (eMP) gültig waren. Ein eMP-Chronologieeintrag wird immer dann erzeugt, wenn sich die eMP-relevanten Instanzen geändert haben oder neue eMP-Einträge hinzugekommen sind. Er referenziert sämtliche zum Erstellungszeitpunkt aktiven eMP-MedicationRequest-Instanzen, d.h. alle Ressourcen mit dem Status active oder on-hold. Dadurch wird der Zustand des Medikationsplans zu diesem Zeitpunkt nachvollziehbar. Der eMP-Chronologieeintrag ermöglicht somit eine eindeutige und versionssichere Rückverfolgung der Zusammensetzung des eMP über verschiedene Zeitpunkte hinweg.
"""
* insert Meta
// preserve the version
* ^version = "1.3.2"
* ^date = "2026-03-20"
* ^status = #active

* . ^short = "Dieses Profil beschreibt einen eMP-Chronologieeintrag, der alle zum Erstellungszeitpunkt aktiven eMP-Einträge (active, on-hold) referenziert. Er entsteht bei Änderungen oder neuen Einträgen im eMP."

* extension MS
* extension contains IsEMPChronologyExtension named isEMPChronology 1..1 MS
* extension[isEMPChronology]
  * ^short = "Gibt an, ob diese Provenance-Instanz ein eMP-Chronologieeintrag ist."
  * url MS
  * valueBoolean MS
  * valueBoolean = true


* target MS
* target only Reference(EMPMedicationRequestR6)
  * ^short = "Gibt die MedicationRequest-Instanzen an, die dem Profil EMPMedicationRequestR6 entsprechen und im Rahmen der Änderung innerhalb des Medication Service erstellt oder aktualisiert wurden. Es muss eine versionierte Referenz (MedicationRequest/id/_history/vid) verwendet werden."
  * ^definition = """
Gibt die MedicationRequest-Instanzen an, die dem Profil EMPMedicationRequestR6 entsprechen und im Rahmen der Änderung innerhalb der ePA erstellt oder aktualisiert wurden.
Es werden ausschließlich MedicationRequest-Instanzen berücksichtigt, die den Status active oder on-hold haben.
Es muss eine versionierte Referenz (MedicationRequest/id/_history/vid) verwendet werden, um eindeutig die durch diese Änderung entstandene Version der betroffenen Ressource anzugeben.
Dadurch wird eine eindeutige, nachvollziehbare Zuordnung zwischen einer fachlichen Änderung im elektronischen Medikationsplan (eMP) und dem resultierenden Ressourcenzustand gewährleistet.
"""
  // AUTO-DISABLED (SUSHI R6): * insert ReferenceMS
  * extension MS
  * extension contains $data-absent-reason named dataAbsentReason 0..1 MS
  * extension[dataAbsentReason]
    // AUTO-DISABLED (SUSHI R6): * insert ExtensionCodeMS
    * valueCode = #not-applicable

* occurred[x] MS
* occurred[x] only dateTime
  * ^short = "Gibt den Zeitraum oder Zeitpunkt an, in dem die  Änderung tatsächlich stattgefunden hat - also wann die Aktion inhaltlich durchgeführt wurde, z.B. das Erfassen oder Bearbeiten von Daten."

* recorded MS
  * ^short = "Gibt den technischen Zeitpunkt an, zu dem dieser eMP-Chronologieeintrag im Medication Service erstellt und persistiert wurde."

* activity 1..1 MS
* activity ^short = "Beschreibt die Art der Aktivität, die zur Erstellung des eMP-Chronologieeintrags im FHIR Data Service der ePA geführt hat. Verwendet wird UPDATE, da der Chronologieeintrag eine neue Zusammenstellung des aktuellen Stands der relevanten eMP-Instanzen darstellt."
// AUTO-DISABLED (SUSHI R6): * activity insert CodeableConceptMS
* activity = $v3-DataOperation#UPDATE

* agent MS
  * ^short = "Beschreibt die Art der Aktivität, die zur Erstellung des eMP-Chronologieeintrags geführt hat. Verwendet wird UPDATE, da der Chronologieeintrag den aktuellen Stand der eMP-relevanten Instanzen zusammenfasst, nachdem sich diese geändert haben oder neue Instanzen hinzugekommen sind."
  * type 1..1 MS
  // AUTO-DISABLED (SUSHI R6): * type insert CodeableConceptMS
  * type from EPAProvenanceParticipantTypeVS (required)
    * ^short = "Gibt die Rolle oder Funktion an, die der Agent im Rahmen der dokumentierten Änderung eingenommen hat. Im Kontext dieses Profils ist ausschließlich die Rolle author zulässig, da jede Änderung im Medication Service fachlich verantwortet sein muss."
    * ^definition = """
Gibt die Rolle oder Funktion an, die der Agent im Rahmen der dokumentierten Änderung eingenommen hat.
Während agent.who beschreibt, wer die Änderung durchgeführt hat (z.B. ein System oder eine Institution), legt agent.type fest, in welcher Eigenschaft oder mit welcher funktionalen Verantwortung diese Aktion erfolgt ist. Im Kontext dieses Profils ist ausschließlich die Rolle author zulässig, da jede Änderung im Medication Service fachlich verantwortet sein muss.
"""
    * coding 1..1 MS
      // AUTO-DISABLED (SUSHI R6): * insert CodingMS
      * system 1..
      * code 1..

  * who only Reference(TIOrganization or OrganizationDirectory)
  * who MS
    // AUTO-DISABLED (SUSHI R6): * insert ReferenceMS
    * identifier only IdentifierKvid10 or IdentifierTelematikId or IdentifierEPAFHIRDataService

