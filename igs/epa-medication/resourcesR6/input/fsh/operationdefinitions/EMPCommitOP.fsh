Instance: EMPCommitOP
InstanceOf: TIOperationDefinition
Usage: #definition
Title: "eMP Commit Operation"
Description: """
Die eMP Commit Operation dient zum Abschluss einer Batch-Verarbeitung von eMP-Einträgen.  
Sie erzeugt eine neue Version des elektronischen Medikationsplans (eMP), indem eine aktualisierte  
Instanz von EMPChronologyProvenanceR6 erstellt wird, die auf alle relevanten EMPMedicationRequestR6  
verweist. Diese Operation wird in der Regel nur einmal am Ende eines Batch-Kontextes aufgerufen.
"""
* insert Meta-Instance

* kind = #operation
* extension[method][+].valueCode = #POST
* id = "emp-commit-op"
* name = "eMPCommit_MedicationSvc"
* code = #emp-commit
* system = true
* type = false
* instance = false
* affectsState = true
* inputProfile = Canonical(EPAOpEMPCommitInputParametersR6)


// ----- Output (Response-Body) -----
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Provenance