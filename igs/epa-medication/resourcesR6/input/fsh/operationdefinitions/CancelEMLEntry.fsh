Instance: CancelEMLEntryOP
InstanceOf: TIOperationDefinition
Usage: #definition
Title: "Cancel Medication List Entry"
Description: "Diese Operation dient dem gezielten Widerruf/Abbruch eines bestehenden Eintrags der elektronischen Medikationsliste (eML) auf Instanzebene."
* insert Meta-Instance

* kind = #operation
* extension[method][+].valueCode = #POST
* id = "cancel-eml-entry-op"
* name = "cancelEMLEntry_MedicationSvc"
* code = #cancel-eml-entry
* resource[+] = #MedicationStatement
* affectsState = true
* system = false
* type = false
* instance = true
// Kein inputProfile erforderlich, da die Operation auf der Instanz ohne Eingabeparameter ausgeführt wird
* outputProfile = Canonical(EPAOpEmlEntryOutputParametersR6)
