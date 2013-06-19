class EvenFibonacci

  attr_reader :fib_seq

  def initialize(num)
    @num = num
    @fib_seq = [1, 2]
  end

  def sequencer
    @num.times do 
      @fib_seq << @fib_seq[-1] + @fib_seq[-2]
    end
  end

  def print_evens
    print "#{@fib_seq.select{ |f| f if f % 2 == 0}} \n"
  end

  def execute
    sequencer
    print_evens
  end

end

fibs = EvenFibonacci.new(10)
fibs.execute

fibs2 = EvenFibonacci.new(399)
fibs2.execute
