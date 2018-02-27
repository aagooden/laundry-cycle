class Order
	def initialize(name)
		@name = name
	end

	def order_amount(add)
		@order_amount = @order_amount + add
	end


end


class Menu
	attr_accessor :order_items, :piz_crusts, :piz_meat, :piz_veggies, :piz_sauces, :piz_special_tops, :piz_sizes,
					:sub_breads, :sub_sizes, :sub_types, :drink_sizes, :drink_types, :side_types, :desserts

	def initialize()
		@order_items = [["Pizza", 0], ["Sub", 0], ["Side", 0], ["Drink", 0], ["Dessert", 0]]
		@piz_crusts = [["Thick", 0], ["Thin", 0], ["Regular", 0], ["Stuffed", 2]]
		@piz_meat = [["Pepperoni", 2], ["Sausage", 2], ["Ham", 2], ["Chicken", 2], ["None", 0]]
		@piz_veggies = [["Peppers", 1], ["Onions", 1], ["Mushrooms", 1], ["Olives", 1], ["None", 1]]
		@piz_sauces = [["Tomato", 0], ["Alfredo", 0], ["Spicy", 0], ["None", 0]],
		@piz_special_tops = [["Anchovies", 1], ["Pineapple", 1], ["Bacon", 1], ["Extra Cheese", 1], ["None", 0]]
		@piz_sizes = [["Small", 10], ["Medium", 12], ["Large", 15], ["Extra Large", 18]]
		@sub_breads = [["White", 0], ["Whole Wheat", 0], ["Itallian", 0], ["Herb", 0]]
		@sub_sizes = [["6 Inch", 6], ["Foot Long", 10], ["Good Grief", 15]]
		@sub_types = [["Chicken", 0], ["Meatball", 0], ["Itallian", 0], ["Dagwood", 0]]
		@drink_sizes = [["Small", 2.5], ["Medium", 3], ["Large", 4], ["Extra Large", 6]]
		@drink_types = [["Coke", 0], ["Diet Coke", 0], ["Sprite", 0], ["Dr. Pepper", 0]]
		@side_types = [["Fries", 4], ["Onion Rings", 6], ["Potato Chips", 3]]
		@desserts = [["Chocolate Cake", 2], ["Pudding", 1.5], ["Chocolate Chip Cookie", 1]]
	end

	def show_menu()
		@order_items
	end



end

puts order_items.show_menu