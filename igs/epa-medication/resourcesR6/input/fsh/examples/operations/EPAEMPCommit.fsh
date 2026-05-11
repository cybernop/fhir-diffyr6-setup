Instance: ExpEPAOpEMPCommitInputParameters
InstanceOf: EPAOpEMPCommitInputParametersR6
Usage: #example
* insert InstanceMetaProfileCurrent(EPAOpEMPCommitInputParametersR6)
* id = "example-epa-op-emp-commit-input-parameters-1"
* parameter[acknowledgedChronologyId]
  * name = "acknowledgedChronologyId"
  * valueId = "b467ce05-e0e5-4d71-9a0b-d824dbb492ef"


Instance: eMP_Chronology_Provenance
InstanceOf: EMPChronologyProvenanceR6
Usage: #example
* insert EMPChronologyProvenanceInstanceMeta
* id = "2e1ba746-1aef-4eef-b741-2dfc771c7001"
* extension[isEMPChronology].valueBoolean = true
* activity = $v3-DataOperation#UPDATE
* recorded = "2026-12-15T14:00:00.100Z"
* occurredDateTime = "2026-12-15T14:00:00.100Z"
* agent
  * type = $provenance-participant-type#author
  * who = Reference(PraxisTIOrganization)
  * who
    * identifier
      * type = $v2-0203#PRN
      * system = $sid-identifier-telematik-id
      * value = $PraxisTIOrganization-TelematikID
    * insert PraxisTIOrganization-display
* target[+] = Reference(MedicationRequest/173439a1-40ee-4b61-bb8c-aab3f5a1af10/_history/2)
* target[+] = Reference(MedicationRequest/e2da4372-accc-4a76-81da-83e43ef9b15a/_history/1)
* target[+] = Reference(MedicationRequest/3dfe8327-dd4c-4e53-a695-cd2e0b21e699/_history/2)