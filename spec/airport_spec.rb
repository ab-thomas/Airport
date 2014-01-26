require "./lib/airport"

describe Airport do 
  let(:airport) {Airport.new(:capacity => 50)}
  let(:plane) {Plane.new}

  it "there should be planes at the airport" do
    airport.planes
    expect(airport).to have_planes
  end

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

  it "a plane can't land" do
    airport.full?
   expect(airport.capacity).to eq(50)
    
  end

end