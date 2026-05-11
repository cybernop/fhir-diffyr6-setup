Instance: EPAMHDDocumentReferenceTitleSearchParameter
InstanceOf: SearchParameter
Title: "EPA MHD DocumentReference Title Search Parameter"
Usage: #definition
* insert Meta-Instance

* id = "epa-mhd-documentreference-title"
* name = "EPAMHDDocumentReferenceTitleSearchParameter"
* description = "Titel des Dokuments auf Basis von DocumentReference.content.attachment.title"
* base[+] = #DocumentReference
* code = #title
* type = #string
* expression = "DocumentReference.content.attachment.title"
