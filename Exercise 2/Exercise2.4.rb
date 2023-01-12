sentence= "Hello, John Doe!"
puts sentence.sub!("Hello", "Hi")

solution = "Hi, John Doe!".match?(sentence)
puts solution
