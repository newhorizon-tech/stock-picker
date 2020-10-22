# Stock Picker

def stock_picker(arr)
  buy=0
  sell=0
  profit=0
  arr.each_with_index do |p, d|
    arr.each_with_index do |price, day|
        if (d - day).positive? and p - price > profit
          profit = p - price
          buy = day
          sell = d
          puts "buy #{buy}: sell #{sell} and profit is #{profit}"
        end
    end
  end
  puts "Buy stock on day #{buy} for $#{arr[buy]} and sell it on day #{sell} for $#{arr[sell]} and make $#{profit} profit "
end

stock_price=[]
6.times { stock_price.push(rand(0..100)) }
p stock_price
stock_picker(stock_price)
