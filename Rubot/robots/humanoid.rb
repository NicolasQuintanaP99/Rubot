require_relative 'robot'
class Humanoid < Robot
  include Battery

  def self.ability
    "Humanoide: Comportamiento de humano"
  end

  def show_distance(value)
    puts "Distancia que puedo recorrer: #{calculate_distance(value)}"
  end

end
