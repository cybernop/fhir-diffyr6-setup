// AUTO-DISABLED (SUSHI R6): Instance: ExampleEpaOpProvidePrescriptionERPInputParameters1
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAOpProvidePrescriptionERPInputParametersR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert InstanceMetaProfileCurrent(EPAOpProvidePrescriptionERPInputParametersR6)
// AUTO-DISABLED (SUSHI R6): * id = "example-epa-op-provide-prescription-erp-input-parameters-1"
// AUTO-DISABLED (SUSHI R6): * parameter[rxPrescription]
  // AUTO-DISABLED (SUSHI R6): * name = "rxPrescription"
  // AUTO-DISABLED (SUSHI R6): * part[prescriptionId]
    // AUTO-DISABLED (SUSHI R6): * name = "prescriptionId"
    // AUTO-DISABLED (SUSHI R6): * valueIdentifier
      // AUTO-DISABLED (SUSHI R6): * system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
      // AUTO-DISABLED (SUSHI R6): * value = "160.100.000.000.011.09"
  // AUTO-DISABLED (SUSHI R6): * part[authoredOn]
    // AUTO-DISABLED (SUSHI R6): * name = "authoredOn"
    // AUTO-DISABLED (SUSHI R6): * valueDate = "2025-09-06"
  // AUTO-DISABLED (SUSHI R6): * part[medicationRequest]
    // AUTO-DISABLED (SUSHI R6): * name = "medicationRequest"
    // AUTO-DISABLED (SUSHI R6): * resource = Inline_Doxycyclin_Request
  // AUTO-DISABLED (SUSHI R6): * part[medication]
    // AUTO-DISABLED (SUSHI R6): * name = "medication"
    // AUTO-DISABLED (SUSHI R6): * resource = Inline_Doxycyclin
  // AUTO-DISABLED (SUSHI R6): * part[organization]
    // AUTO-DISABLED (SUSHI R6): * name = "organization"
    // AUTO-DISABLED (SUSHI R6): * resource = InlineBetriebsstaetteArzt
  // AUTO-DISABLED (SUSHI R6): * part[practitioner]
    // AUTO-DISABLED (SUSHI R6): * name = "practitioner"
    // AUTO-DISABLED (SUSHI R6): * resource = InlineArzt


// AUTO-DISABLED (SUSHI R6): Instance: ExampleEpaOpProvidePrescriptionERPInputParameters2
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAOpProvidePrescriptionERPInputParametersR6
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert InstanceMetaProfileCurrent(EPAOpProvidePrescriptionERPInputParametersR6)
// AUTO-DISABLED (SUSHI R6): * id = "example-epa-op-provide-prescription-erp-input-parameters-2"
// AUTO-DISABLED (SUSHI R6): * parameter[rxPrescription]
  // AUTO-DISABLED (SUSHI R6): * name = "rxPrescription"
  // AUTO-DISABLED (SUSHI R6): * part[prescriptionId]
    // AUTO-DISABLED (SUSHI R6): * name = "prescriptionId"
    // AUTO-DISABLED (SUSHI R6): * valueIdentifier
      // AUTO-DISABLED (SUSHI R6): * system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
      // AUTO-DISABLED (SUSHI R6): * value = "160.100.000.000.002.36"
  // AUTO-DISABLED (SUSHI R6): * part[authoredOn]
    // AUTO-DISABLED (SUSHI R6): * name = "authoredOn"
    // AUTO-DISABLED (SUSHI R6): * valueDate = "2025-11-27"
  // AUTO-DISABLED (SUSHI R6): * part[medicationRequest]
    // AUTO-DISABLED (SUSHI R6): * name = "medicationRequest"
    // AUTO-DISABLED (SUSHI R6): * resource = Inline_Prospan_Request
  // AUTO-DISABLED (SUSHI R6): * part[medication]
    // AUTO-DISABLED (SUSHI R6): * name = "medication"
    // AUTO-DISABLED (SUSHI R6): * resource = Inline_Prospan
  // AUTO-DISABLED (SUSHI R6): * part[organization]
    // AUTO-DISABLED (SUSHI R6): * name = "organization"
    // AUTO-DISABLED (SUSHI R6): * resource = InlineBetriebsstaetteArzt
  // AUTO-DISABLED (SUSHI R6): * part[practitioner]
    // AUTO-DISABLED (SUSHI R6): * name = "practitioner"
    // AUTO-DISABLED (SUSHI R6): * resource = InlineArzt
    

Instance: ExampleEpaOpRxPrescriptionERPOutputParameters1
InstanceOf: EPAOpRxPrescriptionERPOutputParametersR6
Usage: #example
* insert InstanceMetaProfileCurrent(EPAOpRxPrescriptionERPOutputParametersR6)
* id = "example-epa-op-rx-prescription-erp-output-parameters-1"
* parameter[rxPrescription]
  * name = "rxPrescription"
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

    

Instance: ExampleEpaOpCancelPrescriptionERPInputParameters1
InstanceOf: EPAOpCancelPrescriptionERPInputParametersR6
Usage: #example
* insert InstanceMetaProfileCurrent(EPAOpCancelPrescriptionERPInputParametersR6)
* id = "example-epa-op-cancel-prescription-erp-input-parameters-1"
* parameter[rxPrescription]
  * name = "rxPrescription"
  * part[prescriptionId]
    * name = "prescriptionId"
    * valueIdentifier
      * system = "https://gematik.de/fhir/erp/NamingSystem/GEM_ERP_NS_PrescriptionId"
      * value = "160.100.000.000.011.09"
  * part[authoredOn]
    * name = "authoredOn"
    * valueDate = "2025-09-06"
    