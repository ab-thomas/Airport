require "./lib/plane"

  describe Plane do
    let(:plane) {Plane.new}

  it "should have flying status when created" do 
    plane = Plane.new :status  
    expect(plane).to have_status
  end

  it "should be have flying status in the air" do
    expect(plane).to have_in_air_status
  end

  it "should be able to land" do
    plane.land
    expect(plane).to be_landed # syntactic sugar
    # expect(plane.landed?).to be_true 
  end

  it "should be able to take off" do
    plane.take_off
    expect(plane).to be_flying
  end

  
  # it "should be able to take off" do
  #   plane.land                        # what's this doing?
  #   expect(plane).to be_landed
  #   plane.take_off
  #   expect(plane).to be_flying
  # end

end






  # it "changed its status to flying after taking off" do
  #   plane.status
  #   expect(plane)
  # end






