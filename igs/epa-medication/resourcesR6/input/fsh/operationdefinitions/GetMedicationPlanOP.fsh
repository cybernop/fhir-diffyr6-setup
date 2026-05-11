Instance: GetMedicationPlanOP
InstanceOf: TIOperationDefinition
Usage: #definition
Title: "Get Medication Plan (eMP)"
Description: "Diese Operation ermöglicht den gezielten Abruf eines elektronischen Medikationsplans (eMP) aus dem Datenraum des Medication Service. Der zurückgegebene Medikationsplan besteht aus einer Sammlung relevanter Ressourceninstanzen, die zu einem bestimmten Zeitpunkt gemeinsam gültig waren, sowie die zugehörige Versicherteninformation (Patient) aus dem Patient Service. Die Operation akzeptiert optional eine Provenance-Referenz.id als Eingabeparameter. Wird diese übergeben, liefert die Operation exakt den Zustand des Medikationsplans, wie er durch diese Provenance-Version beschrieben ist. So kann auch ein vergangener Stand des eMP nachvollziehbar wiedergegeben werden. Wird keine Provenance angegeben, gibt die Operation den aktuellsten Stand des Medikationsplans zurück - also die derzeit gültige Kombination aus aktiven und pausierten Medikationsdaten. Das Ergebnis ist ein Bundle vom Typ collection, das alle zugehörigen Ressourcendaten enthält."
* insert Meta-Instance

* kind = #operation
* extension[method][+].valueCode = #GET
* id = "get-medication-plan-op"
* name = "getMedicationPlan_MedicationSvc"
* code = #medication-plan
* affectsState = false
* system = true
* type = false
* instance = false
* parameter[+]
  * name = #provenance  
  * type = #uuid
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Die UUID der Provenance-Instanz, die eine bestimmte Version des elektronischen Medikationsplans (eMP) identifiziert. Diese Provenance-Instanz repräsentiert den Zustand zu einem bestimmten Zeitpunkt und bündelt die zu diesem Zeitpunkt aktiven eMP-Elemente. Wird kein provenance-Parameter angegeben, liefert die Operation den aktuellsten bekannten Zustand des eMP zurück."
* parameter[+]
  * name = #return
  * type = #Bundle
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Ein Bundle vom Typ collection, das alle relevanten Ressourceninstanzen enthält, die zum angegebenen eMP-Zustand gehören. Diese Ressourcen stammen aus dem Datenraum des Medication Service und bilden gemeinsam den logischen Medikationsplan zum gewünschten Stand ab."