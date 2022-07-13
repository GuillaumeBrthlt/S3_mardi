
def day_trader(array_of_prices)
  number_of_days = array_of_prices.length
  max_profit = 0
  for i in 0..number_of_days - 2
    for j in i + 1..number_of_days -1
        if max_profit < array_of_prices[j] - array_of_prices[i]
          max_profit = array_of_prices[j] - array_of_prices[i]
        best_array = [i, j]
      end
    end
  end
  return best_array
end