Instance: MedicationRequestActivitySP
InstanceOf: SearchParameter
Usage: #definition
* insert Meta-Instance

* id = "medication-statement-activity-sp"
* name = "MedicationRequestActivitySP"
* description = "Liefert alle referenzierten eML MedicationStatement Aktivitäten"

* base[+] = #MedicationRequest
* code = #activity
* type = #reference
* target[+] = #MedicationStatement
* expression = "Resource.extension('https://gematik.de/fhir/epa-medication/StructureDefinition/emp-medicationrequest-activity-extension').extension('reference').value"
* multipleAnd = false
* multipleOr = false
