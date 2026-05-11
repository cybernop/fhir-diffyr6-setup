// Maximalbeispiel Medication ePA
Instance: Technical-Exp-EPAMedicationMax
InstanceOf: EPAMedicationR6
Usage:  #example
* insert EPAMedicationInstanceMeta
* meta
  * lastUpdated = 2023-02-03T11:30:00+01:00
  * versionId = "1"
* extension[type]
  * valueCoding = $sct#373873005 
  // "Pharmaceutical / biologic product (product)"
* code
  * coding[pzn] = $cs-pzn#9717395 "Maaloxan® 25 mVal Sodbrennen Kautabletten Lemon"
  * coding[atc-de] = $cs-atc-de|2024#A02AD10 "Aluminiumoxid in Kombination mit Magnesiumhydroxid"
  * coding[ask] = $cs-ask#02250 "Magnesiumhydroxid"
  // * coding[snomed] = $sct#418673005 "Product containing aluminium oxide (medicinal product)"
  * text = "Maaloxan® 25 mVal Sodbrennen Kautabletten Lemon"
* status = #active
// AUTO-DISABLED (SUSHI R6): * manufacturer
  // AUTO-DISABLED (SUSHI R6): * display = "Praxis Dr. med. Hans Topp-Glücklich"
// AUTO-DISABLED (SUSHI R6): * form
  // * coding[edqm] = $cs-edqm#10228000 "Chewable tablet"
  // AUTO-DISABLED (SUSHI R6): * coding[kbvDarreichungsform] = $cs-kbv-medication-darreichungsform#KTA "Kautabletten"
  // * coding[snomed] = $sct#66076007 "Conventional release chewable tablet (dose form)"
// AUTO-DISABLED (SUSHI R6): * amount
  // AUTO-DISABLED (SUSHI R6): * numerator = 30 '{Tabletten}' "Tabletten"
  // AUTO-DISABLED (SUSHI R6): * denominator = 1 '{Package}' "Package"
* ingredient[0]
  // AUTO-DISABLED (SUSHI R6): * itemCodeableConcept
    // AUTO-DISABLED (SUSHI R6): * coding[ask] = $cs-ask#2250 "Magnesiumhydroxid"
    // AUTO-DISABLED (SUSHI R6): * coding[atc-de] = $cs-atc-de|2024#A02AA04 "Magnesiumhydroxid"
    // * coding[snomed] = $sct#387337001 "Magnesium hydroxide (substance)"
  // AUTO-DISABLED (SUSHI R6): * strength
    // AUTO-DISABLED (SUSHI R6): * numerator = 400 $cs-ucum#mg "milligramm"
    // AUTO-DISABLED (SUSHI R6): * denominator = 1 '{Tabletten}' "Tabletten"
* ingredient[+]
  // AUTO-DISABLED (SUSHI R6): * itemCodeableConcept
    // AUTO-DISABLED (SUSHI R6): * coding[ask] = $cs-ask#01253 "Algeldrat"
    // AUTO-DISABLED (SUSHI R6): * coding[atc-de] = $cs-atc-de|2024#A02AB01 "Aluminiumhydroxid"
    // * coding[snomed] = $sct#273944007 "Aluminium hydroxide (substance)"
    //zusätzlicher Sclice
  // AUTO-DISABLED (SUSHI R6): * strength
    // AUTO-DISABLED (SUSHI R6): * numerator = 400 $cs-ucum#mg "milligramm"
    // AUTO-DISABLED (SUSHI R6): * denominator = 1 '{Tabletten}' "Tabletten"
