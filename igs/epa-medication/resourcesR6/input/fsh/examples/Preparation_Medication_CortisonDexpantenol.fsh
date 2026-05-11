// AUTO-DISABLED (SUSHI R6): Instance: CortisonDexpantenol
// AUTO-DISABLED (SUSHI R6): InstanceOf: EPAMedicationR6
// AUTO-DISABLED (SUSHI R6): Title: "Cortison Dexpantenol Medication"
// AUTO-DISABLED (SUSHI R6): Usage: #example
// AUTO-DISABLED (SUSHI R6): * insert EPAMedicationInstanceMeta
// AUTO-DISABLED (SUSHI R6): * contained[+] = Contained-Hydrocortison
// AUTO-DISABLED (SUSHI R6): * contained[+] = Contained-Dexpanthenol
// AUTO-DISABLED (SUSHI R6): * identifier[EPAMedicationUniqueIdentifierR6].value = "570106FB94760C468D4431074523DDC3CC128385EB7F506FAB12F811790C15A9"
// AUTO-DISABLED (SUSHI R6): // Arzneimittelkategorie
// AUTO-DISABLED (SUSHI R6): * extension[drugCategory].valueCoding = EPADrugCategoryCS#00
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): //MedicationType
// AUTO-DISABLED (SUSHI R6): * extension[type].valueCoding = $sct#1208954007 
// AUTO-DISABLED (SUSHI R6): // "Extemporaneous preparation (product)"
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): // Impfstoff
// AUTO-DISABLED (SUSHI R6): * extension[isVaccine].valueBoolean = false
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * code.text = "Hydrocortison-Dexpanthenol-Salbe"
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * form.coding[kbvDarreichungsform].system = "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_DARREICHUNGSFORM"
// AUTO-DISABLED (SUSHI R6): * form.coding[kbvDarreichungsform].code = #SAL
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): // * amount.numerator.value = 20
// AUTO-DISABLED (SUSHI R6): // * amount.numerator.unit = "ml"
// AUTO-DISABLED (SUSHI R6): // * amount.numerator.extension[totalQuantity].valueString = "100 ml"
// AUTO-DISABLED (SUSHI R6): // * amount.denominator.value = 1
// AUTO-DISABLED (SUSHI R6): 
// AUTO-DISABLED (SUSHI R6): * ingredient[+].itemReference = Reference(Contained-Hydrocortison)
// AUTO-DISABLED (SUSHI R6): * ingredient[=].isActive = true
// AUTO-DISABLED (SUSHI R6): * ingredient[=].strength.numerator.value = 50
// AUTO-DISABLED (SUSHI R6): * ingredient[=].strength.numerator.system = $cs-ucum
// AUTO-DISABLED (SUSHI R6): * ingredient[=].strength.numerator.code = #g
// AUTO-DISABLED (SUSHI R6): * ingredient[=].strength.denominator.value = 100
// AUTO-DISABLED (SUSHI R6): * ingredient[=].strength.denominator.system = $cs-ucum
// AUTO-DISABLED (SUSHI R6): * ingredient[=].strength.denominator.code = #g
// AUTO-DISABLED (SUSHI R6): * ingredient[+].itemReference = Reference(Contained-Dexpanthenol)
// AUTO-DISABLED (SUSHI R6): * ingredient[=].isActive = true
// AUTO-DISABLED (SUSHI R6): * ingredient[=].strength.numerator.value = 50
// AUTO-DISABLED (SUSHI R6): * ingredient[=].strength.numerator.system = $cs-ucum
// AUTO-DISABLED (SUSHI R6): * ingredient[=].strength.numerator.code = #g
// AUTO-DISABLED (SUSHI R6): * ingredient[=].strength.denominator.value = 100
// AUTO-DISABLED (SUSHI R6): * ingredient[=].strength.denominator.system = $cs-ucum
// AUTO-DISABLED (SUSHI R6): * ingredient[=].strength.denominator.code = #g

Instance: Contained-Hydrocortison
InstanceOf: EPAMedicationPZNIngredientR6
Usage: #inline
* insert EPAMedicationPZNIngredientInstanceMeta
* extension[type].valueCoding = $sct#781405001 
// "Medicinal product package (product)"
* code.coding[pzn] = $cs-pzn#03424249 "Hydrocortison 1% Creme"
* code.text = "Hydrocortison 1% Creme"

Instance: Contained-Dexpanthenol
InstanceOf: EPAMedicationPZNIngredientR6
Usage: #inline
* insert EPAMedicationPZNIngredientInstanceMeta
* extension[type].valueCoding = $sct#781405001 
// "Medicinal product package (product)"
* code.coding[pzn] = $cs-pzn#16667195 "Dexpanthenol 5% Creme"
* code.text = "Dexpanthenol 5% Creme"
