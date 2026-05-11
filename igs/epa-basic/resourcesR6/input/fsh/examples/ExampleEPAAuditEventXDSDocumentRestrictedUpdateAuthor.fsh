// AUTO-DISABLED (SUSHI R6): Instance: ExampleEPAAuditEventXDSDocumentRestrictedUpdateAuthor
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAAuditEventR6
// AUTO-DISABLED (SUSHI R6): Description: "Example AuditEvent for a Restricted Update Document Set on a document with more than 
 // AUTO-DISABLED (SUSHI R6): one author change in a single operation. Assumption is, that the health record system can identify the authors  
 // AUTO-DISABLED (SUSHI R6): by means of an 'internal' identifier, e.g. the Classification scheme or something similar.
 // AUTO-DISABLED (SUSHI R6): The operation adds an authorRole to author-A, removes an authorRole from author-B and replaces the authorSpeciality for author-C,
 // AUTO-DISABLED (SUSHI R6): additionaly "
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * id = "2b503f39-9c66-40e2-8f93-260b70c7020b"
// AUTO-DISABLED (SUSHI R6): * insert EPAAuditEventInstanceMeta
// AUTO-DISABLED (SUSHI R6): * meta
  // AUTO-DISABLED (SUSHI R6): * versionId = "1"
  // AUTO-DISABLED (SUSHI R6): * lastUpdated = "2026-08-11T10:01:43.903Z"
// AUTO-DISABLED (SUSHI R6): * type
  // AUTO-DISABLED (SUSHI R6): * system = $audit-event-type
  // AUTO-DISABLED (SUSHI R6): * code = #document
// AUTO-DISABLED (SUSHI R6): * action = #U
// AUTO-DISABLED (SUSHI R6): * recorded = "2026-08-11T10:01:43.903Z"
// AUTO-DISABLED (SUSHI R6): * outcome = #0
// AUTO-DISABLED (SUSHI R6): * agent[user]
  // AUTO-DISABLED (SUSHI R6): * type
    // AUTO-DISABLED (SUSHI R6): * coding
      // AUTO-DISABLED (SUSHI R6): * system = $v3-role-class
      // AUTO-DISABLED (SUSHI R6): * code = #PROV
      // AUTO-DISABLED (SUSHI R6): * display = "healthcare provider"
  // AUTO-DISABLED (SUSHI R6): * who
    // AUTO-DISABLED (SUSHI R6): * identifier
      // AUTO-DISABLED (SUSHI R6): * system = $sid-identifier-telematik-id
      // AUTO-DISABLED (SUSHI R6): * value = "1-883110000092404"
  // AUTO-DISABLED (SUSHI R6): * altId = "1-883110000092404"
  // AUTO-DISABLED (SUSHI R6): * name = "Praxis Dr. John Doe"
  // AUTO-DISABLED (SUSHI R6): * requestor = true
// AUTO-DISABLED (SUSHI R6): * source
  // AUTO-DISABLED (SUSHI R6): * observer
    // AUTO-DISABLED (SUSHI R6): * display = "Elektronische Patientenakte Fachdienst"
  // AUTO-DISABLED (SUSHI R6): * type
    // AUTO-DISABLED (SUSHI R6): * system = Canonical(EPAAuditEventSourceTypeCS)
    // AUTO-DISABLED (SUSHI R6): * code = #XDSSVC
    // AUTO-DISABLED (SUSHI R6): * display = "XDS Document Service"
// AUTO-DISABLED (SUSHI R6): * entity[+]
  // AUTO-DISABLED (SUSHI R6): // add one authorSpeciality for author-A of the document,
  // AUTO-DISABLED (SUSHI R6): // also add authorPerson for author-A and  
  // AUTO-DISABLED (SUSHI R6): // also change the class code of the document (i.e. all non-author related changes ar elocated in this entity)
  // AUTO-DISABLED (SUSHI R6): * name = "XDS Document Service"
  // AUTO-DISABLED (SUSHI R6): * description = "RestrictedUpdateDocumentSet"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "DocumentTitle"
    // AUTO-DISABLED (SUSHI R6): * valueString = "Arztbrief0815 von Dr. Doe"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "DocumentAuthorSpecialilty"
    // AUTO-DISABLED (SUSHI R6): * valueString = "071002^^^&urn:oid:1.2.276.0.76.5.514&ISO"    
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "DocumentAuthorPerson"
    // AUTO-DISABLED (SUSHI R6): * valueString = "^Doe^John^^^Dr"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "prevDocumentClassCode"
    // AUTO-DISABLED (SUSHI R6): * valueString = "DOK^^^&urn:oid:1.3.6.1.4.1.19376.3.276.1.5.8&ISO"    
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "DocumentClassCode"
    // AUTO-DISABLED (SUSHI R6): * valueString = "BRI^^^&urn:oid:1.3.6.1.4.1.19376.3.276.1.5.8&ISO"   
// AUTO-DISABLED (SUSHI R6): * entity[+]
  // AUTO-DISABLED (SUSHI R6): // remove one authorSpeciality for author-B of the document
  // AUTO-DISABLED (SUSHI R6): * name = "XDS Document Service"
  // AUTO-DISABLED (SUSHI R6): * description = "RestrictedUpdateDocumentSet"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "DocumentTitle"
    // AUTO-DISABLED (SUSHI R6): * valueString = "Arztbrief0815 von Dr. Doe"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "prevDocumentAuthorSpecialilty"
    // AUTO-DISABLED (SUSHI R6): * valueString = "201001^^^&urn:oid:1.2.276.0.76.5.514&ISO"      
// AUTO-DISABLED (SUSHI R6): * entity[+]
  // AUTO-DISABLED (SUSHI R6): // change authorPerson for author-C of the document
  // AUTO-DISABLED (SUSHI R6): * name = "XDS Document Service"
  // AUTO-DISABLED (SUSHI R6): * description = "RestrictedUpdateDocumentSet"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "DocumentTitle"
    // AUTO-DISABLED (SUSHI R6): * valueString = "Arztbrief0815 von Dr. Doe"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "DocumentAuthorPerson"
    // AUTO-DISABLED (SUSHI R6): * valueString = "^Doe-Mustermann^Jane^^^Dr"
  // AUTO-DISABLED (SUSHI R6): * detail[+]
    // AUTO-DISABLED (SUSHI R6): * type = "prevDocumentAuthorPerson"
    // AUTO-DISABLED (SUSHI R6): * valueString = "^Mustermann^Jane^^^Dr"