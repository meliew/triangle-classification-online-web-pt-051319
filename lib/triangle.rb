class Triangle

  attr_accessor :s1, :s2, :s3, :kind

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if (s1 * s2 * s3) == 0 || (s1 + s2) <= s3 || (s2 + s3) <= s1 || (s3 + s1) <= s2
    
        raise TriangleError
        puts error.message
      end


    elsif s1 == s2 && s1 == s3
      self.kind = :equilateral

    elsif s1 == s2 || s1 == s3 || s2 == s3
      self.kind = :isosceles

    else
      self.kind = :scalene
    end
  end
end


class TriangleError < StandardError
  def message
    puts "not a triangle"
  end

end




#   def initialize(side1, side2, side3)
#     @side1 = side1
#     @side2 = side2
#     @side3 = side3
#   end
#
#
#   def kind
#   # if (@side1 * @side2 * @side3) == 0 || (@side1 + @side2) <= @side3 || (@side2 + @side3) <= @side1
#     if (@side1 <= 0) || (@side2 <= 0) || (@side3 <= 0)
#       raise TriangleError
#
#     elsif (@side1+@side2 <= @side3) || (@side1+@side3 <= @side2) || (@side2+@side3 <= @side1)
#       raise TriangleError
#     elsif
#       @side1 == @side2 && @side1 == @side3
#       :equilateral
#     elsif
#       @side1 == @side2
#       :isosceles
#     elsif
#       @side2 == @side3
#        :isosceles
#      elsif
#        @side1 == @side3
#         :isosceles
#      elsif
#       @side1 != @side2
#       @side2 != @side3
#       @side1 != @side4
#       :scalene
#       end
#     end
# end
