# Stock Picker

def stock_picker(arr)
  buy = 0
  sell = 0
  profit = 0
  arr.each_with_index do |p, d|
    arr.each_with_index do |price, day|
      next unless (d - day).positive? and p - price > profit
      profit = p - price
      buy = day
      sell = d
    end
  end
  [buy, sell]
end

def print_stock_prices(arr)
  arr.each_with_index do |price, day|
    puts "Day #{day + 1}: $#{price}"
  end
end

def print_profit(arr, buy, sell)
  profit = arr[sell] - arr[buy]
  print "Buy stock on day #{buy + 1} for $#{arr[buy]} and sell it on day #{sell + 1} for $#{arr[sell]}"
  print " and make $#{profit} profit "
  print "\n"
end

stock_price = []
10.times { stock_price.push(rand(0..100)) }
stock_price[0] = 100
stock_price[9] = 0

stock_result = stock_picker(stock_price)

print_stock_prices(stock_price)
print_profit(stock_price, stock_result[0], stock_result[1])
