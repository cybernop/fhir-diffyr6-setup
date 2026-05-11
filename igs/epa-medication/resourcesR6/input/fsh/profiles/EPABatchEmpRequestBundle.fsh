RuleSet: EPABatchEmpRequestBundleInstanceMeta
* insert InstanceMetaProfile(EPABatchEmpRequestBundleR6, 1.3.0)


Profile: EPABatchEmpRequestBundleR6
Parent: Bundle
Id: epa-batch-emp-request-bundle
Title: "Batch API eMP-Einträge - Request-Bundle"
Description: """
Request-Bundle für die Batch-Operation zur Verarbeitung von eMP-Einträgen.
Erlaubt sind ausschließlich FHIR-Operationen (POST) für den eMP. $emp-commit MUSS genau einmal
vorkommen. Es sind keine direkten Ressourcen-CRUDs zulässig.
"""
* insert Meta
// preserve the version
* ^version = "1.3.1"
* ^date = "2026-03-20"
* ^status = #active

* type MS
* type = #transaction
* link 0..0
* entry 1..* MS
* entry MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "request.url"
  * ^slicing.rules = #closed
* entry contains
  addEmp 0..* MS and
  updateEmp 0..* MS and
  commit 1..1 MS
* entry[addEmp]
  * request MS
    * url = "$add-emp-entry"
    * url MS
    * method = #POST
    * method MS
    * ifNoneMatch 0..0
    * ifModifiedSince 0..0
    * ifMatch 0..0
    * ifNoneExist 0..0
  * fullUrl MS
  * resource 1..1 MS
  * resource only EPAOpAddEMPEntryInputParametersR6
  * search 0..0
  * response 0..0
* entry[updateEmp]
  * request MS
    * url = "$update-emp-entry"
    * url MS
    * method = #POST
    * method MS
    * ifNoneMatch 0..0
    * ifModifiedSince 0..0
    * ifMatch 0..0
    * ifNoneExist 0..0
  * fullUrl MS
  * resource 1..1 MS
  * resource only EPAOpUpdateEMPEntryInputParametersR6
  * search 0..0
  * response 0..0
* entry[commit]
  * request MS
    * url = "$emp-commit"
    * url MS
    * method = #POST
    * method MS
    * ifNoneMatch 0..0
    * ifModifiedSince 0..0
    * ifMatch 0..0
    * ifNoneExist 0..0
  * fullUrl MS
  * resource 1..1 MS
  * resource only EPAOpEMPCommitInputParametersR6
  * search 0..0
  * response 0..0
