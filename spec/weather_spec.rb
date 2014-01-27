require './lib/weather'

class WeatherHolder; include Weather; end


describe Weather do
  let(:weather)  {WeatherHolder.new}

  it "should be read weather" do  
     expect(weather.reading).to be_true 
  end
end

