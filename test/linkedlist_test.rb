require "./lib/linked_list"
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'


class LinkedListTest < Minitest::Test

def test_if_it_exists
  list = LinkedList.new
  assert_instance_of LinkedList, list
end

def test_head_returns_nil
  list = LinkedList.new
  assert_nil nil, list.head
end

def test_list_append
  list = LinkedList.new
  list.append('doop')
  list.append('deep')
  list.append('huh')
  assert_equal "doop deep huh", list.to_string
  assert_nil list.head.next_node.next_node.next_node
end

def test_it_can_count
  list = LinkedList.new
  list.append('doop')
  list.append('deep')
  list.append('huh')
  list.append('plop')
  assert_equal 4, list.count
end

def test_converts_list_to_string
  list = LinkedList.new
  list.append('doop')
  list.append('deep')
  list.append('plop')
  list.append('suu')
  assert_equal 'doop deep plop suu', list.to_string
end

def test_list_prepend
  list = LinkedList.new
  list.append('plop')
  list.append('suu')
  list.append('meow')
  list.prepend('dow')
  list.append('blotch')
  list.prepend('grrf')
  assert_equal "grrf dow plop suu meow blotch", list.to_string
  assert_nil nil, list.head.data
end

def test_inserts_into_list
  list = LinkedList.new
  list.append('plop')
  list.append('suu')
  list.append('meow')
  list.append('blotch')
  list.append('grrf')
  list.insert(4, "woo")
  assert_equal "plop suu meow blotch woo grrf", list.to_string
end

def test_finds_snips
  list = LinkedList.new
  list.append('plop')
  list.append('suu')
  list.append('meow')
  list.append('blotch')
  list.append('grrf')
  list.find(1, 3)
  assert_equal "suu meow blotch", list.find(1, 3)
end

def test_includes_lyric?
  list = LinkedList.new
  list.append('plop')
  list.append('suu')
  list.append('meow')
  list.append('blotch')
  list.append('grrf')
  assert list.includes?('plop')
  refute list.includes?('arf')
end

def test_does_it_pop
  list = LinkedList.new
  list.append('suu')
  list.append('meow')
  list.append('blotch')
  list.append('grrf')
  assert_equal "suu meow blotch grrf", list.to_string
  assert_equal 4, list.count
  assert_equal "grrf", list.pop
  assert_equal "suu meow blotch", list.to_string
  assert_equal 3, list.count
end


end
