// AUTO-DISABLED (SUSHI R6): Instance: ExampleEpaOpProvideDispensationERPInputParameters1
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAOpProvideDispensationERPInputParametersR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert InstanceMetaProfileCurrent(EPAOpProvideDispensationERPInputParametersR6)
// AUTO-DISABLED (SUSHI R6): * id = "example-epa-op-provide-dispensation-erp-input-parameters-1"
// AUTO-DISABLED (SUSHI R6): * parameter[rxDispensation]
  // AUTO-DISABLED (SUSHI R6): * name = "rxDispensation"
  // AUTO-DISABLED (SUSHI R6): * part[prescriptionId]
    // AUTO-DISABLED (SUSHI R6): * name = "prescriptionId"
    // AUTO-DISABLED (SUSHI R6): * valueIdentifier
      // AUTO-DISABLED (SUSHI R6): * system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
      // AUTO-DISABLED (SUSHI R6): * value = "160.100.000.000.011.09"
  // AUTO-DISABLED (SUSHI R6): * part[authoredOn]
    // AUTO-DISABLED (SUSHI R6): * name = "authoredOn"
    // AUTO-DISABLED (SUSHI R6): * valueDate = "2025-09-06"
  // AUTO-DISABLED (SUSHI R6): * part[medicationDispense]
    // AUTO-DISABLED (SUSHI R6): * name = "medicationDispense"
    // AUTO-DISABLED (SUSHI R6): * resource = Inline_Doxycyclin_Dispense
  // AUTO-DISABLED (SUSHI R6): * part[medication]
    // AUTO-DISABLED (SUSHI R6): * name = "medication"
    // AUTO-DISABLED (SUSHI R6): * resource = Inline_Doxycyclin
  // AUTO-DISABLED (SUSHI R6): * part[organization]
    // AUTO-DISABLED (SUSHI R6): * name = "organization"
    // AUTO-DISABLED (SUSHI R6): * resource = InlineGematikApotheke
  // * part[status]
  //   * name = "status"
  //   * valueCode = #completed


// AUTO-DISABLED (SUSHI R6): Instance: ExampleEpaOpProvideDispensationERPInputParameters2
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAOpProvideDispensationERPInputParametersR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert InstanceMetaProfileCurrent(EPAOpProvideDispensationERPInputParametersR6)
// AUTO-DISABLED (SUSHI R6): * id = "example-epa-op-provide-dispensation-erp-input-parameters-2"
// AUTO-DISABLED (SUSHI R6): * parameter[rxDispensation]
  // AUTO-DISABLED (SUSHI R6): * name = "rxDispensation"
  // AUTO-DISABLED (SUSHI R6): * part[prescriptionId]
    // AUTO-DISABLED (SUSHI R6): * name = "prescriptionId"
    // AUTO-DISABLED (SUSHI R6): * valueIdentifier
      // AUTO-DISABLED (SUSHI R6): * system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
      // AUTO-DISABLED (SUSHI R6): * value = "160.100.000.000.002.36"
  // AUTO-DISABLED (SUSHI R6): * part[authoredOn]
    // AUTO-DISABLED (SUSHI R6): * name = "authoredOn"
    // AUTO-DISABLED (SUSHI R6): * valueDate = "2025-11-27"
  // AUTO-DISABLED (SUSHI R6): * part[medicationDispense]
    // AUTO-DISABLED (SUSHI R6): * name = "medicationDispense"
    // AUTO-DISABLED (SUSHI R6): * resource = Inline_Prospan_Dispense
  // AUTO-DISABLED (SUSHI R6): * part[medication]
    // AUTO-DISABLED (SUSHI R6): * name = "medication"
    // AUTO-DISABLED (SUSHI R6): * resource = Inline_Prospan
  // AUTO-DISABLED (SUSHI R6): * part[organization]
    // AUTO-DISABLED (SUSHI R6): * name = "organization"
    // AUTO-DISABLED (SUSHI R6): * resource = InlineGematikApotheke


// AUTO-DISABLED (SUSHI R6): Instance: ExampleEpaOpProvideDispensationERPInputParametersInProgress
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAOpProvideDispensationERPInputParametersR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert InstanceMetaProfileCurrent(EPAOpProvideDispensationERPInputParametersR6)
// AUTO-DISABLED (SUSHI R6): * id = "example-epa-op-provide-dispensation-erp-input-parameters-3"
// AUTO-DISABLED (SUSHI R6): * parameter[rxDispensation]
  // AUTO-DISABLED (SUSHI R6): * name = "rxDispensation"
  // AUTO-DISABLED (SUSHI R6): * part[prescriptionId]
    // AUTO-DISABLED (SUSHI R6): * name = "prescriptionId"
    // AUTO-DISABLED (SUSHI R6): * valueIdentifier
      // AUTO-DISABLED (SUSHI R6): * system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
      // AUTO-DISABLED (SUSHI R6): * value = "160.100.000.000.006.24"
  // AUTO-DISABLED (SUSHI R6): * part[authoredOn]
    // AUTO-DISABLED (SUSHI R6): * name = "authoredOn"
    // AUTO-DISABLED (SUSHI R6): * valueDate = "2025-05-20"
  // AUTO-DISABLED (SUSHI R6): * part[medicationDispense]
    // AUTO-DISABLED (SUSHI R6): * name = "medicationDispense"
    // AUTO-DISABLED (SUSHI R6): * resource = Inline_JanuviaFilmtabletten_Dispense
  // AUTO-DISABLED (SUSHI R6): * part[medication]
    // AUTO-DISABLED (SUSHI R6): * name = "medication"
    // AUTO-DISABLED (SUSHI R6): * resource = InlineJanuviaFilmtabletten
  // AUTO-DISABLED (SUSHI R6): * part[organization]
    // AUTO-DISABLED (SUSHI R6): * name = "organization"
    // AUTO-DISABLED (SUSHI R6): * resource = InlineGematikApotheke
  // * part[status]
  //   * name = "status"
  //   * valueCode = #in-progress
    


Instance: ExampleEpaOpCancelDispensationERPInputParameters1
InstanceOf: EPAOpCancelDispensationERPInputParametersR6
Usage: #example
* insert InstanceMetaProfileCurrent(EPAOpCancelDispensationERPInputParametersR6)
* id = "example-epa-op-cancel-dispensation-erp-input-parameters-1"
* parameter[rxDispensation]
  * name = "rxDispensation"
  * part[prescriptionId]
    * name = "prescriptionId"
    * valueIdentifier
      * system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
      * value = "160.100.000.000.011.09"
  * part[authoredOn]
    * name = "authoredOn"
    * valueDate = "2025-09-06"



Instance: ExampleEpaOpRxDispensationOutputParameters1
InstanceOf: EPAOpRxDispensationERPOutputParametersR6
Usage: #example
* insert InstanceMetaProfileCurrent(EPAOpRxDispensationERPOutputParametersR6)
* id = "example-epa-op-rx-dispensation-erp-output-parameters-1"
* parameter[rxDispensation]
  * name = "rxDispensation"
  * part[prescriptionId]
    * name = "prescriptionId"
    * valueIdentifier
      * system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
      * value = "160.100.000.000.011.09"
  * part[authoredOn]
    * name = "authoredOn"
    * valueDate = "2025-09-06"
  * part[operationOutcome]
    * name = "operationOutcome"
    * resource = ExpOperationOutcomeSuccess

    