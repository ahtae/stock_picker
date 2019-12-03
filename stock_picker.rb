def stock_picker(prices)
	days = [0, 0]

	prices.each_with_index do |price1, idx1|
		prices.each_with_index do |price2, idx2|
			first_day_price = prices[days[0]]
			last_day_price = prices[days[1]]

			days[0], days[1] = idx1, idx2 if (idx2 > idx1) && (last_day_price - first_day_price <  price2 - price1)
		end
	end
	days
end

p stock_picker([17,3,6,9,15,8,6,1,10])
