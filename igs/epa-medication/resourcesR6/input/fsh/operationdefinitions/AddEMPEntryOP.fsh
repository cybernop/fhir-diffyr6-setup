Instance: AddEMPEntryOP
InstanceOf: TIOperationDefinition
Usage: #definition
Title: "eMP-Eintrag hinzufügen"
Description: "Diese Operation ermöglicht das Hinzufügen eines neuen Medikations-Eintrags zum elektronischen Medikationsplan (eMP). Der Eintrag wird als EMPMedicationRequestR6 erzeugt, wobei die angegebene Medication sowohl in medicationReference als auch in extension[originMedication] referenziert wird."
* insert Meta-Instance

* kind = #operation
* extension[method][+].valueCode = #POST
* id = "add-emp-entry-op"
* name = "addEMPEntry_MedicationSvc"
* code = #add-emp-entry
* affectsState = true
* system = true
* type = false
* instance = false
* inputProfile = Canonical(EPAOpAddEMPEntryInputParametersR6)
* outputProfile = Canonical(EPAOpEMPEntryOutputParametersR6)
