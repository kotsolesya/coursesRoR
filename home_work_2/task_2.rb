# prime numbers to matrix
class Task2
  def initialize(number)
    @number = number
  end

  def prime
    primes = []
    (2..@number).each do |num|
      primes << num unless (2..num - 1).any? { |denom| num % denom <= 0 }
    end
    primes
  end

  def out
    tmp = prime
    matrix = [prime]
    (tmp.size - 1).times do
      matrix << tmp.push(tmp.shift).clone
    end
    matrix.map { |el| p el }
  end
end

obj = Task2.new(7)
obj.out
