Alias: $EPAPatient-Version = 1.3.0
RuleSet: EPAPatientInstanceMeta
* insert InstanceMetaProfile(EPAPatientR6, 1.3.0)

Profile: EPAPatientR6
Id: epa-patient
Parent: TIPatient
Title: "EPA Patient"
Description: "Das Patient-Profil für die ePA"
* insert Meta-With-Versioning

// preserve the version of this resource
* ^version = $EPAPatient-Version
* ^date = "2025-12-15"
* ^status = #active

* id 0..1 MS
* identifier 1.. MS
* identifier[KVNR] 1.. MS
  // AUTO-DISABLED (SUSHI R6): * insert IdentifierMS
* name[Name].prefix.extension[prefix-qualifier]
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionMS
* name[Geburtsname].family
  * extension[namenszusatz]
    // AUTO-DISABLED (SUSHI R6): * insert ExtensionStringMS
  * extension[nachname]
    // AUTO-DISABLED (SUSHI R6): * insert ExtensionStringMS
  * extension[vorsatzwort]
    // AUTO-DISABLED (SUSHI R6): * insert ExtensionStringMS
* gender.extension[other-amtlich]
  // AUTO-DISABLED (SUSHI R6): * insert ExtensionCodingMS
* active 0..0
