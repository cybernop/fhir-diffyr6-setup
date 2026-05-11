Instance: GetMedicationListOP
InstanceOf: TIOperationDefinition
Usage: #definition
Title: "Get Medication List"
Description: "Die Operation liefert die elektronische Medikationsliste (eML) in Form eines FHIR searchSet-Bundles. In der eML werden ausschließlich nicht stornierte Instanzen von Verschreibungsdaten, Dispensierdaten, nachgetragenen Medikamenten sowie die zugehörige Versicherteninformation aus dem Patient Service angezeigt."
* insert Meta-Instance

* kind = #operation
* extension[method][+].valueCode = #GET
* id = "get-medication-list-op"
* name = "getMedicationList_MedicationSvc"
* code = #medication-list
* affectsState = false
* system = true
* type = false
* instance = false
* parameter[+]
  * name = #date
  * type = #string
  * searchType = #date
  * use = #in
  * min = 0
  * max = "2"
  * documentation = "Limit the search to this date. Can specify upper or lower limits and periods by providing an upper and a lower limit."
* parameter[+]
  * name = #_count
  * type = #string
  * searchType = #number
  * use = #in
  * min = 0
  * max = "1"
  * documentation = "Limit the result bundle to this many entries. To get more entries request the next page."
* parameter[+]
  * name = #_offset
  * type = #string
  * searchType = #number
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