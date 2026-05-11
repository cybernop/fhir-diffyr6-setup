RuleSet: CodingMS
// AUTO-DISABLED (SUSHI R6): * system MS
// AUTO-DISABLED (SUSHI R6): * version MS
// AUTO-DISABLED (SUSHI R6): * code MS
// AUTO-DISABLED (SUSHI R6): * display MS

// AUTO-DISABLED (SUSHI R6): RuleSet: CodeableConceptMS
// AUTO-DISABLED (SUSHI R6): * coding MS
  // AUTO-DISABLED (SUSHI R6): * insert CodingMS

// AUTO-DISABLED (SUSHI R6): RuleSet: IdentifierMS
* system MS
// AUTO-DISABLED (SUSHI R6): * value MS

RuleSet: ExtensionMS
* url MS
* value[x] MS

RuleSet: ExtensionStringMS
* insert ExtensionMS
* valueString MS

RuleSet: ExtensionCodingMS
* insert ExtensionMS
* valueCoding
  * insert CodingMS

RuleSet: ReferenceMS
* reference MS
* identifier MS
  // AUTO-DISABLED (SUSHI R6): * insert IdentifierMS
* display MS

RuleSet: HumanNameMS
* use MS
* family MS
* given MS
* prefix MS
* suffix MS

RuleSet: AttachmentMS
* contentType MS
* data MS
* url MS
