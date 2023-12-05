Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $middle = https://example.org/fhir/StructureDefinition/middle
Alias: $PSGCRegionCode = https://example.org/fhir/StructureDefinition/PSGCRegionCode
Alias: $PSGCProvinceCode = https://example.org/fhir/StructureDefinition/PSGCProvinceCode
Alias: $PSGCCityMunicipalityCode = https://example.org/fhir/StructureDefinition/PSGCCityMunicipalityCode
Alias: $PSGCBarangayCode = https://example.org/fhir/StructureDefinition/PSGCBarangayCode
Alias: $CodeableConcept-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips

Profile: PatientUvIpsPH
Parent: Patient
Id: Patient-uv-ips-ph
Title: "Patient (IPS-PH)"
Description: "This profile represents the constraints applied to the Patient resource by the International Patient Summary (IPS) FHIR Implementation Guide and describes the minimum expectations for the Patient resource when used in the IPS composition or in one of the referred resources."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #pc
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 2
* ^extension[=].valueInteger.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueInteger.extension.valueCanonical = "http://hl7.org/fhir/uv/ips/ImplementationGuide/ig-uv-ips"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "http://hl7.org/fhir/uv/ips/ImplementationGuide/ig-uv-ips"
* ^url = "http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-IPS-PH"
* ^version = "1"
* ^publisher = "UPM SILAB"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/patientcare"
* ^jurisdiction = $m49.htm#001
* identifier MS
* identifier ^short = "PHIC ID"
* identifier ^definition = "For this implemetation. All patients should be identified by their PHIC number."
* name 1.. MS
* name obeys ips-pat-1
* name ^requirements = "Need to be able to track the patient by multiple names. Examples are your official name and a partner name.\r\nThe Alphabetic representation of the name SHALL be always provided"
* name.extension[middle] only $middle
* name.extension[middle] ^sliceName = "middle"
* name.extension[middle] ^isModifier = true
* name.extension[middle] ^isModifierReason = "Modifies patient name."
* name.text MS
* name.text ^definition = "Text representation of the full name. Due to the cultural variance around the world a consuming system may not know how to present the name correctly; moreover not all the parts of the name go in given or family. Creators are therefore strongly encouraged to provide through this element a presented version of the name. Future versions of this guide may require this element"
* name.family MS
* name.given MS
* telecom MS
* gender MS
* birthDate 1.. MS
* address MS
* address obeys pat-cnt-2or3-char
* address.extension[PSGCRegionCode] only $PSGCRegionCode
* address.extension[PSGCRegionCode] ^sliceName = "PSGCRegionCode"
* address.extension[PSGCRegionCode] ^isModifier = false
* address.extension[PSGCProvinceCode] only $PSGCProvinceCode
* address.extension[PSGCProvinceCode] ^sliceName = "PSGCProvinceCode"
* address.extension[PSGCProvinceCode] ^isModifier = false
* address.extension[PSGCCityMunicipalityCode] only $PSGCCityMunicipalityCode
* address.extension[PSGCCityMunicipalityCode] ^sliceName = "PSGCCityMunicipalityCode"
* address.extension[PSGCCityMunicipalityCode] ^isModifier = false
* address.extension[PSGCBarangayCode] only $PSGCBarangayCode
* address.extension[PSGCBarangayCode] ^sliceName = "PSGCBarangayCode"
* address.extension[PSGCBarangayCode] ^isModifier = false
* contact.relationship only $CodeableConcept-uv-ips
* contact.relationship.coding.display.extension[translation] ^sliceName = "translation"
* contact.relationship.coding.display.extension[translation].extension 2..
* generalPractitioner MS

Invariant: ips-pat-1
Description: "Patient.name.given, Patient.name.family or Patient.name.text SHALL be present"
Severity: #error
Expression: "family.exists() or given.exists() or text.exists()"
XPath: "f:given or f:family or f:text"

Invariant: pat-cnt-2or3-char
Description: "The content of the country element (if present) SHALL be selected EITHER from ValueSet ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2 OR MAY be selected from ISO Country Alpha-3 Value Set http://hl7.org/fhir/ValueSet/iso3166-1-3, IF the country is not specified in value Set ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2."
Severity: #warning
Expression: "country.empty() or (country.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-2') or country.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-3'))"