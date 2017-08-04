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

  def add_child(child)
    @children << child unless @children.include?(child)
  end

  def remove_child(child)
    @children.delete(child) #if @children.include?(child)
  end

  def parent=(node)
    # @parent = node.is_a?(PolyTreeNode) ? node : raise
    if node.is_a?(PolyTreeNode)
      @parent.remove_child(self) if @parent 
      @parent = node
      node.add_child(self)
    elsif !node
      @parent.remove_child(self)
      @parent = nil
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
