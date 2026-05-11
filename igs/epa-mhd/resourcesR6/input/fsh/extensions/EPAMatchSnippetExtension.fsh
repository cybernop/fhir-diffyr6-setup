// Extension: EPAMatchSnippetExtension
// Id: ihe-full-text-search-match-snippet
// Title: "EPA Match Snippet Extension"
// Description: "Diese Erweiterung enthält einen Textausschnitt, der den Kontext eines Suchtreffers beschreibt. Sie hebt relevante Inhalte hervor, die den eingegebenen Suchbegriffen entsprechen und bietet so eine präzise Vorschau auf das Suchergebnis."
// * insert Meta
// * ^context.type = #element
// * ^context.expression = "Bundle.entry.search"

// * extension ^slicing.rules = #closed
// * extension contains
//     snippet 0..1 and
//     pageNumber 0..1

// * extension[snippet]
//   * value[x] only string
//   * valueString 1..1
//     * ^short = "Menschenlesbarer Textausschnitt, der den Kontext des Suchtreffers beschreibt"
//     * ^definition = "Dieser Wert enthält einen kurzen, menschenlesbaren Textausschnitt, der den Kontext des Suchtreffers beschreibt. Er ermöglicht eine schnelle Orientierung indem relevante Inhalte aus dem gefundenen Dokument oder der Ressource dargestellt werden."

// * extension[pageNumber]
//   * value[x] only string
//   * valueString 1..1
//     * ^short = "Bei Dokumenten mit Seitennummerierung (z.B. PDF) lässt sich hier die genaue Trefferseite der Volltextsuche angeben."
//     * ^definition = "Bei Dokumenten mit Seitennummerierung, wie etwa PDF-Dateien, kann hier die konkrete Seite angegeben werden, auf der die Volltextsuche einen Treffer gefunden hat."
