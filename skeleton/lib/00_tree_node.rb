class PolyTreeNode

  attr_writer :children

  def initialize(value = nil)
    @value = value
    @parent = nil
    @children = []
  end

  def parent
    @parent
  end

  def children
    @children
  end

  def value
    @value
  end

  def parent=(node)
    if @parent
      @parent.children.delete(self)
    end

    @parent = node
    if node && !node.children.include?(self)
      node.children << self
    end
  end

end

## Test
if __FILE__ == $PROGRAM_NAME
  s1 = PolyTreeNode.new(1)
  # p s.value

  ####
  s2 = PolyTreeNode.new(5)
  s1.parent = s2

  p s1
  p s2

  s1.parent = "dad" #should raise error
  p s1.parent #should not happens

end
