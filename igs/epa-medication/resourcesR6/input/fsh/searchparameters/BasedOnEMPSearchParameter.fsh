Instance: BasedOnEMPSP
InstanceOf: SearchParameter
Usage: #definition
* insert Meta-Instance

* id = "based-on-emp-sp"
* name = "IsEMPSP"
* description = "Liefert alle Referencen, die einen eMP bezug haben"

* base[+] = #MedicationStatement
* code = #based-on-emp
* type = #reference
* target[+] = #MedicationRequest
* expression = "Resource.basedOn.where(extension('https://gematik.de/fhir/epa-medication/StructureDefinition/is-emp-extension').value = true)"
* multipleAnd = false
* multipleOr = false
