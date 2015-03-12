##Create an Empty class named 'Person'

class Person

end







##Define three properties on that class 'name','age','birthdate'






class Person
  attr_accessor :name, :age, :birthdate
end














##Define 'methods' that allow you to access and set all three of those properties, Do not use attribute accessor
=begin

#attr_accessor is used above but not specifically in this step, can I use it here?

def name
  @name
end




=end



##Explain what calling Person.new does
=begin

Person.new instantiates a new object instance. 






=end




##Create an initializer method that allows you do Person.new 'Amy Smith' , which initializes the  Person's name property




person = Person.new
person.name = "Amy Smith" #assuming we've got name as defined on line 43.






##Write a method that outputs the value of the self keyword to the console



def name_output
  puts self #or self.name, if you want to output that.
end







##Explain in as much detail as possible what self refers to and what it means in the grand scheme of things
=begin




Self refers to the current object being referred to.
It can refer to a class method, it could also refer to instance methods and variables.
Here's a brief example:
class Dan
  def self.montgomery
    "class method"
  end
end
Dan.montgomery # => "class method"





=end

##Explain what object instantiation means:
=begin



An object is created from a class. Earlier we did this by doing:
person = Person.new









=end



#What is the difference in scope between an instance variable vs a local variable?
#Which one is the instance variable and which one is the local variable?
class PersonC

  @name = "Amy"

  def print_name
    name = "Bob"
    puts name
  end

  def name
    puts @name
  end

end

=begin

An instance variable is available throughout your application, not just on a specific model or controller. 
Here, @name is an instance variable while name is a local variable to be used in the print_name method.

=end



#Explain in detail what a method is

=begin



A method is like a function. It holds statements, variables, and whatever logic you want in something that
can be called at some other point in your application. 






=end


##What is the difference between a Class method and an instance method?
class PersonB
  @name = "Hey"

  def self.name
    @name
  end

  def say_name
    puts "name is #{@name}"
  end
end

=begin


A class method (PersonB) is called on a class and instance methods are called on instances of that class. 
That's not a very simple answer. The class method means you can call it with "self". So self.name calls on 
that class method. Calling PersonB.say_name will give you a NoMethodError, because it is only an instance method.






=end



#Is it possible to add methods to an object after it is created? In other words...is the following code correct?? Explain your answer
class PersonD

  @name = "Bob"

  def say_name

  end

end

person  = PersonD.new

def person.say_name_again
  puts @name
end

person.say_name_again

=begin

person.say_name_again should return "Bob". @name was never redefined, 
and person.say_name_again is only puts-ing the @name instance variable.




=end




#What does the ? mark at the end of a method signify?

=begin

Check if this is a truthy statement?




=end


#What does the ! sign at the end of a method signify?

=begin

This modifies the object it's called on. So if I use "increment" and my value is nil, it may not work
If I use "increment!" and the value is nil, it will change that from nil to 1, an integer. 





=end



#What does the * symbol signify when passed as a method parameter?
#Where else is it used in the language and for what purpose?

def do_something *param
  puts param
end

=begin


It will capture all remaining arguments without having to put them into an array. 

You could also use it to call a method multiple times. 

If you want to get really in-depth, you can do something like this:

a = *(1..5)    #=> [1, 2, 3, 4, 5]




=end










