RuleSet: Subject(element-name)
* {element-name} 1..1 MS
* {element-name} only Reference(Patient)
  * identifier 1..1 MS
  * identifier only IdentifierKvid10


RuleSet: Performer
* performer ..1 MS
  * ^definition = "Hier wird die behandelnde Person/Einrichtung referenziert, die die Beobachtung durchgeführt hat."
  * reference MS
  * identifier MS
  * identifier only identifier-kvid-10 or
      identifier-telematik-id
    * insert IdentifierMS
* performer only Reference(Organization or
    RelatedPerson or
    Patient or
    Practitioner or
    PractitionerRole)


RuleSet: Operation
* kind = #operation


RuleSet: BundleUuidEntry(profile, resourceId)
* entry[+]
  * resource = {profile}
  * fullUrl = "urn:uuid:{resourceId}"


RuleSet: BundleEntry(profile, type, resourceId)
* entry[+]
  * resource = {profile}
  * fullUrl = "http://epa4all/epa/medication/api/v1/fhir/{type}/{resourceId}"


RuleSet: BundleEntrySearch(profile, type, resourceId, mode)
* entry[+]
  * resource = {profile}
  * fullUrl = "http://epa4all/epa/medication/api/v1/fhir/{type}/{resourceId}"
  * search
    * mode = {mode}


RuleSet: Designation(lang, display)
* ^designation.language = #{lang}
* ^designation.value = """{display}"""


RuleSet: Expansion(system, code, display)
* ^expansion.contains[+].system = {system}
* ^expansion.contains[=].code = #{code}
* ^expansion.contains[=].display = """{display}"""


RuleSet: ExpansionNoDisplay(system, code)
* ^expansion.contains[+].system = {system}
* ^expansion.contains[=].code = #{code}


RuleSet: ExpansionCanonical(system, code, display)
* ^expansion.contains[+].system = Canonical({system})
* ^expansion.contains[=].code = #{code}
* ^expansion.contains[=].display = """{display}"""


RuleSet: ExpansionCanonicalNoDisplay(system, code)
* ^expansion.contains[+].system = Canonical({system})
* ^expansion.contains[=].code = #{code}


RuleSet: ExpansionCodeDeprecated
* ^expansion.contains[=].extension.url = Canonical(ValueSetExpansionDeprecatedExt)
* ^expansion.contains[=].extension.valueBoolean = true


RuleSet: ExpansionCodeInactive
* ^expansion.contains[=].inactive = true


RuleSet: ExpansionDesignation(lang, value)
* ^expansion.contains[=].designation[+].language = #{lang}
* ^expansion.contains[=].designation[=].value = """{value}"""


RuleSet: ExpansionTimestamp
* ^expansion.timestamp = "2025-07-24"


RuleSet: renderedDosageInstructionDefinition
* extension MS
// AUTO-DISABLED (SUSHI R6): * extension[renderedDosageInstruction] MS
  // AUTO-DISABLED (SUSHI R6): * ^short = "Vollständige Darstellung der Dosierungsanweisungen (generiert aus den Dosage-Elementen)."
  // AUTO-DISABLED (SUSHI R6): * ^definition = "Ein menschenlesbarer, vollständiger Text der Dosierungsanweisungen. Der Text wird aus den strukturierten Dosage-Elementen generiert und dient der patientensicheren Darstellung der Dosierung. Er soll die maschinenlesbaren Angaben konsistent wiedergeben und in einer für Patient:innen verständlichen Form bereitstellen."
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionMarkdownMS
// AUTO-DISABLED (SUSHI R6): * extension[generatedDosageInstructionsMeta] MS
  // AUTO-DISABLED (SUSHI R6): * ^short = "Metadaten zu den generierten Dosierungsanweisungen"
  // AUTO-DISABLED (SUSHI R6): * ^definition = "Diese Extension enthält zusätzliche Metadaten zu den automatisch generierten Dosierungsanweisungen, wie z.B. Informationen zur Generierung oder zum Ursprung der Daten."
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionMS
  // AUTO-DISABLED (SUSHI R6): * extension[language] MS
    // AUTO-DISABLED (SUSHI R6): * insert ExtensionCodeMS
  // AUTO-DISABLED (SUSHI R6): * extension[algorithmVersion] MS
    // AUTO-DISABLED (SUSHI R6): * insert ExtensionStringMS

RuleSet: InstanceMetaProfile(profile, version)
* meta.profile = Canonical({profile}|{version})


RuleSet: InstanceMetaProfileCurrent(profile)
* meta.profile = Canonical({profile}|1.3.0)

