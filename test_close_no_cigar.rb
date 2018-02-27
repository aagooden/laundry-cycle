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

	def test_winner_three_digits_5_matches
		winner = "9876"
		num_array = ["9876", "1224", "1235", "5234", "1534", "1934", "0000"]
		number = full_match(winner, num_array)
		assert_equal(["9876"], number)
	end

	def test_number_of_winners_in_array
		winner = "9876"
		num_array = ["9876", "8876", "9876", "5234", "9876", "9874", "9876"]
		number = full_match(winner, num_array)
		assert_equal(4, number.length)
	end

	def test_winner_full_match_6_digits
		winner = "987654"
		num_array = ["987654", "1224", "1235", "523478", "1534", "1934", "000012"]
		number = full_match(winner, num_array)
		assert_equal(["987654"], number)
	end

	def test_winner_multiple_digits_one_off
		winner = "123456"
		num_array = ["123456", "122456", "123457", "5234", "1534", "1934", "0000", "12345", "1"]
		number = array_off_by_ones(winner, num_array)
		assert_equal(["122456", "123457"], number)
	end

end