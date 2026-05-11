Alias: $iheMatchSnippet = https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-full-text-search-match-snippet

Profile: EPADocumentSearchResultBundleR6
Parent: Bundle
Id: epa-document-search-result-bundle
Title: "EPA Document Search Result Bundle"
Description: "Dieses Profil stellt Suchergebnisse nach Dokumenten inklusive Metadaten und ggf. nach einer Volltextsuche dar."
* insert Meta

* type MS
* type = #searchset (exactly)
* link MS
  * relation MS
  * url MS
* total MS
* signature 0..0
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry MS
* entry contains
  documentReference 0.. MS
* entry[documentReference]
  * request 0..0
  * response 0..0
  * fullUrl MS
  * resource 1..1 MS
  * resource only EPAMHDDocumentReferenceR6
  * search 1..1 MS
  * search
    * mode 1..1 MS
      * ^short = "Gibt an, wie ein Dokument in das Suchergebnis der Volltextsuche aufgenommen wurde (d.h. direkt als Treffer, durch Beziehung oder als zusätzliche Information)."
      * ^definition = """
      Dieses Feld beschreibt, wie ein gefundenes Dokument im Rahmen der Volltextsuche in das Suchergebnis einbezogen wurde. Es gibt an, ob das Dokument direkt den Suchkriterien entspricht oder aus anderen Gründen im Ergebnis enthalten ist.

      Im Kontext der Volltextsuche auf Dokumenten werden folgende Werte verwendet:
      * match: Das Dokument enthält Inhalte, die direkt mit den angegebenen Suchkriterien übereinstimmen und als relevanter Treffer anzusehen sind.
      * include: Das Dokument wurde aufgrund einer Beziehung zu einem anderen relevanten Treffer oder Kontext in das Ergebnis aufgenommen.
      * outcome: Das Dokument bietet zusätzliche Informationen zur Suchanfrage, wie Hinweise auf die Vollständigkeit der Ergebnisse oder technische Metadaten.
      """
    * score 1..1 MS
      * ^short = "Bewertet die Relevanz eines Dokuments für die Suchanfrage basierend auf einem berechneten Relevanzwert."
      * ^definition = """
      Die score-Eigenschaft gibt den Relevanzwert eines Dokuments im Kontext der Volltextsuche an. Dieser Wert wird auf Grundlage der Übereinstimmung zwischen der Suchanfrage und dem Inhalt des Dokuments berechnet. Ein höherer Score zeigt an, dass das Dokument besser mit den Suchkriterien übereinstimmt.
      """
    // AUTO-DISABLED (SUSHI R6): * extension contains
      // AUTO-DISABLED (SUSHI R6): FullTextSearchMatchSnippet named matchSnippet 0.. MS and
      // AUTO-DISABLED (SUSHI R6): FullTextSearchMatchTotalHits named totalHits 0..1 MS
      // AUTO-DISABLED (SUSHI R6): // EPAMatchSnippetExtension named matchSnippet 0.. MS and
      // AUTO-DISABLED (SUSHI R6): // EPAMatchTotalHitsExtension named totalHits 0..1 MS
    // AUTO-DISABLED (SUSHI R6): * extension[matchSnippet].url MS
    // AUTO-DISABLED (SUSHI R6): * extension[matchSnippet].extension[snippet] MS
    // AUTO-DISABLED (SUSHI R6): * extension[matchSnippet].extension[snippet].valueString MS
    // AUTO-DISABLED (SUSHI R6): * extension[matchSnippet].extension[snippet].url MS
    // AUTO-DISABLED (SUSHI R6): * extension[matchSnippet].extension[pageNumber] MS
    // AUTO-DISABLED (SUSHI R6): * extension[matchSnippet].extension[pageNumber].valueString MS
    // AUTO-DISABLED (SUSHI R6): * extension[matchSnippet].extension[pageNumber].url MS
// AUTO-DISABLED (SUSHI R6): 
    // AUTO-DISABLED (SUSHI R6): * extension[totalHits].valueInteger MS
    // AUTO-DISABLED (SUSHI R6): * extension[totalHits].url MS
      // AUTO-DISABLED (SUSHI R6): // * value[x] MS
