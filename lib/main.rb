require_relative 'product'
require_relative 'order'
require_relative 'full_price_visitor'
require_relative 'half_price_visitor'

products = []

%w(laptop gopro snorkmask cell-phone).each do |pname|
  products.push(Product.new(pname, pname.bytes.sum))
end

ord = Order.new

products.each do |product|
  ord.add_product(product)
end

ord.accept(FullPriceVisitor.new)

puts("************************")

ord.accept(HalfPriceVisitor.new)

