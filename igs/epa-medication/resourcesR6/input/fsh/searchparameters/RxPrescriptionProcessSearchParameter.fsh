Instance: RxPrescriptionProcessSP
InstanceOf: SearchParameter
Usage: #definition
* insert Meta-Instance

* id = "rx-prescription-process-sp"
* name = "RxPrescriptionProcessParameter"
* description = "Returns Medications, MedicationDispenses or MedicationStatement with the Rx Prescription Process Identifier."
* base[+] = #Medication
* base[+] = #MedicationDispense
* base[+] = #MedicationStatement
* code = #rx-prescription
* type = #token
* expression = "extension.where(url = 'https://gematik.de/fhir/epa-medication/StructureDefinition/rx-prescription-process-identifier').value"
