// AUTO-DISABLED (SUSHI R6): Instance: ExampleEpaGetMedicationPlanBundle
// AUTO-DISABLED (SUSHI R6): InstanceOf: Bundle
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * id = "example-get-medication-plan-bundle-1"
// AUTO-DISABLED (SUSHI R6): * identifier[+]
  // AUTO-DISABLED (SUSHI R6): * value = "urn:uuid:6da4d89d-09f9-4c9a-9117-10c7e7948566"
  // AUTO-DISABLED (SUSHI R6): * system = $ns-urn-uuid
// AUTO-DISABLED (SUSHI R6): * timestamp = "2027-01-10T10:10:00Z"
// AUTO-DISABLED (SUSHI R6): * type = #collection
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * insert BundleEntry(Patient_MaxMustermann, Patient, 641f4cf5-e54b-406c-b8a8-1d3292fd5087)
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * insert BundleEntry(eMP_MedicationPlan_Bundle_Provenance, Provenanc, 63e6938b-18a3-4b0f-9423-084d53edba7b)
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * insert BundleEntry(eMP_Sumatriptan_Request, MedicationRequest, 266620a9-2c26-41c1-b0cb-a10947b867f5)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntry(eMP_Sumatriptan, Medication, 87f08ba2-da7e-467e-86aa-404d9035297c)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntry(eMP_Sumatripta_Activity_Provenance, Provenance, 9090b28c-e165-4823-b82b-15bb63012123)
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * insert BundleEntry(eMP_Benazepril_Request, MedicationRequest, 71b66f1b-8032-4886-b7bf-e775daee22fb)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntry(eMP_Benazepril, Medication, 13c66845-d0ce-43e1-9b0b-884cbbe8df7f)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntry(eMP_Benazepril_Activity_Provenance, Provenance, 8faa45dd-b2dc-4a80-8956-94aeab1db04b)
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): // related eML Entry
// AUTO-DISABLED (SUSHI R6): * insert BundleEntry(Sumatriptan_Information, MedicationStatement, f29f1d0c-be05-4b0d-a335-3e508da39c0c)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntry(Sumatriptan_Information_Provenance, Provenance, 176eec9c-8d5a-46a7-96e3-7af3f68c49ed)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntry(Sumatriptan, Medication, fc7b28e8-05ac-4ac8-86d7-7677d9c6134e)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntry(Sumatriptan_Request, MedicationRequest, 4dd6f19d-002c-44ac-ae2f-3c9d08ad35b8)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntry(Sumatriptan_Dispense, MedicationDispense, fa0c29e1-c4e7-4f08-91ab-598a2233867c)
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * insert BundleEntry(PraxisTI_PractitionerRole, PractitionerRole, b9eb9668-b61e-43b5-b3ea-485234836d59)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntry(PraxisTIOrganization, Organization, 450a9511-53e5-4af7-be36-a18444bb8dd2)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntry(Arzt, Practitioner, 498c345f-31f5-4da6-9f04-00fa2bc8af7c)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntry(GematikApotheke, Organization, 151f1697-7512-4e21-9466-1b75207475d8)


Instance: eMP_MedicationPlan_Bundle_Provenance
InstanceOf: EMPChronologyProvenanceR6
Usage: #inline
* insert EMPChronologyProvenanceInstanceMeta
* id = "63e6938b-18a3-4b0f-9423-084d53edba7b"
* extension[isEMPChronology].valueBoolean = true
* activity = $v3-DataOperation#UPDATE
* recorded = "2026-11-01T15:43:33.244Z"
* occurredDateTime = "2026-11-01T15:43:33.244Z"
* agent
  * type = $provenance-participant-type#author
  * who = Reference(PraxisTIOrganization)
  * who
    * identifier
      * type = $v2-0203#PRN
      * system = $sid-identifier-telematik-id
      * value = $PraxisTIOrganization-TelematikID
    * insert PraxisTIOrganization-display
* target[+] = Reference(MedicationRequest/266620a9-2c26-41c1-b0cb-a10947b867f5/_history/2)
* target[+] = Reference(MedicationRequest/71b66f1b-8032-4886-b7bf-e775daee22fb/_history/1)