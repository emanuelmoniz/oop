# db for rooms
class RoomsRepository
  def initizalise(csv_file)
    @csv_file = csv_file
    @rooms = []
    @next_id = 1
  end

  def add_room(room)
    room.id = @next_id
    @rooms << room
    @next_id += 1
  end
end
