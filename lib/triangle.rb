class Triangle
   attr_accessor :sone, :stwo, :sthree, :equilateral, :isosceles, :scalene

  def initialize(sone, stwo, sthree)
  @sone = sone
  @stwo = stwo
  @sthree = sthree
  end

  def self.kind
    if @sone == @stwo && @sone == @sthree && @stwo == @sthree
      :equilateral
    elsif @sone == @stwo || @sone == @sthree || @stwo == @sthree
       :isosceles
    elsif @sone != @stwo && @sone != @sthree && @stwo != @sthree
      :scalene
  end

  class TriangleError < StandardError

  end
end
