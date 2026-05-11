Invariant: epa-no-history-reference
Description: "Die Referenz darf keine History-Referenz enthalten ('/_history/' ist nicht erlaubt)."
Severity: #error
Expression: "value.where($this is Reference).reference.exists() implies value.where($this is Reference).reference.contains('/_history/').not()"
