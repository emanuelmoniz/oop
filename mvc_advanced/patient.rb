# patiente class
class Patient
  attr_accessor :room, :id
  def initialize(patient_attr = {})
    @name = patient_attr[:name]
    @cured = patient_attr[:cured]
    @blood_type = patient_attr[:blood_type] || 'O'
    @room = nil # not necessary but better to read code
    @id = ''
  end

  def cure
    @cured = true
  end
end
