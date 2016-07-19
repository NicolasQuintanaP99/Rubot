require_relative 'robot'
class Miner < Robot
  include Diesel

  def self.ability
    "Minero: Excavar"
  end

  def show_distance(value)
    puts "Distancia que puedo recorrer: #{calculate_distance(value)}"
  end

end
