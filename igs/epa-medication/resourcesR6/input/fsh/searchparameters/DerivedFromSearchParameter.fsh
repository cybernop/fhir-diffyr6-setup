Instance: DerivedFromSP
InstanceOf: SearchParameter
Usage: #definition
* insert Meta-Instance

* id = "derived-from-sp"
* name = "DerivedFromSP"
* description = "Search by resources from which the medication statement is derived"

* base[+] = #MedicationStatement
* code = #derived-from
* type = #reference
* target[+] = #MedicationDispense
* target[+] = #MedicationRequest
* expression = "MedicationStatement.derivedFrom"
* multipleAnd = true
* multipleOr = false
