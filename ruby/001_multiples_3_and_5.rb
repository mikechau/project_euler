#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

#Find the sum of all the multiples of 3 or 5 below 1000.

class ListMultiples

  def initialize(params = {})
    @initial_number = params[:number]
    @number = params[:number]
    @multiples = params[:multiples]
    @list_numbers = []
  end

  def decrease_number
    @number -= 1
  end

  def check_multiples
    @multiples.each do |m|
      if @number % m == 0 && @list_numbers.include?(@number) == false && @number < @initial_number
        @list_numbers << @number
      end
    end
  end

  def execute
    while @number > 0
      check_multiples
      decrease_number
    end
  end

  def print_list
    print "Multiples of #{@multiples} for [#{@initial_number}]: #{@list_numbers.reverse} \n"
  end

  def sum_list
    puts "Sum: #{@list_numbers.inject(0, :+)}"
  end
end

check = ListMultiples.new(:number => 10, :multiples => [3, 5])
check.execute
check.print_list
check.sum_list

puts "==="

check2 = ListMultiples.new(:number => 1000, :multiples =>[3, 5])
check2.execute
check2.print_list
check2.sum_list
