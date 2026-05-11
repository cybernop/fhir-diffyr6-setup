Profile: EPAOpEMPCommitInputParametersR6
Parent: Parameters
Id: epa-op-emp-commit-input-parameters
Title: "EPA eMP Commit Operation Input-Parameters"
Description: "EPA eMP Commit Operation Input-Parameters"
* insert Meta

* parameter 0..1 MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #closed
* parameter contains
  acknowledgedChronologyId 0..1 MS 
* parameter[acknowledgedChronologyId]
  * name MS
  * name = "acknowledgedChronologyId" //EMPChronologyProvenance.id
  * value[x] 1..1 MS
  * value[x] only id
  * resource 0..0
  * part 0..0 
