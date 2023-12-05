Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $Coding-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Coding-uv-ips

Profile: CodeableConceptIPS
Parent: CodeableConcept
Id: CodeableConcept-uv-ips
Title: "Codeable Concept (IPS)"
Description: "This profile represents the constraint applied to the CodeableConcept data type by the International Patient Summary (IPS) FHIR Implementation Guide to use the Coding-uv-ips data type profile."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 2
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "http://hl7.org/fhir/uv/ips/ImplementationGuide/ig-uv-ips"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "http://hl7.org/fhir/uv/ips/ImplementationGuide/ig-uv-ips"
* ^url = "http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips"
* ^version = "1.1.0"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* coding only $Coding-uv-ips
* coding MS
* text MS
* text ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable"
* text ^extension[=].valueBoolean = true