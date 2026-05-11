Instance: MedicationRequestEffectiveDosePeriodSP
InstanceOf: SearchParameter
Usage: #definition
* insert Meta-Instance

* id = "medicationrequest-effective-dose-period-sp"
* name = "MedicationRequestEffectiveDosePeriodSP"
* description = "Ermöglicht die Suche  anhand des Zeitraums, in dem die Medikation eingenommen werden soll"

* base[+] = #MedicationRequest
* code = #effective-dose-period
* type = #date
* expression = "MedicationRequest.extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod').value.ofType(Period)"
