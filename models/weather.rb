class Weather
  def initialize(zip_code)
    @zip_code = zip_code
  end
  
  def temperature
    barometer = Barometer.new(@zip_code)
    weather = barometer.measure
    temp = weather.current.temperature.to_f * (9.0/5.0) +32
    temp
  end
  
end