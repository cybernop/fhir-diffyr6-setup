Instance: c7b6dcfc-d535-4f8f-9d86-841693f788d1
InstanceOf: EPAActivityProvenanceR6
Usage: #example
* insert EPAActivityProvenanceInstanceMeta
* meta
  * versionId = "1"
  * lastUpdated = "2025-06-02T11:15:00+01:00"
* target = Reference(MedicationStatement/29d46448-b585-4501-9660-a1236436560f/_history/1)
* occurredDateTime = "2025-06-02T11:15:00+01:00"
* recorded = "2025-06-02T11:15:00+01:00"
* activity
  * coding = $v3-DataOperation#CREATE "create"
* agent[0]
  * type
    * coding = $provenance-participant-type#author
  * who
    * identifier
      * system = $sid-epa-fhir-data-service
      * value = "MEDICATIONSVC"
    * display = "ePA Medication Service"


Instance: fdfc2842-bfff-436f-ab13-74785d0188c0
InstanceOf: EPAActivityProvenanceR6
Usage: #example
* insert EPAActivityProvenanceInstanceMeta
* meta
  * versionId = "1"
  * lastUpdated = "2025-06-02T11:15:00+01:00"
* target = Reference(MedicationStatement/29d46448-b585-4501-9660-a1236436560f/_history/2)
* occurredDateTime = "2025-06-02T11:15:00+01:00"
* recorded = "2025-06-02T11:15:00+01:00"
* activity
  * coding = $v3-DataOperation#Update "revise"
* agent[0]
  * type
    * coding = $provenance-participant-type#author
  * who = Reference(ExampleTIOrganization)
  * who
    * identifier
      * system = $sid-identifier-telematik-id
      * value = "9-2.58.00000040"
    * display = "gematik Praxis"




Alias: $ContactEntityTypeCS = http://terminology.hl7.org/CodeSystem/contactentity-type
Instance: ExampleTIOrganization
InstanceOf: TIOrganization
Usage: #example
* insert TIOrganizationInstanceMeta
* id = "e66d6c66-96e0-4725-b48c-73702ee63cdf"
* identifier[TelematikID].value = "9-2.58.00000040"
* identifier[BSNR].value = "012300004"
* identifier[KZVA].value = "123456789"
* identifier[IKNR].value = "123456789"
* active = true
* type = TIOrganizationProfessionTypeOidCS#1.2.276.0.76.4.50 "Betriebsstätte Arzt"
* name = "gematik Praxis"
* active = true
* alias = "Praxis"
* address.text = """gematik Praxis
Friedrichstr. 136,
10117 Berlin"""
* address
  * line[+] = "Friedrichstr. 136"
  * city = "Berlin"
  * district = "Mitte"
  * state = "Berlin"
  * postalCode = "10117"
  * country = "DE"
* contact
  * purpose = $ContactEntityTypeCS#ADMIN
  * name.text = "gematik ITSM"
  * telecom[+].system = #email
  * telecom[=].value = "betrieb@gematik.de"

