class Triangle
   attr_accessor :sone, :stwo, :sthree, :equilateral, :isosceles, :scalene

  def initialize(sone, stwo, sthree)
  @sone = sone
  @stwo = stwo
  @sthree = sthree
  end

  def kind()
    if @sone <= 0 || @stwo <= 0 || @sthree <= 0
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end


    if @sone == @stwo && @sone == @sthree && @stwo == @sthree
      :equilateral
    elsif @sone == @stwo || @sone == @sthree || @stwo == @sthree
      :isosceles
    elsif @sone != @stwo && @sone != @sthree && @stwo != @sthree
      :scalene
  end
  end

  def

  class TriangleError < StandardError
    def message
      "There is a side too small!"
    end
  end
end
