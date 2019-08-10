require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/node'

class NodeTest < Minitest::Test

  def test_it_exists
    node = Node.new("plop")
    assert_instance_of Node, node
  end
end
