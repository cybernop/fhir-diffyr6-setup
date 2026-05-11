Alias: $example-epa-get-medication-list-bundle-url-page1 = http://epa4all/epa/medication/api/v1/fhir/$medication-list&date=le2025-12-24&date=ge2025-01-01&_count=10&_offset=0
Alias: $example-epa-get-medication-list-bundle-url-page2 = http://epa4all/epa/medication/api/v1/fhir/$medication-list&date=le2025-12-24&date=ge2025-01-01&_count=10&_offset=10



// AUTO-DISABLED (SUSHI R6): Instance: ExampleEpaGetMedicationListBundle
// AUTO-DISABLED (SUSHI R6): InstanceOf: Bundle
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * id = "example-get-medication-list-bundle1"
// AUTO-DISABLED (SUSHI R6): * identifier[+]
  // AUTO-DISABLED (SUSHI R6): * value = "urn:uuid:9e1f5895-ab0b-4237-856d-fa1065631400"
  // AUTO-DISABLED (SUSHI R6): * system = $ns-urn-uuid
// AUTO-DISABLED (SUSHI R6): * timestamp = "2025-01-01T00:00:00Z"
// AUTO-DISABLED (SUSHI R6): * type = #searchset
// AUTO-DISABLED (SUSHI R6): * total = 16
// AUTO-DISABLED (SUSHI R6): * link[+]
  // AUTO-DISABLED (SUSHI R6): * relation = "self"
  // AUTO-DISABLED (SUSHI R6): * url = $example-epa-get-medication-list-bundle-url-page1
// AUTO-DISABLED (SUSHI R6): * link[+]
  // AUTO-DISABLED (SUSHI R6): * relation = "first"
  // AUTO-DISABLED (SUSHI R6): * url = $example-epa-get-medication-list-bundle-url-page1
// AUTO-DISABLED (SUSHI R6): * link[+]
  // AUTO-DISABLED (SUSHI R6): * relation = "next"
  // AUTO-DISABLED (SUSHI R6): * url = $example-epa-get-medication-list-bundle-url-page2
// AUTO-DISABLED (SUSHI R6): * link[+]
  // AUTO-DISABLED (SUSHI R6): * relation = "last"
  // AUTO-DISABLED (SUSHI R6): * url = $example-epa-get-medication-list-bundle-url-page2
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): // Patient
// AUTO-DISABLED (SUSHI R6): * insert BundleEntrySearch(Patient_MaxMustermann, Patient, 641f4cf5-e54b-406c-b8a8-1d3292fd5087, #include)
  // AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): // ePrescription
// AUTO-DISABLED (SUSHI R6): * insert BundleEntrySearch(JanuviaFilmtabletten_Information, MedicationStatement, f3988023-2313-4645-bd6b-f9e37cfb6fc7, #match)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntrySearch(JanuviaFilmtabletten_Information_Provenance, Provenance, de42aa65-f84e-4e96-acfb-b9fd5e104b2d, #include)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntrySearch(JanuviaFilmtabletten, Medication, bb91cde8-0426-4f4b-a766-5d818d0605bd, #include)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntrySearch(JanuviaFilmtabletten_Request, MedicationRequest, 3191d752-3adf-4c7f-848d-8d43766fed72, #include)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntrySearch(JanuviaFilmtabletten_Dispense, MedicationDispense, 4e6e1623-778e-44a3-b208-8479f5339e43, #include)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntrySearch(Arzt_PractitionerRole, PractitionerRole, 73a551f8-d8cd-4b44-823d-ab5f8aeab1aa, #include)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntrySearch(BetriebsstaetteArzt, Organization, ad7dc0e7-cb44-4740-ba67-cb573e29d596, #include)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntrySearch(Arzt, Practitioner, 498c345f-31f5-4da6-9f04-00fa2bc8af7c, #include)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntrySearch(GematikApotheke, Organization, 151f1697-7512-4e21-9466-1b75207475d8, #include)
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): // eML-Entry Nachtrag
// AUTO-DISABLED (SUSHI R6): * insert BundleEntrySearch(IBU_Information, MedicationStatement, 1cb0f018-178d-4488-a6b4-2be32dbda784, #match)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntrySearch(IBU_Information_Provenance, Provenance, f35a13e2-d82c-4826-97d7-b7e32721c4af, #include)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntrySearch(IBU, Medication, ef5d5baf-0c42-4240-9604-7fba9cea926d, #include)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntrySearch(ApothekeTIOrganization, Organization, 8B421590-9F7F-46BE-BD1E-C987063AC4F5, #include)
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): // ePrescription
// AUTO-DISABLED (SUSHI R6): * insert BundleEntrySearch(Sumatriptan_Information, MedicationStatement, f29f1d0c-be05-4b0d-a335-3e508da39c0c, #match)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntrySearch(Sumatriptan_Information_Provenance, Provenance, 176eec9c-8d5a-46a7-96e3-7af3f68c49ed, #include)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntrySearch(Sumatriptan, Medication, fc7b28e8-05ac-4ac8-86d7-7677d9c6134e, #include)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntrySearch(Sumatriptan_Request, MedicationRequest, 4dd6f19d-002c-44ac-ae2f-3c9d08ad35b8, #include)
// AUTO-DISABLED (SUSHI R6): * insert BundleEntrySearch(Sumatriptan_Dispense, MedicationDispense, fa0c29e1-c4e7-4f08-91ab-598a2233867c, #include)
// Example using same PractitionerRole, Practitioner and Organizations



