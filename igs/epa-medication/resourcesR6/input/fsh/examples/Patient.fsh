Instance: ExamplePatientReference
InstanceOf: Reference
Usage: #inline
* identifier
  * value = "X110411319"
  * system = "http://fhir.de/sid/gkv/kvid-10"


Instance: Patient_MaxMustermann
InstanceOf: EPAPatient
Title: "Example Patient: Max Mustermann"
Usage: #inline
* insert EPAPatientInstanceMeta
* id = "641f4cf5-e54b-406c-b8a8-1d3292fd5087"
* identifier[KVNR].system = $sid-identifier-kvid-10
* identifier[KVNR].value = "X110411319"
* name[Name]
  * family = "Mustermann"
  * given = "Max"
* gender = #male
* birthDate = "1976-02-01"
