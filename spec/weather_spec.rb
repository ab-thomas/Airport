require './lib/weather'

class WeatherHolder; include Weather; end


describe Weather do
  let(:weather)  {WeatherHolder.new}

 
  it "should read weather" do
    expect(["Sunny", "Stormy"]).to include(weather.reading?)
  end
end



