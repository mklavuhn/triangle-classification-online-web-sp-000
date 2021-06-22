class Triangle
  
  attr_accessor :lengths
  
  @lengths = []
  
  def initialize(length_one:, length_two:, length_three:)
    @lengths = [length_one, length_two, length_three]
  end
  
  
  def kind 
    if @sides.any?{|side| side <= 0} || ((@sides[0] + @sides[1]) <= @sides[2])
      raise TriangleError
    elsif @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end
  
  
  
  
end
