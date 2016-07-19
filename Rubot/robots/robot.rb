
require_relative '../sources/diesel'
class Robot
  @@constructed = 0
  @@released = 0
  @@selled = 0
  def initialize(name)
    @name = name
    @released = false
    @buyed = false
    @@constructed += 1
  end

  def release!
    @released = true
    @@released += 1
  end

  def buy!(person)
    if @released == true && @buyed == false
      @buyed = true
      puts "El robot #{@name} fue comprador por #{person.name}"
      @@selled += 1
    else
      puts "Hubo un error al intentar comprar el robot #{@name}"
    end
  end

  def self.show_abilities
    puts self.ability
  end

  def self.show_report
    puts "Robots construidos al momento: #{@@constructed}"
    puts "Robots lanzados al momento: #{@@released}"
    puts "Robots vendidos al momento: #{@@selled}"
  end

end
