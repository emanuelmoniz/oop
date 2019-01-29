require_relative 'patient'
require_relative 'patients_repository'
require_relative 'room'

@patients = PatientsRepository.new(patients.csv)
@rooms = RoomsRepository.new(rooms.csv)

patient_a = Patient.new(name: 'first last', cured: false)

patient_b = Patient.new(name: 'kurt russel', cured: false, blood_type: 'A')

patient_c = Patient.new(name: 'chuck norris', cured: false, blood_type: 'A')

# p patient_a
# p patient_b
# p patient_c

room_a = Room.new(room: 1, capacity: 2)

# p room_a

# so error handling puts good msg and so the cood continues to run and not break
begin
  room_a.add_patient(patient_a)
  room_a.add_patient(patient_b)
  room_a.add_patient(patient_c)
rescue Room::FullRoomError
  puts 'we dont have more space'
end

# p room_a.patients

p room_a.patients.size
p patient_a
