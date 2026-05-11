Instance: AddEMLEntryOP
InstanceOf: TIOperationDefinition
Usage: #definition
Title: "Add Medication List Entry"
Description: "Diese Operation ermöglicht das gezielte Hinzufügen einer neuen Medikation zur elektronischen Medikationsliste (eML)."
* insert Meta-Instance

* kind = #operation
* extension[method][+].valueCode = #POST
* id = "add-eml-entry-op"
* name = "addEMLEntry_MedicationSvc"
* code = #add-eml-entry
* resource[+] = #MedicationStatement
* affectsState = true
* system = false
* type = true
* instance = false
* inputProfile = Canonical(EPAOpAddEmlEntryInputParametersR6)
* outputProfile = Canonical(EPAOpEmlEntryOutputParametersR6)

