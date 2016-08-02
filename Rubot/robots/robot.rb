class Robot
  @@constructed = 0
  @@released = 0
  @@selled = 0
  def initialize(name)
    @name = name
    @released = false
    @buyed = false
    @@constructed += 1
    @serial_number = Random.rand(000001..999999)
  end

  def release!
    @released = true
    @@released += 1
  end

  def buy!(person)
    @person = person
    if @released == true && @buyed == false
      @buyed = true
      puts "El robot #{@name} fue comprador por #{@person.name} #{@person.lastname}"
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
    show_status
    show_color
  end

  private

  def show_status
    if @released
      if @buyed
        puts "Estado: Comprador por #{@person.name} #{@person.lastname}"
      else
        puts "Estado: Lanzado"
      end
    else
      puts "Estado: Construido"
    end
  end

  def show_color
    unless @color.nil?
      puts "Color: #{@color}"
    else
      puts "Color: No aplica"
    end
  end
end
