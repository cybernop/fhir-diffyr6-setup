Extension: MedicationManufacturingInstructionsExtension
Id: medication-manufacturing-instructions-extension
Description: "Manufacturing instructions regarding the preparation of a formulation (Subscriptio)."
* insert Meta
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* value[x] only string
* valueString 1..
  * ^short = "Manufacturing instructions for a formulation."
  * ^definition = "Manufacturing instructions regarding the preparation of a formulation (Subscriptio)."
  * ^maxLength = 500
