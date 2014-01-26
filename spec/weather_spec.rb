require './lib/weather'

class WeatherHolder; include Weather; end

describe Weather do
  let(:holder)  {WeatherHolder.new}


  it "should be sunny" do
    holder.sunny? 
    expect(holder.weather).to eq(SUNNY) 
   
 end

end

