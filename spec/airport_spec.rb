require "./lib/airport"

describe Airport do 
  let(:airport) {Airport.new(:capacity => 50)}
  let(:plane) {Plane.new}

  it "there should be planes at the airport" do
    airport.planes # this method call does nothing, you aren't saving its return value
    expect(airport).to have_planes
  end

  # These two tests make sense
  it "a plane can land" do 
    airport.dock(plane)
    expect(airport.planes_count).to eq(1)
    expect(plane).to be_landed
  end

  it "a plane can take off" do
    airport.release(plane)
    expect(airport.planes_count).to eq(0)
    expect(plane).to be_flying
  end

  # Air Traffic Control

  # This test doesn't make sense.
  # It says that it checks that a plane can't land,
  # but instead it just confirms that the capacity is 50
  # The capacity is just the maximum number of planes the airport can hold
  # The capacity of 50 doens't imply that the airport is going to be full
  it "a plane can't land" do
    airport.full? # This method call does nothing, you can't saving or checking its return value
    expect(airport.capacity).to eq(50)    
  end

end