module Weather
# set weather as constants 
    STORMY = 1
    SUNNY  = 2

# Create method to randomise weather 
# to be called by airport.rb
  def weather
     r = Random.new
      r.rand(1...2)
  end

  def sunny?
  end

end