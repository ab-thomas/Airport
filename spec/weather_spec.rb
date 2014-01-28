require 'weather'

describe Weather do
  let(:weather)  {Weather.new}

  it 'has a random weather condition' do
    expect(weather.conditions).to receive(:sample)

    weather.current_condition
  end

  it 'is a sunny day' do
    expect(weather.conditions).to receive(:sample).and_return(:sunny)

    expect(weather.current_condition).to eq 'Sunny'
  end
end




