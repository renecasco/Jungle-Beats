require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/linked_list'
require './lib/node'

class LinkedListTest < Minitest::Test
  def test_it_exists
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_head_is_initialized_nil
    list = LinkedList.new
    assert_nil list.head
  end

  def test_it_appends_node
    list = LinkedList.new
    list.append("doop")

    assert_equal "doop", list.head.data
    assert_nil  list.head.next_node
  end

  def test_it_counts_elements_in_list
    list = LinkedList.new
    list.append("doop")

    assert_equal 1, list.count
  end
end
