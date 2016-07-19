require_relative 'robot'
require_relative '../sources/battery'
class Flyer < Robot
  include Battery

  def self.ability
    "Volador: Volar"
  end

  def show_distance(value)
    puts "Distancia que puedo recorrer: #{calculate_distance(value)}"
  end
end
