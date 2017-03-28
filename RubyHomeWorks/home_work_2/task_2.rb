# prime numbers to matrix
class Task2
  def initialize(number)
    @number = number
  end

  def prime
    primes = []
    (1..@number).each do |num|
      primes << num unless (2..num - 1).any? { |denom| num % denom <= 0 }
    end
    primes
  end

  def out(arr)
    matrix = []
    arr.size.times { matrix << arr }
    matrix.map! do |r|
      puts r.inspect
      tmp = r.shift
      r.push(tmp)
    end
    # p matrix
  end
end

obj = Task2.new(7)
obj.out(obj.prime)
