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

	def test_three_matches_miss_second_position
		num1 = "1134"
		num2 = "1234"
		number = off_by_one(num1, num2)
		assert_equal(3, number)
	end

	def test_winner_three_digits_2_matches
		winner = "1234"
		num_array = ["1234", "1224", "1235"]
		number = array_off_by_ones(winner, num_array)
		assert_equal(2, number.length)
	end

	def test_winner_three_digits_match_returned_array
		winner = "1234"
		num_array = ["1234", "1224", "1235", "5234"]
		number = array_off_by_ones(winner, num_array)
		assert_equal(3, number.length)
	end

	def test_winner_three_digits_3_matches
		winner = "1234"
		num_array = ["1234", "1224", "1235", "5234"]
		number = array_off_by_ones(winner, num_array)
		assert_equal(["1224", "1235", "5234"], number)
	end

	def test_winner_three_digits_5_matches
		winner = "1234"
		num_array = ["1234", "1224", "1235", "5234", "1534", "1934", "0000"]
		number = array_off_by_ones(winner, num_array)
		assert_equal(["1224", "1235", "5234", "1534", "1934"], number)
	end

end