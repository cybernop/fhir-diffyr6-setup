Alias: $ApothekeTIOrganization-TelematikID = 9-2.58.00000060
RuleSet: ApothekeTIOrganization-display
* display = "Die Apotheke"

RuleSet: ApothekeTIOrganizationContent
* identifier[TelematikID].value = $ApothekeTIOrganization-TelematikID
* active = true
* type = TIOrganizationProfessionTypeOidCS#1.2.276.0.76.4.54 "Öffentliche Apotheke"
* name = "Die Apotheke"
* active = true
* alias = "Apotheke"
* address.text = """Die Apotheke
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


Instance: InlineApothekeTIOrganization
InstanceOf: TIOrganization
Description: "Example of an Organization"
Usage: #inline
* insert TIOrganizationInstanceMeta
* id = "2c98eed0-2f24-460e-9fcd-4feb21fe95e9"
* insert ApothekeTIOrganizationContent


Instance: ApothekeTIOrganization
InstanceOf: TIOrganization
Description: "Example of an Organization"
Usage: #example
* insert TIOrganizationInstanceMeta
* id = "8B421590-9F7F-46BE-BD1E-C987063AC4F5"
* insert ApothekeTIOrganizationContent


// Hausarztpraxis
Alias: $PraxisTIOrganization-TelematikID = 9-2.58.00000089
RuleSet: PraxisTIOrganization-display
* display = "Die Hausarztpraxis"

RuleSet: PraxisTIOrganizationContent
* identifier[TelematikID].value = $PraxisTIOrganization-TelematikID
* identifier[BSNR].value = "721111100"
* type = TIOrganizationProfessionTypeOidCS#1.2.276.0.76.4.50 "Betriebsstätte Arzt"
* active = true
* name = "Die Hausarztpraxis"
* address.text = """Friedrichstr. 136,
10117 Berlin"""
* address
  * line[+] = "Friedrichstr. 136"
  * city = "Berlin"
  * district = "Mitte"
  * state = "Berlin"
  * postalCode = "10117"
  * country = "DE"
* contact
  * telecom[+].system = #phone
  * telecom[=].value = "0301234567"
  * telecom[+].system = #fax
  * telecom[=].value = "030123456789"
  * telecom[+].system = #email
  * telecom[=].value = "hausarztpraxis@example.com"


Instance: InlinePraxisTIOrganization
InstanceOf: TIOrganization
Description: "Example of a family doctor's office"
Usage: #inline
* insert TIOrganizationInstanceMeta
* id = "bbb91986-3caa-473b-9aac-8004c46d60f2"
* insert PraxisTIOrganizationContent


Instance: PraxisTIOrganization
InstanceOf: TIOrganization
Description: "Example of a family doctor's office"
Usage: #example
* insert TIOrganizationInstanceMeta
* id = "450a9511-53e5-4af7-be36-a18444bb8dd2"
* insert PraxisTIOrganizationContent


Instance: PraxisTI_PractitionerRole
InstanceOf: PractitionerRole
Title: "PraxisTI PractitionerRole"
Usage: #example

* id = "b9eb9668-b61e-43b5-b3ea-485234836d59"
* practitioner = Reference(Arzt)
  * identifier
    * type
      // * coding.version = "2.9.0"
      * coding = $v2-0203#PRN "Provider number"
    * system = $sid-identifier-telematik-id
    * value = $Arzt-TelematikID
  * insert Arzt-display
* organization = Reference(PraxisTIOrganization)
  * identifier
    * type
      // * coding.version = "2.9.0"
      * coding = $v2-0203#PRN "Provider number"
    * system = $sid-identifier-telematik-id
    * value = $PraxisTIOrganization-TelematikID
  * insert PraxisTIOrganization-display
