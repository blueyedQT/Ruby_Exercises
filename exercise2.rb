# Strings Video
=begin
	x = "CodingDojo"

	puts x
	puts x.length
	puts x.class
	puts x.capitalize
	puts x.upcase
	puts x.downcase
	puts x[2]
	puts x.include?("Dojo") #Case sensitive
	puts "This word has the word 'Dojo'" if x.include? "Dojo"

	x = "john, charles, matt, joe"
	y = ""

	puts x.split(",")
	puts x.split(",").to_s
	puts "Y is empty" if y.empty?
=end

# Arrays Video
=begin
	a = ["Matz", "Guido", "Dojo", "Choi", "John"]
	b = [5,6,9,3,1,2,4,7,8,10]
	c = ["Dojo", 9]

	a = %w{Matz Guido Dojo Choi John}
	puts a[0]
	puts a[4]
	puts a+b
	x = a+b
	puts x.to_s
	x = (a+b)-c
	puts x.to_s

	puts b.class
	puts a.shuffle
	puts a.shuffle.join(', ')
	a.delete("Choi")
	puts a
	puts "Length of a is #{a.length}"

	puts a.at(0)
	puts a.fetch(0)
	puts a.reverse
	puts a.sort
	puts a.slice(1)
	a.insert(2, "Katrina")
	puts a
	puts a.values_at(0,2).join(' and ')
=end

# Range Video
=begin
	x = (1..5)

	puts "Class Name: #{x.class}"
	puts "It does include 3!" if x.include? 3
	puts "The last number of this range is " + x.last.to_s
	puts "The maximum number of this range is " + x.max.to_s
	puts "The minimum number of of this range is " + x.min.to_s

	y = ('a'..'z')
	puts y.to_a.shuffle.to_s

	puts x.to_a.member?(3)
=end

# Hashes Video
=begin 
	x = {"first_name" => "Coding", "last_name" => "Dojo"}

	puts x["first_name"], x["last_name"]
	puts "Your last name is Dojo" if x["last_name"].eql? "Dojo"

	y = {:first_name => "Coding", :last_name => "Dojo"}
	puts "Y is ", y
	puts y[:first_name], y[:last_name]

	puts "DELETING :first_name"
	y.delete :first_name
	puts "Y is now", y

	if y.has_key? :first_name
		puts "Y has a key called :first_name"
	else
		puts "Y does not have a key called :first_name"
	end

	if y.has_value? "Dojo"
		puts "Y has a value called Dojo"
	else
		puts "Y does NOT have a value called Dojo"
	end

	puts y.empty?
=end

# Blocks Video

	# def test
	# 	puts "You are in the method"
	# 	yield
	# 	puts "You are again back to the method"
	# 	yield
	# end
	# test { puts "You are in the block" }

	# def test
	# 	yield(5)
	# 	puts "You are in the method test"
	# 	yield(100)
	# end
	# test {|i| puts "You are in the block #{i}"}

	# def square(num)
	# 	puts "num is #{num}"
	# 	puts "yield(num) has a value of #{yield(num)}"
	# end

	def square(num)
		puts "num is #{num}"
		x = yield(num)
		puts "x has a value of #{x}"
		y = yield(num)*x
		puts "y has a value of #{y}"
	end

	square(5) { |i| i*i }

	# square(5) do |i|
	# 	i*i
	# end
