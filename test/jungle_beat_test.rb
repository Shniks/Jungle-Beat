require './lib/jungle_beat'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class JungleBeatTest < Minitest::Test

  def test_if_it_exists
    jb = JungleBeat.new
    assert_instance_of JungleBeat, jb

  end

  def test_if_nil
    jb = JungleBeat.new
    assert_nil nil, jb.list.head
    assert_nil nil, jb.list
  end

  def test_if_appends
    jb = JungleBeat.new
    jb.append('deep doo ditt')
    assert_equal "deep doo ditt", jb.list.to_string
    assert_equal 3, jb.list.count
  end

  def test_head_data
    jb = JungleBeat.new
    jb.append('deep doo ditt')
    assert_equal "deep", jb.list.head.data
  end

  def test_next_node_data
    jb = JungleBeat.new
    jb.append('deep doo ditt')
    assert_equal "doo", jb.list.head.next_node.data
  end

  def test_additional_append
    jb = JungleBeat.new
    jb.append('deep doo ditt')
    jb.append('woo hoo shu')
    assert_equal "deep doo ditt woo hoo shu", jb.list.to_string
  end

  def test_count_after_append
    jb = JungleBeat.new
    jb.append('deep doo ditt')
    jb.append('woo hoo shu')
    assert_equal 6, jb.list.count
  end

  def test_if_it_plays
    jb = JungleBeat.new
    jb.append("I don't want a lot for christmas")
    jb.append("There is just one thing I need")
    jb.append("I don't care about the presents")
    jb.append("Underneath the Christmas Treeeeeeeeeeeeeeee")
    jb.append("I just want you for my own")
    jb.append("More than you could even know")
    jb.append("Make my wish come true hoo")
    jb.append("All I want for Christmas is youuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu hoooooooooooooooooooooooooooooooo")
    assert_equal 51, jb.list.count
    jb.play
  end

end
