require "minitest/autorun"
require_relative "add.rb"



class Addition_test < Minitest::Test
	def test_1_equals_1
		assert_equal(1, 1)
	end

	def test_1_not_equals_1
		#assert_equal(1, "2")
	end

	def test_2_equals_2
		assert_equal(2, addition(1,1))
	end

	def test_5_equals_3_plus_2
		assert_equal(5, addition(3,2))
	end

	def test_2_equals_5_minus_3
		assert_equal(2, subtraction(5,3))
	end

	def test_10_equals_5_times_2
		assert_equal(10, multiplication(5,2))
	end

	def test_20_divided_by_10_equals_2
		assert_equal(2, division(20,10))
	end


end
