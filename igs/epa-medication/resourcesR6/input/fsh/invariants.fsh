// Misc

Invariant: date-1
Description: "Datetime must be at least day, month and year."
Severity: #error
Expression: "(date as dateTime).toString().length() >= 10"

// Observations

Invariant: obs-epa-1
Description: "At least year, month and day are needed"
Severity: #error
Expression: "(effective as dateTime).toString().length() >= 10"

Invariant: obs-epa-2
Description: "If it is a valid Observation it must have a value otherwise it must not have a value"
Severity: #error
Expression: "(Observation.value.exists() implies (Observation.status in ('final' | 'amended' | 'corrected' | 'preliminary')))"