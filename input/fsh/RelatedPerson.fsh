Alias: v3-RoleCode = http://terminology.hl7.org/CodeSystem/v3-RoleCode 

ValueSet: EEBasePersonRelationship
Id: ee-person-relationship
Title: "Person Relationship"
Description: "Person relationship"
* ^experimental = true
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* include codes from system $SCT where concept descendent-of #125676002 "Person"


Profile: EEBaseRelatedPerson
Parent: RelatedPerson
Id: ee-related-person
Title: "EEBase RelatedPerson"
Description: "Information about a person that is involved in a patient's health or the care for a patient, but who is not the target of healthcare, nor has a formal responsibility in the care process."
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* patient only Reference(EEBasePatient)
* patient MS
* identifier MS
* identifier ^short = "Kontaktisiku identifikaatorid."
* identifier.system from EEBasePatientIdentity (extensible)
* identifier.system 1.. MS
* identifier.value 1.. MS
/*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    est-id 0..1 and
    tis-id 0..1
* identifier[est-id] only $EEBase-ESTID
* identifier[est-id] ^short = "Estonian personal identification"
* identifier[est-id] ^definition = "Eesti isikukoodi identifikaator"
* identifier[tis-id] only $EEBase-TISID
* identifier[tis-id] ^short = "Person's unique code generated by National Health System"
* identifier[tis-id] ^definition = "Isiku unikaalne tunnus, mille alusel saab teda eristada teistest isikutest TIS-is. Saab kasutada nii välimaalaste kui ka tundmatu isiku jaoks (juhtudel, kui puudub Eesti isikukood). Mõeldud andmevahetuseks Tervise infosüsteemiga."
*/

* telecom MS
* address only EEBaseAddress
* relationship MS 
* relationship ^slicing.discriminator.type = #value
* relationship ^slicing.discriminator.path = "coding.system"
* relationship ^slicing.rules = #open
* relationship contains
    class 0..1 and
    person 0..1
* relationship[class].coding.system = v3-RoleCode (exactly)
* relationship[class].coding.system from http://terminology.hl7.org/ValueSet/v3-RoleClass (extensible)
* relationship[class] ^short = "Association or relationship between two entities."
* relationship[person].coding.system = $SCT (exactly)
* relationship[person].coding.system from EEBasePersonRelationship (extensible)
* relationship[person] ^short = "Social context. Relation to the patient"


Instance: Pooh2Robin
InstanceOf: EEBaseRelatedPerson
Description: "Christopher Robin is an emergency contact of bear Pooh"
* patient = Reference(PatientKaruPuhh)
* name.text = "Christopher Robin"
* relationship[0] = v3-RoleCode#ECON "emergency contact"
* relationship[+] = $SCT#113163005 "Friend"


Instance: Dow2Dow
InstanceOf: EEBaseRelatedPerson
Description: "Jane Dow is a wife of John Dow"
* patient = Reference(PatientJohnDoe)
* name
  * given = "Jane"
  * family = "Dow"
* gender = #female  
* relationship[0] = v3-RoleCode#NOK "Next of kin"
* relationship[+] = $SCT#127850001 "Wife"
//* relationship[class] = v3-RoleCode#NOK "Next of kin"
//* relationship[person] = $SCT#127850001 "Wife"