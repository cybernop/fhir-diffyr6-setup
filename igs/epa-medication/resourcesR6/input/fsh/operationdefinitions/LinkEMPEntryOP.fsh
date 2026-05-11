Instance: LinkEMPEntryOP
InstanceOf: TIOperationDefinition
Usage: #definition
Title: "eMP-Eintrag verknüpfen"
Description: "Diese Instanz-Operation dient der Verknüpfung eines bestehenden eML-Eintrags (MedicationStatement) mit einem bereits dokumentierten Eintrag im elektronischen Medikationsplan (eMP)."
* insert Meta-Instance

* kind = #operation
* extension[method][+].valueCode = #POST
* id = "link-emp-op"
* name = "linkEMP_MedicationSvc"
* code = #link-emp
* resource[+] = #MedicationStatement
* affectsState = true
* system = false
* type = false
* instance = true
* inputProfile = Canonical(EPAOpLinkEMPEntryParametersR6)
* outputProfile = Canonical(EPAOpLinkEMPEntryOutputParametersR6)
