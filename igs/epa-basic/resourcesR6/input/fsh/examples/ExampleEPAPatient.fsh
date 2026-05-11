Instance: ExampleEPAPatientErikaMustermann
InstanceOf: EPAPatientR6
Title: "Example Patient: Erika Mustermann"
Usage: #example
* id = "7eeb4e81-ce38-4d70-84fc-9ca4c7d0939c"
* insert EPAPatientInstanceMeta
* meta
  * versionId = "2"
  * lastUpdated = "2026-01-19T14:37:12+01:00"
* identifier[KVNR].system = $sid-identifier-kvid-10
* identifier[KVNR].value = "G995030566"
* name[Name]
  * family = "Mustermann"
  * given = "Erika"
* name[Geburtsname]
  * family = "Gabler"
    * extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
    * extension.valueString = "Gabler"
* gender = #female
* birthDate = "1964-08-12"
