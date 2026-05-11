Alias: $Facharzttitel = urn:oid:1.2.276.0.76.5.514

Alias: $Arzt-TelematikID = 1-1.58.00000056
RuleSet: Arzt-display
* display = "Dr. Max Manfred Mustermann"

RuleSet: ArztContent
* meta.tag[Origin] = Origin#ldap
* active = true
* identifier[TelematikID].value = $Arzt-TelematikID
* identifier[LANR].value = "123456789"
* name
  * prefix = "Dr."
  * given[+] = "Max"
  * given[+] = "Manfred"
  * family = "Musterman"
  * text = "Dr. Max Manfred Mustermann"


// AUTO-DISABLED (SUSHI R6): Instance: InlineArzt
// AUTO-DISABLED (SUSHI R6): InstanceOf: PractitionerDirectory
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert PractitionerDirectoryInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "d444db71-e932-4c4c-a5cb-1844b2173cef"
// AUTO-DISABLED (SUSHI R6): * insert ArztContent


// AUTO-DISABLED (SUSHI R6): Instance: Arzt
// AUTO-DISABLED (SUSHI R6): InstanceOf: PractitionerDirectory
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): Description: "Example of a Practitioner as to be found in gematik FHIR Directory"
// AUTO-DISABLED (SUSHI R6): * insert PractitionerDirectoryInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "498c345f-31f5-4da6-9f04-00fa2bc8af7c"
// AUTO-DISABLED (SUSHI R6): * insert ArztContent


RuleSet: Arzt_PractitionerRole_Reference
* requester = Reference(Arzt_PractitionerRole)
  * display = "Dr. Max Manfred Mustermann / Praxis Dr. med. Max Mustermann"


Instance: Arzt_PractitionerRole
InstanceOf: PractitionerRole
Title: "Arzt PractitionerRole"
Usage: #example

* id = "73a551f8-d8cd-4b44-823d-ab5f8aeab1aa"
* practitioner = Reference(Arzt)
  * identifier
    * type
      // * coding.version = "2.9.0"
      * coding = $v2-0203#PRN "Provider number"
    * system = $sid-identifier-telematik-id
    * value = $Arzt-TelematikID
  * insert Arzt-display
* organization = Reference(BetriebsstaetteArzt)
  * identifier
    * type
      // * coding.version = "2.9.0"
      * coding = $v2-0203#PRN "Provider number"
    * system = $sid-identifier-telematik-id
    * value = $BetriebsstaetteArzt-TelematikID
  * insert BetriebsstaetteArzt-display
