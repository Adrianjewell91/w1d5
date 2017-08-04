class PolyTreeNode

  attr_writer :children

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

  def add_child(child)
    if child.is_a?(PolyTreeNode)
       @children << child
    end
  end

  def parent=(node)
    if node.is_a?(PolyTreeNode)      
      @parent = node #node.is_a?(PolyTreeNode) ? node : nil
      node.add_child(self)
    else
      puts "Please use a node."
    end
  end

end

## Test
if __FILE__ == $PROGRAM_NAME
  s1 = PolyTreeNode.new(1)
  # p s.value

  ####
  s2 = PolyTreeNode.new(5)
  s.parent = s2

  p s1
  p s2

  # s.parent = "dad" #should raise error
  # p s.parent #should not happens

end
