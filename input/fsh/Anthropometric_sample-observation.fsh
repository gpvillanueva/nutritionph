Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct

Instance: Observation.anthropometric
InstanceOf: Observation
Description: "This is an example of Observation Resource used for Anthropometric Measurements related data"
Usage: #example
* meta.profile = "http://upmsilab.org/fhir/StructureDefinition/Observation-anthropometric-results-uv-ips-ph"
* status = #final
* code = $loinc#75286-5 "Nutrition related anthropometric measurements panel"
* subject = Reference(Patient/2934)
* effectiveDateTime = "2023-12-02T00:00:01+08:00"
* component[0].code = $loinc#29463-7 "Body weight"
* component[=].valueQuantity.value = 50
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.unit = "kg"
* component[+].code = $loinc#8302-2 "Body height"
* component[=].valueQuantity.value = 160
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.unit = "cm"
* component[+].code = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* component[=].valueQuantity.value = 18.5
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.unit = "kg/m2"
* component[+].code = $loinc#9843-4 "Head Occipital-frontal circumference"
* component[=].valueQuantity.value = 53
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.unit = "cm"
* component[+].code = $loinc#8280-0 "Waist Circumference at umbilicus by Tape measure"
* component[=].valueQuantity.value = 94
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.unit = "cm"
* component[+].code = $sct#284472007 "Hip circumference (observable entity)"
* component[=].valueQuantity.value = 89
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.unit = "cm"
* component[+].code = $sct#413171006 "Lower limb circumference (observable entity)"
* component[=].valueQuantity.value = 52
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.unit = "cm"