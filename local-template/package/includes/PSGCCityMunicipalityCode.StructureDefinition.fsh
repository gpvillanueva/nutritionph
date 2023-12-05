Alias: $d6bbde33-62dd-4733-b5e0-00ded87d7c3f = https://ontoserver.upmsilab.org/fhir/ValueSet/d6bbde33-62dd-4733-b5e0-00ded87d7c3f

Extension: PSGCCityMunicipalityCode
Id: PSGCCityMunicipalityCode
* ^url = "https://example.org/fhir/StructureDefinition/PSGCCityMunicipalityCode"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Address"
* value[x] only CodeableConcept
* value[x].coding 1..1
* value[x].coding.system = "https://ontoserver.upmsilab.org/fhir/ValueSet/d6bbde33-62dd-4733-b5e0-00ded87d7c3f" (exactly)
* value[x].coding.system ^short = "PSGC CodeSystem"
* value[x].coding.system ^definition = "PSGC CodeSystem"
* value[x].coding.code 1..
* value[x].coding.code from $d6bbde33-62dd-4733-b5e0-00ded87d7c3f (required)
* value[x].coding.code ^binding.description = "See https://psa.gov.ph/classification/psgc for more information. Actual FHIR CodeSystem is at https://ontoserver.upmsilab.org/fhir/CodeSystem/6071d482-f498-407d-afaf-2e5f8517a089"
* value[x].text 1..
* value[x].text ^short = "Actual geographic location name"
* value[x].text ^definition = "Actual geographic location name"