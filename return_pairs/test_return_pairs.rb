require "minitest/autorun"
require_relative "return_pairs.rb"

class Addition_test < Minitest::Test

	def test_boolean
		assert_equal(true, true)
	end

	def test_for_returned_array
		pairs = return_pairs(["Fred", "Wilma"])
		assert_equal(Array, pairs.class)
	end

	def test_for_returning_one_pair_when_sent_two_names
		pairs = return_pairs(["Betty", "Boop"])
		assert_equal(pairs.length, 1)
	end

	def test_for_returning_two_pairs_in_nested_arrays_when_sending_four_names
		pairs = return_pairs(["Jack", "Jill", "Bob", "Builder"])
		assert_equal(pairs[0].length, 2)
		assert_equal(pairs[1].length, 2)
	end

	def test_for_randomness
		random = shuffle(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"])
		if random != ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
			condition = true
		end
		assert_equal(condition, true)
	end

end
