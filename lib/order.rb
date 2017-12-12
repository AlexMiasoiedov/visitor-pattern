require_relative "visitable"

class Order
  include Visitable

  attr_reader :products

  def initialize
    @products = []
  end

  def add_product(product)
    @products.push(product)
  end

  def accept(visitor)
    @products.each do |product|
      product.accept(visitor)
    end
  end
end

