Instance: UpdateEMPEntryOP
InstanceOf: TIOperationDefinition
Usage: #definition
Title: "eMP-Eintrag aktualisieren"
Description: "Diese Operation dient der gezielten Aktualisierung eines bestehenden Medikations-Eintrags im elektronischen Medikationsplan (eMP)."
* insert Meta-Instance

* kind = #operation
* extension[method][+].valueCode = #POST
* id = "update-emp-entry-op"
* name = "updateEMPEntry_MedicationSvc"
* code = #update-emp-entry
* affectsState = true
* system = true
* type = false
* instance = false
* inputProfile = Canonical(EPAOpUpdateEMPEntryInputParametersR6)
* outputProfile = Canonical(EPAOpEMPEntryOutputParametersR6)
