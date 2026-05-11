Instance: MedicationPlanChronologyLogOP
InstanceOf: TIOperationDefinition
Usage: #definition
Title: "Medication Plan Chronology Log"
Description: "Diese Operation liefert die chronologische Historie aller gespeicherten Versionen des elektronischen Medikationsplans (eMP) in Form von Provenance-Ressourcen. Jede Provenance-Instanz beschreibt dabei einen dokumentierten Zustand des eMP zu einem bestimmten Zeitpunkt. Die Operation ermöglicht es, gezielt die Versionshistorie des Medikationsplans abzufragen - etwa um Änderungen nachzuvollziehen oder frühere Zustände einzusehen."
* insert Meta-Instance

* kind = #operation
* extension[method][+].valueCode = #GET
* id = "medication-plan-log-op"
* name = "getMedicationPlanChronologyLog_MedicationSvc"
* code = #medication-plan-log
* affectsState = false
* system = true
* type = false
* instance = false
* parameter[+]
  * name = #_count
  * type = #integer
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Limit the result bundle to this many entries. To get more entries request the next page."
* parameter[+]
  * name = #_offset
  * type = #integer
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Defines the offset of the first entry in the collection."
* parameter[+]
  * name = #return
  * type = #Bundle
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Searchset bundle containing the requested entities."