class Robot
  @@constructed = 0
  @@released = 0
  @@selled = 0
  def initialize(name)
    @name = name
    @released = false
    @buyed = false
    @@constructed += 1
    @serial_number = Random.rand(9999)
  end

  def release!
    @released = true
    @@released += 1
  end

  def buy!(person)
    @person = person
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

  def show_distance(value)
    puts "Distancia que puedo recorrer: #{calculate_distance(value)} Km"
  end

  def self.show_report
    puts "Robots construidos al momento: #{@@constructed}"
    puts "Robots lanzados al momento: #{@@released}"
    puts "Robots vendidos al momento: #{@@selled}"
  end

  def show_info
    puts "Numero de serie: #{@serial_number}"
    puts "Nombre: #{@name}"
    if @released
      puts "Lanzado: Si"
    else
      puts "Lanzado: No"
    end
    if @buyed
      puts "Comprado por: #{@person.name}"
    else
      puts "Comprado por: Nadie"
    end
    if !@color.nil?
      puts "Color: #{@color}"
    end
  end



end
