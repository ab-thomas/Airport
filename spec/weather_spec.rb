require './lib/weather'

class WeatherHolder; include Weather; end


describe Weather do
  let(:weather)  {WeatherHolder.new}

  it "should read weather to be sunny and stormy" do
    expect(["Sunny", "Stormy"]).to include(weather.reading)
  end
end


 

 




