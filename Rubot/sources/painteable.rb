module Painteable

  def paint
    number = Random.rand(3)
    if number == 0
      @color = "Rojo"
    elsif number == 1
      @color = "Azul"
    else
      @color = "Amarillo"
    end
  end

end
