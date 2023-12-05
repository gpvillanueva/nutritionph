Alias: $loinc = http://loinc.org

Profile: EncounterPH
Parent: Encounter
Id: EncounterPH
Description: "This FHIR Resource is used to document patient visit details"
* ^url = "https://example.org/fhir/StructureDefinition/EncounterPH"
* ^status = #draft
* period 1..
* period.start ^code = $loinc#76427-4 "Visit Date"
* period.end ^code = $loinc#76427-4 "Visit Date"
* reasonCode ^code = $loinc#29298-7 "Reason for Visit"
* reasonCode.text 1..


