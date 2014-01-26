class Plane
  def initialize(status="flying") # default status = flying
    @status = status
  end

  def has_status?
    @status 
  end

  def has_in_air_status?
    @status
  end

  def land
  end

  def take_off
  end

  def landed?
    !!@status 
  end

  def flying?
    @status 
  end

end