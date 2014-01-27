class Plane

  def initialize(status="flying") 
    @status = status
  end

  # A method with a question mark at the end
  # should return a boolean value
  def has_status?
    @status 
  end

  # A method with a question mark at the end
  # should return a boolean value
  def has_in_air_status?
    @status
  end

  def land
    #if weather is sunny
  end

  def take_off
    # if weather is sunny
  end

  # this will return true for any status, not just "landed"
  def landed?
    !!@status 
  end

  # A method with a question mark at the end
  # should return a boolean value
  def flying?
    @status 
  end

end