Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Profile: CodingIPS
Parent: Coding
Id: Coding-uv-ips
Title: "Coding with translations"
Description: """This profile extends the capabilities of the coding data type to support multi-language designations (display).
It relies on the Translation extension."""
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 2
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "http://hl7.org/fhir/uv/ips/ImplementationGuide/ig-uv-ips"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "http://hl7.org/fhir/uv/ips/ImplementationGuide/ig-uv-ips"
* ^url = "http://hl7.org/fhir/uv/ips/StructureDefinition/Coding-uv-ips"
* ^version = "1.1.0"
* ^publisher = "Health Level Seven International - Patient Care Work Group"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* system MS
* code MS
* display MS
* display.extension ^slicing.discriminator.type = #value
* display.extension ^slicing.discriminator.path = "url"
* display.extension ^slicing.rules = #open
* display.extension contains Translation named translation 0..*
* display.extension[translation] ^short = "Language Translation (Localization)"