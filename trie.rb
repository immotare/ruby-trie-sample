require_relative 'node'

class Trie
  def initialize
    @root = Node.new(nil)
  end

  def set_value(key, value)
    current_node = @root
    key.each_char do |c|
      if current_node.get_next_node(c).nil?
        next_node = Node.new(nil)
        current_node.set_next_node(c, next_node)
        current_node = next_node
      else
        current_node = current_node.get_next_node(c)
      end
    end
    current_node.value = value
  end

  def get_value(key)
    current_node = @root
    key.each_char do |c|
      return nil if current_node.get_next_node(c).nil?

      current_node = current_node.get_next_node(c)
    end
    current_node.value
  end

  def exist_key?(key)
    current_node = @root
    key.each_char do |c|
      return false if current_node.get_next_node(c).nil?

      current_node = current_node.get_next_node(c)
    end
    current_node.has_own_value
  end
end