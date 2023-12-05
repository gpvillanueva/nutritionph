Alias: $loinc = http://loinc.org
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
Alias: $Patient-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $Patient-IPS-PH = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-IPS-PH
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $Practitioner-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips
Alias: $PractitionerRole-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/PractitionerRole-uv-ips
Alias: $Organization-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips
Alias: $Observation-results-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-uv-ips
Alias: $observation-anthropometric-result = http://upmsilab.org/fhir/ValueSet/observation-anthropometric-result

Profile: ObservationAnthropometricIPSPH
Parent: Observation
Id: Observation-anthropometric-results-uv-ips-ph
Title: "Observation Anthropometric Results (IPS - PH)"
Description: "This profile is derived from IPS observation constraint for anthropometric observation profile constrains of PH Core. The Observation resource to represent various types of results and associated observations in a patient summary.  This is the base profile from which the other results profiles are derived."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 2
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "http://hl7.org/fhir/uv/ips/ImplementationGuide/ig-uv-ips"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "http://hl7.org/fhir/uv/ips/ImplementationGuide/ig-uv-ips"
* ^url = "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-anthropometric-results-uv-ips-ph"
* ^version = "1.1.0"
* ^status = #draft
* ^experimental = false
* ^publisher = "Health Level Seven International - Patient Care Work Group, Modified by UPM SILab"
* ^purpose = "This profile constrains the Observation resource to represent anthropometric measurement results associated in a patient summary."
* status = #final (exactly)
* category only $CodeableConcept-uv-ips
* code only $CodeableConcept-uv-ips
* code = $loinc#75286-5 "Nutrition related anthropometric measurements panel" (exactly)
* code MS
* subject 1.. MS
* subject only Reference($Patient-uv-ips or $Patient-IPS-PH or Group or Device or Location or Patient)
* subject.reference 1.. MS
* effective[x] 1.. MS
* effective[x] only dateTime or Period
* effective[x].extension[data-absent-reason] only $data-absent-reason
* effective[x].extension[data-absent-reason] ^sliceName = "data-absent-reason"
* effective[x].extension[data-absent-reason] ^short = "effective[x] absence reason"
* effective[x].extension[data-absent-reason] ^definition = "Provides a reason why the effectiveTime is missing."
* effective[x].extension[data-absent-reason] ^mustSupport = true
* performer only Reference($Practitioner-uv-ips or $PractitionerRole-uv-ips or $Organization-uv-ips or CareTeam or $Patient-uv-ips or RelatedPerson)
* value[x] MS
* hasMember only Reference($Observation-results-uv-ips or QuestionnaireResponse or MolecularSequence)
* component 1.. MS
* component ^short = "Used when reporting anthropometric measurement/observations"
* component.code from $observation-anthropometric-result (required)