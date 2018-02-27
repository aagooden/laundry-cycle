require "minitest/autorun"
require_relative "close_no_cigar.rb"

class Addition_test < Minitest::Test

	def test_boolean
		assert_equal(true, true)
	end


	def test_integer
		num1 = "1"
		num2 = "1"
		number = off_by_one(num1, num2)
		assert_equal(1, number)
	end

	def test_four_numbers
		num1 = "1234"
		num2 = "1234"
		number = off_by_one(num1, num2)
		assert_equal(4, number)
	end

	def test_two_matches
		num1 = "2459"
		num2 = "2468"
		number = off_by_one(num1, num2)
		assert_equal(2, number)
	end

	def test_three_matches
		num1 = "1235"
		num2 = "1234"
		number = off_by_one(num1, num2)
		assert_equal(3, number)
	end

	# def test_one_matches_one
	# 	x = "1"
	# 	y = "1"
	# 	number_test = off_by_one(num1, num2)
	# 	assert_equal(true, number_test)
	# end

end