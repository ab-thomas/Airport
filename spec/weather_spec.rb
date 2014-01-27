require './lib/weather'

class WeatherHolder; include Weather; end

describe Weather do
  let(:holder)  {WeatherHolder.new}

  it "should be sunny" do
    # Firstly, this method doesn't exist.
    # Secondly, even if it did, calling it would be pointless
    # as it would return a value that would be discarded (you are not saving it in a variable)    
    holder.sunny?
    # this makes more sense but you don't have the SUNNY constant here either
    # It would make more sense to create it inside Weather and access it like this:
    # Weather::SUNNY
    expect(holder.weather).to eq(SUNNY)    
 end

end

