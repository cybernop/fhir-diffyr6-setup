// Extension: EPAMatchTotalHitsExtension
// Id: epa-match-total-hits
// Title: "EPA Match Total Hits Extension"
// Description: "Diese Erweiterung enthält die Gesamtanzahl der Treffer einer Volltextsuche in einem Dokument (z.B. PDF)."
// * insert Meta

// * ^context.type = #element
// * ^context.expression = "Bundle.entry.search"

// * value[x] only integer
// * valueInteger 1..1
//   * ^short = "Gesamtanzahl der in diesem Dokument gefundenen Treffer"
//   * ^definition = "Gibt die Gesamtanzahl der bei einer Volltextsuche in diesem Dokument gefundenen Treffer an."
