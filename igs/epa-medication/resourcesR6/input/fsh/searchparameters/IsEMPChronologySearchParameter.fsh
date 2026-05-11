Instance: IsEMPChronologySP
InstanceOf: SearchParameter
Usage: #definition
* insert Meta-Instance

* id = "is-emp-chronology-sp"
* name = "IsEMPChronologySP"
* description = "Liefert alle Resourcen die eMP bezug haben (oder nicht)"

* base[+] = #Provenance
* code = #is-emp-chronology
* type = #token
* expression = "Resource.extension('https://gematik.de/fhir/epa-medication/StructureDefinition/is-emp-chronology-extension').value"
* multipleAnd = false
* multipleOr = false
