// AUTO-DISABLED (SUSHI R6): Instance: ExpEPAOpAddEmlEntryInputParameters
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAOpAddEmlEntryInputParametersR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert InstanceMetaProfileCurrent(EPAOpAddEmlEntryInputParametersR6)
// AUTO-DISABLED (SUSHI R6): * id = "example-epa-op-add-eml-entry-input-parameters-1"
// AUTO-DISABLED (SUSHI R6): * parameter[medicationStatement]
  // AUTO-DISABLED (SUSHI R6): * name = "medicationStatement"
  // AUTO-DISABLED (SUSHI R6): * resource = Inline_Diclo_Information
// AUTO-DISABLED (SUSHI R6): * parameter[medication]
  // AUTO-DISABLED (SUSHI R6): * name = "medication"
  // AUTO-DISABLED (SUSHI R6): * resource = Inline_Diclo


// AUTO-DISABLED (SUSHI R6): Instance: ExpEPAOpEmlEntryOutputParameters
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAOpEmlEntryOutputParametersR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert InstanceMetaProfileCurrent(EPAOpEmlEntryOutputParametersR6)
// AUTO-DISABLED (SUSHI R6): * id = "example-epa-op-eml-entry-output-parameters-1"
// AUTO-DISABLED (SUSHI R6): * parameter[medicationStatement]
  // AUTO-DISABLED (SUSHI R6): * name = "medicationStatement"
  // AUTO-DISABLED (SUSHI R6): * resource = Diclo_Information
// AUTO-DISABLED (SUSHI R6): * parameter[medication]
  // AUTO-DISABLED (SUSHI R6): * name = "medication"
  // AUTO-DISABLED (SUSHI R6): * resource = Diclo
// AUTO-DISABLED (SUSHI R6): * parameter[relatedActivity]
  // AUTO-DISABLED (SUSHI R6): * name = "relatedActivity"
  // AUTO-DISABLED (SUSHI R6): * resource = Diclo_Information_Provenance


Instance: ExpEPAOpEmlEntryCancelledOutputParameters
InstanceOf: EPAOpEmlEntryOutputParametersR6
Usage: #example
* insert InstanceMetaProfileCurrent(EPAOpEmlEntryOutputParametersR6)
* id = "example-epa-op-eml-entry-cancelled-output-parameters-1"
// * parameter[medicationStatement]
//   * name = "medicationStatement"
//   * resource = Cancelled_Diclo_Information
// * parameter[medication]
//   * name = "medication"
//   * resource = Cancelled_Diclo
* parameter[relatedActivity]
  * name = "relatedActivity"
  * resource = Cancelled_Diclo_Information_Provenance
