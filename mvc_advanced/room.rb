require_relative 'patients_repository'
# room class
class Room
  attr_accessor :id
  # to handle full room error
  class FullRoomError < RuntimeError; end
  attr_reader :patients, :capacity
  def initialize(room_attr = {})
    @number = room_attr[:number]
    @capacity = room_attr[:capacity]
    # @patients = [] # array of patients instances
  end

  # to use local db
  # def add_patient(patient)
  #   if full?
  #     raise FullRoomError, 'The room is full'
  #   else
  #     @patients << patient
  #     patient.room = self
  #   end
  # end

  def full?
    @capacity == @patients.size
  end
end
