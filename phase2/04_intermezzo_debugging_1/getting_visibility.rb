def factorial(n)
  product = 1
  p "at the start product is #{product}"
  while n > 0
    n -= 1
    p "we multiply #{product} by #{n}"
    product *= n
    p "we get #{product}"
  end
  product
end

factorial(5)

