require_relative "visitor"

class FullPriceVisitor < Visitor
  def visit(subject)
    puts("Product: #{subject.name} - $#{subject.price}")
    rescue NoMethodError
    puts("#{subject.class.name} do not have such argument")
  end
end

