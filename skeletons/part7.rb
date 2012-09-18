class CartesianProduct
  include Enumerable
  
  def initialize(left, right)
    @left = left
    @right = right
  end
  
  def each
    @left.each do |leftElem|
      @right.each do |rightElem|
        yield [leftElem, rightElem]
      end
    end
  end
end
