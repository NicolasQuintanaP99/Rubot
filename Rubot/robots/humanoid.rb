require_relative 'robot'
class Humanoid < Robot
  include Battery

  def self.ability
    "Humanoide: Comportamiento de humano"
  end

end
