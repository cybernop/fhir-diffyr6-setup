Instance: ExampleMinimalOrganizationHeader
InstanceOf: TIOrganization
Description: "Beispiel einer Organization-Ressource im HTTP-Header X-Requesting-Organization"
Usage: #example
* insert TIOrganizationInstanceMeta
* identifier[TelematikID].value = "9-2.58.00000089"
* identifier[BSNR].value = "721111100"
* type[profession] = TIOrganizationProfessionTypeOidCS#1.2.276.0.76.4.50 "Betriebsstätte Arzt"
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