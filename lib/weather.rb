class Weather

  attr_reader :conditions

  def initialize
    @conditions = [:sunny, :stormy]
  end

  def current_condition
    stringify_weather(@conditions.sample)
  end

  private
  def stringify_weather(condition)
    condition.to_s.capitalize
  end

end