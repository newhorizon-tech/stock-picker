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
  print "\n"
  puts '★ Stock Market'
  arr.each_with_index do |price, day|
    puts "Day #{day + 1}: $#{price}"
  end
end

def print_profit(arr, buy, sell)
  print "\n"
  puts '★ Stock Market Advice'
  profit = arr[sell] - arr[buy]
  print "Buy stock on day #{buy + 1} for $#{arr[buy]} and sell it on day #{sell + 1} for $#{arr[sell]}"
  print " and make $#{profit} profit "
  print "\n"
end

def random_stockmarket_generator()
  print "\n"
  puts '★ Random Stock Market Generator'
  print 'Number of days? '
  days = gets.chomp.to_i
  print 'Minimum Stock Price? '
  min = gets.chomp.to_i
  print 'Maximum Stock Price? '
  max = gets.chomp.to_i
  generated_market = []
  days.times { generated_market.push(rand(min..max)) }
  generated_market
end

stock_price = random_stockmarket_generator

stock_result = stock_picker(stock_price)
print_stock_prices(stock_price)
print_profit(stock_price, stock_result[0], stock_result[1])
