Extension: DrugCategoryExtension
Id: drug-category-extension
Description: "Extension for indicating the medication category."
* insert Meta
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* value[x] only Coding
* valueCoding 1..
* valueCoding only Coding
* valueCoding from TIDrugCategoryVS (required)
  * code ^short = "Category"
  * code ^definition = "Drug Category"
