Invariant: epa-fhir-data-service-identifier-allowed-values
Description: "Nur zugelassene FHIR Data Services der ePA sind erlaubt."
Expression: "
value = 'MEDICATIONSVC' 
or 
value = 'CDMGMT' 
or 
value = 'ENTITMGMT' 
or 
value = 'DEVICEMGMT'
or 
value = 'XDSSVC'
or 
value = 'CONMGMT'
or 
value = 'AUDITSVC'
or 
value = 'MHDSVC'
or 
value = 'PATSVC'
"
Severity: #error