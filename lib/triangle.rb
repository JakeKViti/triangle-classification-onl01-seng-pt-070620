class Triangle
   attr_accessor :sone, :stwo, :sthree

  def initialize(sone, stwo, sthree)
  @sone = sone
  @stwo = stwo
  @sthree = sthree
  end

  class TriangleError < StandardError

  end
end
