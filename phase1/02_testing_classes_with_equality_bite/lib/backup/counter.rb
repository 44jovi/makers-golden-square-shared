# 17 Aug 2022
# Navigator: Jovi
# Driver: Jovi

class Counter
  def initialize
    @count = 0
  end

  def add(num)
    @count += num
  end

  def report
    return "Counted to #{@count} so far."
  end
end
