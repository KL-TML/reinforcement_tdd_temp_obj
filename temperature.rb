class Temperature
  attr_reader :temperature, :celsius, :fahrenheit

  def initialize(temp)
    @temperature = temp[:f] || temp[:c]
    @fahrenheit = temp.has_key?(:f)
    @celsius = temp.has_key?(:c)
  end

  def to_fahrenheit
    if @fahrenheit == true
      @temperature
    else
      @temperature * (9.0/5.0)+32.0
    end
  end

  def to_celsius
    if @celsius == true
      @temperature
    else
      (@temperature - 32.0) * (5.0/9.0)
    end
  end

end
#
#
# class Temperature
#   attr_reader :degrees, :scale_f, :scale_c
#
#   def initialize(options)
#     @degrees = options[:f] || options[:c]
#     @scale_f = options.has_key?(:f)
#     @scale_c = options.has_key?(:c)
#   end
#
#   def to_fahrenheit
#     if @scale_f == true
#       @degrees
#     else
#       @degrees * (9.0/5.0) + 32.0
#     end
#   end
#
#   def to_celsius
#     if @scale_c == true
#       @degrees
#     else
#       (@degrees - 32.0) * 5.0/9.0
#     end
#   end
#
# end
