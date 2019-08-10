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
end
