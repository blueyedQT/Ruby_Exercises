# Code from first video
# just exercise
=begin
	long comment
	another comment
	another comment
=end
=begin 
	puts "hello"
	puts "Coding"
	puts "Dojo"

	print "hello"
	print "Coding"

	BEGIN {
		puts "this is in the begin block"
	}

	END {
		puts "this is in the end block"
	}
=end

# Code from second video
=begin
	# x = 5; y = 10; z = x+y
	# puts z

	# first_name = "Katrina"
	# last_name = "Sanford"

	# puts "Your name is "+first_name+" "+last_name
	# puts "First name is #{first_name} and last name is #{last_name}"
	# puts "First name is %s and last name is %s" % [first_name, last_name]

	# z = 50
	# puts "Value of z is #{z}"
	# puts "Value of z is %d" % [z]
	# puts "Value of z is %d" % z

	# puts "\t\tI am\n 5'8\" tall"
=end

# Code from third video
=begin
	class CodingDojo
		@@no_of_branches = 0
		def initialize(id, name, address)
			@branch_id = id
			@branch_name = name
			@branch_address = address
			@@no_of_branches += 1
			puts "\nCreated branch #{@@no_of_branches}"
		end
		def hello
			puts "Hello CodingDojo!"
		end
		def displayAll
			puts "Branch Id: %d" % @branch_id
			puts "Branch Name: %s" % @branch_name
			puts "Branch Address: %s" % @branch_address
		end
	end
	x=5
	branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA")
	branch.displayAll
	branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA")
	branch2.displayAll

	def test(a1="Ruby", a2="Pearl")
		puts "The programming language is #{a1}"
		puts "The programming lauguage is #{a2}"
	end
	test "C", "C++"
	test

	class Heart
		def public_method
		end

		protected
		def protected_method
		end
		def protected_method2	
		end

		private
		def private_method
		end
		def private_method2
		end
	end

	class MyClass
		def self.some_method
			puts "Something"
		end
	end
	MyClass.some_method

	class ParentClass
		def a_method
			puts "b"
		end
	end
	class SomeClass < ParentClass
		def another_method
			puts "a"
		end
	end
	instance = SomeClass.new
	instance.another_method
	instance.a_method
=end

# Code from fifth video (fourth did not have any really)
=begin
	x = 5
	if x > 2
		puts "x is greater than 2"
	elsif x < 2 and x > 0
		puts "x is 1"
	else
		puts "I can't guess the number"
	end

	x = 2
	puts "x is not 2" if x != 2
	puts "x is greater than 2" if x > 2
	puts "x is not 2" unless x==2

	age = 5
	case age
	when 0..2
		puts "baby"
	when 3..6
		puts "little child"
	when 7..12
		puts "child"
	when 13..18
		puts "youth"
	else
		puts "adult"
	end
=end

#Code from the sixth video
$i = 0
$num = 5
begin 
	puts("Inside the loop i = #{$i}")
	puts "$i is 3" if $i==3
	puts "$i is not 3" unless $i==3
	$i += 1
end while $i < $num

for i in 0..5
	puts "Value of local variable is #{i}"
	puts "i is now 3!!!" if i==3
end

i = 0
num = 5
while i < num do 
	puts "Inside the loop i = #{i}"
	i += 1
end