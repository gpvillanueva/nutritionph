Alias: $loinc = http://loinc.org

Instance: Observation.VitalSigns
InstanceOf: Observation
Description: "This is an example of Observation Resource used for Vital Signs related data"
Usage: #example
* meta.profile = "http://upmsilab.org/fhir/StructureDefinition/Observation-results-uv-ips-ph"
* status = #final
* code = $loinc#8716-3 "Vital signs"
* subject = Reference(Patient/2934)
* effectiveDateTime = "2023-12-01T00:00:02+08:00"
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity.value = 120
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.unit = "mm Hg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity.value = 80
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.unit = "mm Hg"
* component[+].code = $loinc#8867-4 "Heart rate"
* component[=].valueQuantity.value = 73
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.unit = "beats per minute"
* component[+].code = $loinc#9279-1 "Respiratory rate"
* component[=].valueQuantity.value = 18
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.unit = "breaths per minute"
* component[+].code = $loinc#20564-1 "Oxygen saturation in Arterial blood"
* component[=].valueQuantity.value = 98
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.unit = "%"
* component[+].code = $loinc#8310-5 "Body temperature"
* component[=].valueQuantity.value = 36.1
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.unit = "Celsius"