require 'pry'
def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  binding.pry
  return collection
end

hello(["Tim", "Kade", "Leo"]) { |name| "Hey, #{name}." }
