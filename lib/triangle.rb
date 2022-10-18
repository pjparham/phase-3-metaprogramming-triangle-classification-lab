require 'pry'
class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize (side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if self.has_size? && self.equality?
      if side1 == side2 && side2 == side3 && side1 == side3
        :equilateral
      elsif side1 == side2 || side2 == side3 || side1 == side3
        :isosceles
      elsif side1 != side2 && side2 != side3 && side1 != side3
        :scalene
      end
    else
      raise TriangleError
    end
  end


  def has_size?
   if side1 > 0 && side2 > 0 && side3 > 0 
      true
    else
      false
    end 
  end

  def equality?
    if side1 + side2 > side3 && side2 + side3 > side1 && side1 + side3 > side2
      true
    else 
      false
    end
  end


  class TriangleError < StandardError
  end

end


