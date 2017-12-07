require "./lib/node"
require 'minitest/autorun'
require 'minitest/pride'


class NodeTest < Minitest::Test


  def test_node_return_data
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_node_initializes_with_nil_next_node
    node = Node.new("plop")
    assert_nil nil, node.next_node
  end

end
