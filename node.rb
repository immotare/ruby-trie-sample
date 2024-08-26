class Node
  attr_reader :has_own_value, :value

  def initialize(value, next_node = {})
    @value = value
    @has_own_value = false
    @next_node = next_node
  end

  def set_next_node(char, node)
    raise RuntimeError('expect char but receive string') if char.length != 1

    @next_node[char] = node
  end

  def get_next_node(char)
    raise RuntimeError('expect char but receive string') if char.length != 1

    @next_node[char]
  end

  def value=(value)
    @value = value
    @has_own_value = true
  end

  def delete_value
    @value = nil
    @has_own_value = false
  end
end
