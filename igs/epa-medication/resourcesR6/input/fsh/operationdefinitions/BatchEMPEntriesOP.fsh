Instance: BatchEMPEntriesOP
InstanceOf: TIOperationDefinition
Usage: #definition
Title: "Batch eMP Einträge"
Description: """
Mit der Batch Operation $batch-emp können Primärsysteme mehrere fachliche Änderungen am eMP in einem Aufruf
an den Medication Service übergeben. Innerhalb des Request-Bundles werden ausschließlich FHIR-Operationen
ausgeführt (keine direkten Resource-CRUDs). Als letzte Operation ein $emp-commit ausgeführt, der eine neue
Plan-Version (Provenance) erzeugt. Die Operation antwortet mit einem Bundle vom Typ transaction-response.
"""
* insert Meta-Instance

* kind = #operation
* extension[method][+].valueCode = #POST
* id = "batch-emp-entries-op"
* name = "batchEMPEntries_MedicationSvc"

* code = #batch-emp
* system = true
* type = false
* instance = false
* affectsState = true
* purpose = """
Stapelverarbeitung von eMP-Änderungen mit konsistenter, atomarer Ausführung und anschließender
Versionierung des eMP. Reduziert Roundtrips, vermeidet Zwischenzustände und stellt eine neue Plan-Version bereit.
"""
* parameter[+].name = #resource
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Bundle
* parameter[=].documentation = """
FHIR-Bundle vom Typ transaction gemäß des Profils gemäß EPABatchEmpRequestBundle.
Die Ausführungssemantik ist serverseitig festgelegt. Verboten: direkte POST/PUT/DELETE auf Ressourcen außerhalb von Operationen.
"""

// ----- Output (Response-Body) -----
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Bundle
* parameter[=].documentation = """
Antwort ist ein Bundle vom Typ transaction-response (bei atomarer Server-Policy. 
Für jeden Request-Entry enthält die Antwort einen korrespondierenden Entry mit:
- response.status (HTTP-Status),
- resource = Parameters (Ergebnisse von $add-emp-entry / $update-emp-entry),
- beim letzten Eintrag ($emp-commit): eine Provenance-Instanz (neue eMP-Plan-Version).
"""
