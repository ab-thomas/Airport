class Airport

  def initialize(planes = {})    
    self.capacity = planes.fetch(:capacity, capacity)
  end

  
  DEFAULT_CAPACITY = 50
  
  
  def planes
    @planes ||= [] 
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def capacity=(value)    
    @capacity = value
  end

  def has_planes? 
    @planes  
  end

  def dock(plane)
    raise "Airport is full" if full?
    planes << plane
  end

  def planes_count 
    planes.count
  end

  def release(plane) 
    planes.delete(plane)
  end

  def full? 
    planes.count == capacity 
  end



end