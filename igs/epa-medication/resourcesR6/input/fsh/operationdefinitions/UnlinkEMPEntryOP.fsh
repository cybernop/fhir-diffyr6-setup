Instance: UnlinkEMPEntryOP
InstanceOf: TIOperationDefinition
Usage: #definition
Title: "eMP-Verknüpfung entfernen"
Description: "Diese Operation des Medication Service dient dazu, eine Verknüpfung zwischen einem bestehenden eML-Eintrag und einem dokumentierten eMP-Eintrag aufzuheben."
* insert Meta-Instance

* kind = #operation
* extension[method][+].valueCode = #POST
* id = "unlink-emp-op"
* name = "unlinkEMP_MedicationSvc"
* code = #unlink-emp
* resource[+] = #MedicationStatement
* affectsState = true
* system = false
* type = false
* instance = true
* inputProfile = Canonical(EPAOpLinkEMPEntryParametersR6)
* outputProfile = Canonical(EPAOpLinkEMPEntryOutputParametersR6)
