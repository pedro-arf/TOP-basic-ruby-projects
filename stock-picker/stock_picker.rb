module StockPicker
  def self.picker(stock)
    sell = stock.drop(1).max
    when_to_sell = stock.index(sell)
    when_to_buy = 0
    buy = stock[0]
    profit = sell - buy

    stock.each_with_index do |price, index|
      next unless profit < sell - price && index < when_to_sell

      buy = price
      profit = sell - buy
      when_to_buy = index
    end
    [when_to_buy, when_to_sell]
  end
end
