
class TriangleError < StandardError
  def message
    "Triangle is invalid"
  end
end

class Triangle < TriangleError

  attr_reader :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a + b <= c || b + c <= a || a + c <= b || a <= 0 || b <= 0 || c <= 0
      begin
       raise TriangleError
      end
    elsif a == b && b == c && a == c
      :equilateral
    elsif a != b && b != c && a != c
      :scalene
    else
      :isosceles
    end
  end

end
