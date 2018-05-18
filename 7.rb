class Product
	attr_reader :name
	attr_reader :tallas
 def initialize(name, *tallas, xs)
 @name = name
 @tallas = tallas.map(&:to_i)
 end
 def tallass
 	tallass << talla
 end	
 def promedio
 @tallas.inject(&:+) / @tallas.size
 end
end
products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
 ls = prod.split(', ')
 products_list << Product.new(*ls)
end

products_list.each do |x|
	puts x.name
	puts x.promedio
end

file = File.open('catalogo_nuevo.txt', 'w')
products_list.each do |x|
file.puts "#{x.name} #{x.tallas}"
end
file.close