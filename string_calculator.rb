class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    sum = 0
    # Splitting by commas or newlines
    num_arr = numbers.split(/,|\n/)

    # Convert into intergers and check for negative number and if not adds up
    num_arr.each do |num|
      if num.to_i < 0
        raise "negative numbers not allowed #{num.to_i}"
      end
      sum += num.to_i
    end

    sum
  end
end