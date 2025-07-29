class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    sum = 0
    delimiter = /,|\n/

    # Extracting the numbers and delimiter if given
    if numbers.start_with?("//")
      delimiter, numbers = numbers.split("\n", 2)
      delimiter = delimiter[2..-1]
    end

    # Splitting numbers string by the delimiter
    num_arr = numbers.split(delimiter)

    negative_numbers = []

    num_arr.each do |num|
      num = num.to_i

      # Collecting all negatives
      negative_numbers << num if num < 0

      sum += num
    end

    # If there are negative numbers, raise an exception
    unless negative_numbers.empty?
      raise "negative numbers not allowed (#{negative_numbers.join(', ')})"
    end

    sum
  end
end