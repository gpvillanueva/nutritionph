Extension: Middle
Id: Middle
* ^url = "https://example.org/fhir/StructureDefinition/middle"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Patient.name"
* . ..1
* . ^short = "Extension of Patient name to include Middle Name"
* . ^definition = "Ane extension to add MIddle name in Patient.name."
* id ..0
* url = "https://example.org/fhir/StructureDefinition/middle" (exactly)
* value[x] only string