Alias: $ContactEntityTypeCS = http://terminology.hl7.org/CodeSystem/contactentity-type

Alias: $GematikOrganization-TelematikID = 9-2.58.00000040
RuleSet: GematikOrganization-display
* display = "gematik GmbH"

RuleSet: GematikOrganizationContent
* meta.tag[Origin] = Origin#ldap
* identifier[TelematikID].value = $GematikOrganization-TelematikID
* active = true
* type = TIOrganizationProfessionTypeOidCS#1.2.276.0.76.4.58 "Betriebsstätte gematik"
* name = "gematik GmbH"
* active = true
* alias = "gematik"
* address.text = """gematik GmbH
Friedrichstr. 136,
10117 Berlin"""
* address
  * line[+] = "Friedrichstr. 136"
  * city = "Berlin"
  * district = "Mitte"
  * state = "Berlin"
  * postalCode = "10117"
  * country = "DE"
* contact
  * purpose = $ContactEntityTypeCS#ADMIN
  * name.text = "gematik ITSM"
  * telecom[+].system = #email
  * telecom[=].value = "betrieb@gematik.de"


// AUTO-DISABLED (SUSHI R6): Instance: InlineGematikOrganization
// AUTO-DISABLED (SUSHI R6): InstanceOf: OrganizationDirectory
// AUTO-DISABLED (SUSHI R6): Description: "Example of an Organization as to be found in gematik FHIR Directory"
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert OrganizationDirectoryInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "4ccb4995-a97d-4061-8dfe-3a5f4fc4affe"
// AUTO-DISABLED (SUSHI R6): * insert GematikOrganizationContent


// AUTO-DISABLED (SUSHI R6): Instance: GematikOrganization
// AUTO-DISABLED (SUSHI R6): InstanceOf: OrganizationDirectory
// AUTO-DISABLED (SUSHI R6): Description: "Example of an Organization as to be found in gematik FHIR Directory"
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert OrganizationDirectoryInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "be51e0d2-783d-4e21-b16b-1a4cd7403515"
// AUTO-DISABLED (SUSHI R6): * insert GematikOrganizationContent



Alias: $GematikApotheke-TelematikID = 9-2.58.00000023
RuleSet: GematikApotheke-display
* display = "gematik Apotheke"

RuleSet: GematikApothekeContent
* meta.tag[Origin] = Origin#ldap
* identifier[TelematikID].value = $GematikApotheke-TelematikID
* active = true
* type = TIOrganizationProfessionTypeOidCS#1.2.276.0.76.4.54 "Öffentliche Apotheke"
* name = "gematik Apotheke"
* active = true
* alias = "Apotheke"
* address.text = """gematik Apotheke
Friedrichstr. 136,
10117 Berlin"""
* address
  * line[+] = "Friedrichstr. 136"
  * city = "Berlin"
  * district = "Mitte"
  * state = "Berlin"
  * postalCode = "10117"
  * country = "DE"
* contact
  * purpose = $ContactEntityTypeCS#ADMIN
  * name.text = "gematik ITSM"
  * telecom[+].system = #email
  * telecom[=].value = "betrieb@gematik.de"


// AUTO-DISABLED (SUSHI R6): Instance: InlineGematikApotheke
// AUTO-DISABLED (SUSHI R6): InstanceOf: OrganizationDirectory
// AUTO-DISABLED (SUSHI R6): Description: "Example of an Organization as to be found in gematik FHIR Directory"
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert OrganizationDirectoryInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "ccc03731-4c38-4b48-bd41-583766b796c6"
// AUTO-DISABLED (SUSHI R6): * insert GematikApothekeContent


// AUTO-DISABLED (SUSHI R6): Instance: GematikApotheke
// AUTO-DISABLED (SUSHI R6): InstanceOf: OrganizationDirectory
// AUTO-DISABLED (SUSHI R6): Description: "Example of an Organization as to be found in gematik FHIR Directory"
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert OrganizationDirectoryInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "151f1697-7512-4e21-9466-1b75207475d8"
// AUTO-DISABLED (SUSHI R6): * insert GematikApothekeContent



Alias: $BetriebsstaetteArzt-TelematikID = 9-2.58.00000045
RuleSet: BetriebsstaetteArzt-display
* display = "Praxis Dr. med. Max Mustermann"

RuleSet: BetriebsstaetteArztContent
* meta.tag[Origin] = Origin#ldap
* identifier[TelematikID].value = $BetriebsstaetteArzt-TelematikID
* identifier[BSNR].value = "012300004"
* active = true
* type = TIOrganizationProfessionTypeOidCS#1.2.276.0.76.4.50 "Betriebsstätte Arzt"
* name = "Praxis Dr. med. Max Mustermann"
* active = true
* address[+]
  * line[+] = "Musterstr. 1"
  * line[+] = "Mitte"
  * type = #both
  * city = "Darmstadt"
  * postalCode = "64283"
  * country = "DE"
* address[+]
  * line = "45678"
  * type = #postal
  * city = "Darmstadt"
  * country = "DE"


// AUTO-DISABLED (SUSHI R6): Instance: InlineBetriebsstaetteArzt
// AUTO-DISABLED (SUSHI R6): InstanceOf: OrganizationDirectory
// AUTO-DISABLED (SUSHI R6): Description: "Example of an Organization as to be found in gematik FHIR Directory"
// AUTO-DISABLED (SUSHI R6): Usage: #inline
// AUTO-DISABLED (SUSHI R6): * insert OrganizationDirectoryInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "2a61f8e5-806c-4b4e-b6be-73546cc1de3d"
// AUTO-DISABLED (SUSHI R6): * insert BetriebsstaetteArztContent


// AUTO-DISABLED (SUSHI R6): Instance: BetriebsstaetteArzt
// AUTO-DISABLED (SUSHI R6): InstanceOf: OrganizationDirectory
// AUTO-DISABLED (SUSHI R6): Description: "Example of an Organization as to be found in gematik FHIR Directory"
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert OrganizationDirectoryInstanceMeta
// AUTO-DISABLED (SUSHI R6): * id = "ad7dc0e7-cb44-4740-ba67-cb573e29d596"
// AUTO-DISABLED (SUSHI R6): * insert BetriebsstaetteArztContent
