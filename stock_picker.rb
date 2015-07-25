########################################################################
# -stock_picker-
# Created on: July, 24th 2015
# created by: Anthony Renteria
# description: buy low sell high! takes in an array of stock prices
# for each day. Determines best day to buy and sell for max profit
########################################################################
def stock_picker(prices)
    #low_index is init with lower day and high_index days later in the week
    low_index = 0
    high_index = 1
    
    #day_low and day_high are used to print the days that had the highest profits differences
    day_low = 0
    day_high = 0
    
    #high_profit is init with price diff from the first two days
    high_profit = prices[high_index] - prices[low_index]
    
    #loops through each day of the week
    while low_index < prices.length do 
        
        while high_index < prices.length && high_index > low_index do
            
            #if price of day difference is higher than the current high_profit it becomes the new high_profit
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
    
    #prints days, prices and profit 
    puts "[" + day_low + "," + day_high + "]"
    print "$" + day_high_price.to_s +  " - $" + day_low_price.to_s + " = $" + high_profit.to_s + "\n"
end

stock_picker([17,3,6,9,15,8,6,1,10])

        
            