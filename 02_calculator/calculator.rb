#write your code here
def add operand1, operand2
  return operand1 + operand2
end

def subtract operand1, operand2
  return operand1 - operand2
end

def sum arrayToSum
  sum = 0
  arrayToSum.each do |operand|
    sum = sum + operand
  end
  return sum
end

def multiply *multiplicants
  sum = 1
  multiplicants.each do |multiplicant|
    sum = sum * multiplicant
  end
  return sum
end

def  power operand, exponent
  return operand**exponent
end

def factorial number
  if number == 0 or number == 1
    return number
  end
  result = 1
  i = number
  while i >= 2 do
    result = result * i
    i = i - 1
  end
  return result
end
