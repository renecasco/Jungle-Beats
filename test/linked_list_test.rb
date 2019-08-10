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

    list.append("deep")

    assert_equal "deep", list.tail.data
  end

  def test_it_counts_elements_in_list
    list = LinkedList.new
    assert_equal 0, list.count

    list.append("doop")
    assert_equal 1, list.count

    list.append("deep")
    assert_equal 2, list.count
  end

  def test_it_returns_string_of_all_elements
    list = LinkedList.new
    assert_equal "", list.to_string

    list.append("doop")
    assert_equal "doop", list.to_string

    list.append("deep")
    assert_equal "doop deep", list.to_string
  end

  def test_prepend_adds_to_front_of_list
    list = LinkedList.new
    list.append("plop")

    assert_equal "plop", list.to_string

    list.append("suu")
    list.prepend("dop")

    assert_equal "dop plop suu", list.to_string
    assert_equal 3, list.count
  end

  def test_it_inserts_node_at_a_position
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")

    assert_equal "dop woo plop suu", list.to_string
  end
end
