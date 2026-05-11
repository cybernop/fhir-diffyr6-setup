ValueSet: EMPMedicationRequestStatusVS
Id: emp-medicationrequest-status-vs
Title: "eMP MedicationRequest Status Value Set"
Description: "eMP MedicationRequest Status Value Set"
* insert Meta-VS
// preserve the version
* ^version = "1.3.0"
* ^date = "2025-12-15"
* ^status = #active

* $hl7-medicationrequest-status-cs#active
  * insert Designation(de, [[aktiv]])
* $hl7-medicationrequest-status-cs#completed
  * insert Designation(de, [[beendet]])
* $hl7-medicationrequest-status-cs#entered-in-error
  * insert Designation(de, [[inkorrekt]])
* $hl7-medicationrequest-status-cs#stopped
  * insert Designation(de, [[abgebrochen]])
* $hl7-medicationrequest-status-cs#on-hold
  * insert Designation(de, [[pausiert]])

* insert ExpansionTimestamp

// expansion of explicitly defined codes
* insert ExpansionNoDisplay($hl7-medicationrequest-status-cs, active)
* insert ExpansionDesignation(de-DE, [[aktiv]])

* insert ExpansionNoDisplay($hl7-medicationrequest-status-cs, completed)
* insert ExpansionDesignation(de-DE, [[beendet]])

* insert ExpansionNoDisplay($hl7-medicationrequest-status-cs, entered-in-error)
* insert ExpansionDesignation(de-DE, [[inkorrekt]])

* insert ExpansionNoDisplay($hl7-medicationrequest-status-cs, stopped)
* insert ExpansionDesignation(de-DE, [[abgebrochen]])

* insert ExpansionNoDisplay($hl7-medicationrequest-status-cs, on-hold)
* insert ExpansionDesignation(de-DE, [[pausiert]])

