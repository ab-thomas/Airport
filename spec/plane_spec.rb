require "./lib/plane"

  describe Plane do
    let(:plane) {Plane.new}

  # This test makes no sense. You say that it should have
  # flying status when created but then you pass it a :status
  # and check that it has some status. Where's the mention of
  # flying?
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

  
end












