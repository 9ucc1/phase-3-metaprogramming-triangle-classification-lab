require 'pry'
class Triangle
  attr_accessor :one, :two, :three
  def initialize(one, two, three)
    @one=one
    @two=two
    @three=three
  end

  class TriangleError < StandardError
  end

  def kind

    def invalid?
      if one<=0 
        true
      elsif two<=0 
        true
      elsif three<=0
        true
      elsif one+two<=three
        true
      elsif two+three<=one
        true
      elsif one+three<=two
        true
      else false
      end
    end

    if self.invalid?
      raise TriangleError
    elsif one==two && two==three
      :equilateral
    elsif one==two || two==three || three==one
      :isosceles
    elsif one!=two && two!=three && three!=one
      :scalene
    end
  end
  #binding.pry
end
