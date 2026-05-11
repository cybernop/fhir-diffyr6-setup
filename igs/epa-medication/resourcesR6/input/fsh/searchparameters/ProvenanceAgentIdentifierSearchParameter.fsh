Instance: ProvenanceAgentIdentifierSP
InstanceOf: SearchParameter
Usage: #definition
* insert Meta-Instance

* id = "provenance-agent-identifier-sp"
* name = "ProvenanceAgentIdentifierSP"
* description = "Suche anhand der logischen Referenz (identifier) im Element Provenance.agent.who"
* base[+] = #Provenance
* code = #agent-identifier
* type = #token
* expression = "Provenance.agent.who.identifier"
