require_relative "visitor"

class HalfPriceVisitor < Visitor
  def visit(subject)
    puts("Proudct: #{subject.name} - $#{subject.price / 2}")
    rescue NoMethodError
    puts("#{subject.class.name} do not have such argument")
  end
end

