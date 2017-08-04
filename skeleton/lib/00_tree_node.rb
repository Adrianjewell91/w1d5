class PolyTreeNode

  def initialize(value = nil)
    @value = value
    @parent = nil
    @children = []
  end

  def parent
    @parent.dup
  end

  def children
    @children.dup
  end

  def value
    @value
  end

  # def parent=
  #
  # end

end

## Test
if __FILE__ == $PROGRAM_NAME
  s = PolyTreeNode.new(1)
  p s.value
  s.value = 2
  p s.value
end
