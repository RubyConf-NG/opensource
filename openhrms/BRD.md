# Health Records Management System

_Business Requirements Document_

## Background

Some of the important and crucial questions that  doctors/physicians wish could be answered are:

1 Have these symptoms re-occurred before?
2. Was he/she treated successfully?
3. Were there any complications resulting from the use of the drugs administered to the patient in their previous diagnosis assessment?

These questions could easily be answered by what doctors term as “Clerking” which is basically getting history about a patient.

## Existing System

In the existing healthcare management systems, there is a high chance of misinformation of a patients’ previous health records. It has become cumbersome and time consuming trying to ask the patient themselves of their previous diagnosis and locate those specific records respectively. A patient may or may not remember their history well enough for a doctor to put together whether he/she was diagnosed properly so they often try to re-diagnose the problem again through the little information they get from the patient.

## Purpose

The main purpose for the proposed project is to link hospitals together. This will create an interface for pulling records of a patient from the hospitals stated to have their records. 
The other reason is to enforce more interconnectivity between hospitals such that doctors/physicians can be more accountable with how they diagnose and treat their patients.

## Modules to be used / Scope of the project

The system would contain two modules, the administration module and the client module. The administration module mainly deals with all the health records management details such as the different hospitals, departments and staff. The client module, on the other hand, mainly includes doctors, patients etc.

N/B: UML(Unified Modeling Language) Diagrams to be added by Gloria, then we update the modules and features involved.

## Features

- The system forms an easy to access online visiting platform for doctors.

## Objectives

- To optimize getting a patients’ history
- To link various hospitals to one another

## PRIVACY 

Patient data is private and the patient should have control over when and with whom to share their data with. This said, it should also fit it seamlessly with current processes. The system should take several measures to protect privacy. These include:

1. A patient should give explicit consent to have their data stored in the system. This should be explained clearly during the initial visit by whoever is in charge.
2. Try as much as possible to keep data in most of the system as private. This means not requiring users to enter names, or government identification numbers(ID or Passport No.) at every turn. Once initial registration is done, a user can be assigned a random number from the system. This number would be used as the patient’s identification throughout the system, instead of doctors, lab technicians or pharmacists asking the patient for names/ID docs, they would request this number and proceed to offer their services
3. For a new doctor/physician to access the patient’s previous records, they should get authorization from the patient. This could be structured as:
   - Patient gives the Doc their Patient no from the system. The doc can then proceed to search for their previous records from other doctors. This could be treated as consent.
   - A two-factor authentication(2FA) where when the physician searches for a patient and wants to read the patient details, the patient approves the request by either sms, USSD, app or email click(TBD at the definition of technical design docs). THis should be an opt-in similar to most 2FAs
4. Doctors who can use the system need to be vetted and approved prior. They need to agree to binding T&Cs to protect user privacy
5. Define Doctor Privileges:
   - A doctor can only alter current visit details if they are the doctor in charge,
   - Previous visits even by same doctor are in read mode
   - Patients can’t edit the medical records
   - Doctor can’t access personal info unrelated to medical records like patient ID number, phone number etc. Anonymizing the patient personal info can enable docs to perform and publish research findings without risk of revealing patient data.
   - Doctors can access anonymized records of different patients with similar symptoms/prognosis/diagnosis if they need to compare notes.
6. Define Patient Privileges
   - They can only access medical records in read mode
   - They can access their profiles in edit mode

## Conclusion

The health records management system is a web-based application that assists in successful and optimal retrieval of a patients’ diagnosis history.

The proposed system provides a universal way of linking hospitals together to overcome the drawbacks of the existing system in relying on data that might otherwise be inaccurate. The system will be reliable from all aspects as the main intent is to improve the current health management system and not re-inventing the wheel. **So, the various hospitals can easily integrate it to their existing systems.**
