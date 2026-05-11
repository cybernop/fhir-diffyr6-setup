Extension: EMPOriginMedicationExtension
Id: emp-origin-medication-extension
Title: "Origin Medication Reference (eMP)"
Description: "Erlaubt einem eMP MedicationRequest, auf die ursprünglich verwendete Medication-Instanz zu referenzieren (Ursprung des eMP-Eintrags)."
* insert Meta
// preserve the version
* ^version = "1.3.1"
* ^date = "2026-03-20"
* ^status = #active

* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"

* obeys epa-no-history-reference
* value[x] only Reference(Medication)
* valueReference 1..1
  * ^short = "Referenz auf die Ursprungs-Medication (Basis des eMP-Eintrags)"
  * ^definition = """
  Diese Referenz stellt den Bezug zwischen einem MedicationRequest und der ursprünglichen Medication-Instanz her, die bei der Erstellung des eMP-Eintrags verwendet wurde. Sie dokumentiert den Ursprung (Origin) der Verschreibung und ermöglicht eine eindeutige Rückverfolgbarkeit. Dies ist insbesondere relevant, wenn sich im Verlauf unterschiedliche Medication-Instanzen (z. B. aufgrund von Versionsänderungen, Produktwechsel oder unterschiedlicher Quellkontexte) im eMP finden lassen. 
  """
