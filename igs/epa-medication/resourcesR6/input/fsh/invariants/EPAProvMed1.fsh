// Invariant: epa-med-prov-med-1
// Description: "'Kombipackung' requires contained medications"
// Severity: #error
// Expression: "form.coding.where(code = 'KPG').exists() implies contained.exists()"
