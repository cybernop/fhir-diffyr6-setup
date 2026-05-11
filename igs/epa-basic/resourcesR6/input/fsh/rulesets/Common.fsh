RuleSet: Subject(element-name)
* {element-name} 1..1 MS
* {element-name} only Reference(Patient)
  * identifier 1..1 MS
  * identifier only IdentifierKvid10


RuleSet: InstanceMetaProfile(profile, version)
* meta.profile = Canonical({profile}|{version})
