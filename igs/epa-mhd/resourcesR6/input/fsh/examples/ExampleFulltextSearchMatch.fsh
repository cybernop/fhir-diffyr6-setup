// AUTO-DISABLED (SUSHI R6): Instance: ExampleFulltextSearchMatch
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPADocumentSearchResultBundleR6
// AUTO-DISABLED (SUSHI R6): Title: "Example Fulltext Search Match"
// AUTO-DISABLED (SUSHI R6): Description: "Beispiel für das Ergebnis für eine Volltextsuche nach `Test`, welches die Paginierungsfunktion verwendet und Treffer mit Seitennummerierung zurückliefert."
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * id = "example-fulltext-search-match"
// AUTO-DISABLED (SUSHI R6): * type = #searchset
// AUTO-DISABLED (SUSHI R6): * total = 1
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * link[+]
  // AUTO-DISABLED (SUSHI R6): * relation = "self"
  // AUTO-DISABLED (SUSHI R6): * url = "/epa/mhd/api/v1/fhir/DocumentReference?_offset=0&_count=25&_content=Test" // The current page
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * entry[documentReference]
  // AUTO-DISABLED (SUSHI R6): * fullUrl = "http://epa4all/epa/mhd/api/v1/fhir/DocumentReference/b2d5f8db-48ca-43c4-a540-6c8f2e853913"
  // AUTO-DISABLED (SUSHI R6): * resource = ExampleEPAMHDDocumentReference
  // AUTO-DISABLED (SUSHI R6): * search
    // AUTO-DISABLED (SUSHI R6): * mode = #match
    // AUTO-DISABLED (SUSHI R6): * score = 0.9
    // AUTO-DISABLED (SUSHI R6): * extension[matchSnippet][+]
      // AUTO-DISABLED (SUSHI R6): * extension[snippet].valueString = "Das ist ein <mark>Test</mark>."
      // AUTO-DISABLED (SUSHI R6): * extension[pageNumber].valueString = "1"
    // AUTO-DISABLED (SUSHI R6): * extension[matchSnippet][+]
      // AUTO-DISABLED (SUSHI R6): * extension[snippet].valueString = "Das ist ein anderer <mark>Test</mark>."
      // AUTO-DISABLED (SUSHI R6): * extension[pageNumber].valueString = "23"
    // AUTO-DISABLED (SUSHI R6): * extension[totalHits].valueInteger = 2
