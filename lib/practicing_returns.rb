def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  return collection
end

hello(["Tim", "Kade", "Leo"]) { |name| puts "Hey, #{name}." }
