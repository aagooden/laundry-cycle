require "minitest/autorun"
require_relative "return_pairs.rb"

class Addition_test < Minitest::Test

	def test_boolean
		assert_equal(true, true)
	end

	def test_for_returned_array
		pairs = return_pairs()
		assert_equal(Array, pairs.class)
	end
end
	# def test_four_numbers
	# 	num1 = "1234"
	# 	num2 = "1234"
	# 	number = off_by_one(num1, num2)
	# 	assert_equal(4, number)