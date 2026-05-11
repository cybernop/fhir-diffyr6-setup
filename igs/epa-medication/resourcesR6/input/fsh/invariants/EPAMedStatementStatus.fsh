Invariant: epa-med-statement-status
Description: "Ein MedicationStatement im Kontext 'Nachtrag' darf nicht den Status 'intended' haben"
Severity: #error
Expression: "extension('https://gematik.de/fhir/epa-medication/StructureDefinition/context-extension').exists(value != 'MANUAL') or status != 'intended'"
