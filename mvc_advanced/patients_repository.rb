require_relative 'patient'
# db for patients
class PatientsRepository
  def initizalise(csv_file)
    @csv_file = csv_file
  end

  def load_patients
    @patients = []
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(csv_file, csv_options) do |row|
      row[:id]    = row[:id].to_i          # Convert column to Integer
      row[:cured] = row[:cured] == 'true'  # Convert column to boolean
      patients << Patient.new(row)
    end
    @next_id = @patients.empty? ? 1 : @patients.last.id + 1
  end

  def add_patient(patient)
    patient.id = @next_id
    @patients << patient
    @next_id += 1
  end
end
