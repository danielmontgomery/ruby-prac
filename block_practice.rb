#ENUMERABLE


#**TODO ENTER CODE**
# * Output all the methods of the Enumerable class to the console


puts Enumerable.methods



# **TODO ENTER CODE **
# * create a class called Persons that hand rolls an 'each' iterator method, inside of which you
#   define some names, the each method will allow you to iterate over these
#   This means that the class you create...say Person... will respond to Person.each.
# * use a normal each loop to iterate over the class and output the names to the console.



class Persons

	def self.each(*people)
		people.each{|person| puts "#{person}"}
	end

	# you can also define names as
	@names = ["Donald", "Mickey", "Mouse", "Aaron", "Alicia", "Mark", "Bob", "Zach Danger Brown"]
	def self.name_method
		puts "============================"
		puts "here's your names:"
		puts @names.each {|x| print x, ", " }
	end

	def self.start_with_a
		puts "=============="
		puts "The following names start with 'A':"
		puts @names.select {|x| x[0] == ?A }
	end

	def self.is_bob_here
		puts "=============="
		puts "Is bob around?"
		if @names.include?("Bob")
			puts "Bob is around!"
		else
			puts "Bob isn't here"
		end
		puts "=============="
	end

	def self.spaces
		if @names.include(" ")
			puts "I'm still working on this one. It should print the name of the person with a space or two in their name."
		end
		puts "=============="
	end
end
puts "==============  Starting output  =============="
Persons.each "Joe", "Jim", "Jack", "John", "Randy", "Whatever name you want"


Persons.name_method




 

# **TODO ENTER CODE**
# * Find a name starting with 'a', you will need to include the Enumerable module into Persons, make sure you have a name
#   starting with 'a'

Persons.start_with_a




# **TODO ENTER CODE**
# * Check if 'bob' is included in your names


Persons.is_bob_here


# **TODO ENTER CODE**
#Search for if there is one name that has a space in it




Persons.spaces




# **TODO ENTER CODE**
# * Create an array of numbers 1-10
# * Search an array to find all matches for numbers greater than 5










# **TODO ENTER CODE**
# * Do the opposite as above, using the exact same block, but a different method, return all numbers that are less
#   than 5










# **TODO ENTER CODE**
# * Create an array of colors: red, orange, yellow,green,violet,indigo
# * Using a regex search the array to see which entries contain 'o'


