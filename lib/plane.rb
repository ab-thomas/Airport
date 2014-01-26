class Plane
  def initialize(status="flying") 
    @status = status
  end

  def has_status?
    @status 
  end

  def has_in_air_status?
    @status
  end

  def land
    #if weather is sunny
  end

  def take_off
    # if weather is sunny
  end

  def landed?
    !!@status 
  end

  def flying?
    @status 
  end

end