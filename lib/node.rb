require_relative 'reporter'

class Node
  extend Reporter

  def initialize(element)
    @element = element
    @next = nil
  end

  track def element
    @element
  end

  track def element=(new_element)
    @element = new_element
  end

  track def next
    @next
  end

  track def next=(next_node)
    @next = next_node
  end
end
