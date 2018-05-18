class Dog
  attr_accessor :nombre
  def initialize(nombre)
    @nombre = nombre
  end
  def ladrar
    "#{@nombre} esta ladrando"
  end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
nombre = propiedades[:nombre]
puts Dog.new(nombre).ladrar
