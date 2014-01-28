require './lib/weather'

class WeatherHolder; include Weather; end


describe Weather do
  let(:weather)  {WeatherHolder.new}

    it "should read weather" do
      expect(["Sunny", "Stormy"]).to include(weather.reading)
  end
end


 

 # it "should be read weather" do  
 #     expect(weather.reading).to be_true 
 #  end


 #  it "should be read weather" do 
 #      weather.read
 #      expect(weather).to be_reading       # syntactic suger for next line
 #      expect(weather.reading).to be_true 
 #  end