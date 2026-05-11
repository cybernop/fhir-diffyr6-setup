Instance: ContextSP
InstanceOf: SearchParameter
Usage: #definition
* insert Meta-Instance

* id = "context-sp"
* name = "ContextSP"
* description = "Liefert alle Resourcen mit diesem Context Code"

* base[+] = #MedicationStatement
* base[+] = #Medication
* base[+] = #MedicationRequest
* code = #context
* type = #token
* expression = "Resource.extension('https://gematik.de/fhir/epa-medication/StructureDefinition/context-extension').value"
* multipleAnd = false
* multipleOr = false
