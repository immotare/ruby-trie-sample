require_relative 'trie'

tri = Trie.new

tri.set_value('abc', 3)
puts tri.get_value('abc')
puts tri.exist_key?('a')