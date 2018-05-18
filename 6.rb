class Product
	attr_reader :name
 def initialize(name, *tallas)
 @name = name
 @tallas = tallas.map(&:to_i)
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