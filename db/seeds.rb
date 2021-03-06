@ic_1 = InsuranceCard.create(name: "Health Card")
@ic_2 = InsuranceCard.create(name: "Dental Card")
@ic_3 = InsuranceCard.create(name: "Travel Health Card")

@p_1 = Patient.create(name: "Bob Cobb", age: 34, insurance_card: @ic_1)
@p_2 = Patient.create(name: "Hal Hope", age: 32, insurance_card: @ic_2)
@p_3 = Patient.create(name: "Mel Mope", age: 64, insurance_card: @ic_3)
@p_4 = Patient.create(name: "Jim Jupe", age: 38, insurance_card: @ic_1)
@p_5 = Patient.create(name: "Don Dome", age: 25, insurance_card: @ic_2)
@p_6 = Patient.create(name: "Kal Kool", age: 41, insurance_card: @ic_3)

@d_1 = Doctor.create(name: "Dr. Brown", experience: 5)
@d_2 = Doctor.create(name: "Dr. Green", experience: 23)
@d_3 = Doctor.create(name: "Dr. Harrison", experience: 15)
@d_4 = Doctor.create(name: "Dr. Murray", experience: 6)
@d_5 = Doctor.create(name: "Dr. Jackson", experience: 2)
@d_6 = Doctor.create(name: "Dr. Smith", experience: 8)

Appointment.create(month: "January", day: 23, doctor: @d_4, patient: @p_4)
Appointment.create(month: "March", day: 12, doctor: @d_2, patient: @p_3)
Appointment.create(month: "April", day: 6, doctor: @d_1, patient: @p_2)
Appointment.create(month: "November", day: 4, doctor: @d_5, patient: @p_1)
Appointment.create(month: "December", day: 16, doctor: @d_3, patient: @p_6)
Appointment.create(month: "June", day: 12, doctor: @d_5, patient: @p_5)
Appointment.create(month: "August", day: 5, doctor: @d_6, patient: @p_6)
Appointment.create(month: "September", day: 24, doctor: @d_1, patient: @p_3)
Appointment.create(month: "January", day: 27, doctor: @d_2, patient: @p_1)
Appointment.create(month: "July", day: 18, doctor: @d_3, patient: @p_2)
Appointment.create(month: "October", day: 14, doctor: @d_4, patient: @p_4)
Appointment.create(month: "April", day: 3, doctor: @d_6, patient: @p_6)
Appointment.create(month: "February", day: 7, doctor: @d_5, patient: @p_5)
Appointment.create(month: "March", day: 27, doctor: @d_4, patient: @p_2)
Appointment.create(month: "December", day: 30, doctor: @d_3, patient: @p_1)
Appointment.create(month: "October", day: 29, doctor: @d_2, patient: @p_3)
Appointment.create(month: "June", day: 1, doctor: @d_1, patient: @p_4)
Appointment.create(month: "May", day: 16, doctor: @d_5, patient: @p_1)
Appointment.create(month: "November", day: 22, doctor: @d_3, patient: @p_4)
Appointment.create(month: "May", day: 31, doctor: @d_2, patient: @p_6)