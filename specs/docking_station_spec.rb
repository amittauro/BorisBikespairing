it 'doesnt release bikes' do
  # set up
  docking_station = DockingStation.new
  bike = Bike.new

  # execute
  result = docking_station.release(bike)

  # verify
  assert_equals(result, "Sorry no bikes")
end

it 'doesnt accept more bikes than 20' do
  # set up
  docking_station = DockingStation.new
  20.times do
    docking_station.dock(Bike.new)
  end

  # execute
  bike = Bike.new
  result = docking_station.dock(bike)

  # verify
  assert_equals(result, "No space available")
end
