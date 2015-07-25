def stock_picker(prices)
    low_index = 0
    high_index = 1
    day_low = 0
    day_high = 0
    high_profit = prices[high_index] - prices[low_index]
    
    while low_index < prices.length do 
        while high_index < prices.length && high_index > low_index do
            if (prices[high_index]-prices[low_index]) > high_profit
                high_profit = prices[high_index]- prices[low_index]
                day_low = low_index.to_s
                day_high = high_index.to_s
                day_low_price = prices[low_index]
                day_high_price = prices[high_index]
            end
            high_index = high_index + 1
        end
       low_index = low_index + 1
        high_index = low_index + 1
    end
    puts "[" + day_low + "," + day_high + "]"
    print "$" + day_high_price.to_s +  " - $" + day_low_price.to_s + " = $" + high_profit.to_s + "\n"
end

stock_picker([17,3,6,9,15,8,6,1,10])

        
            