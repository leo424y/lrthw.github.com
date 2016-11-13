## Animal is-a object (yes, sort of confusing) look at the extra credit
class Animal
  p 'Animal'
end
## ??
class Dog < Animal
  def initialize(name)
    ## ??
    @name = name
  end
end
## ??
class Cat < Animal
  def initialize(name)
    ## ??
    @name = name
  end
end
## ??
class Person
  attr_accessor :pet
  def initialize(name)
    ## ??
    @name = name
    ## Person has-a pet of some kind
    @pet = nil
  end

  def say_i_have(i_have)
    p 'I have' + i_have.to_s
  end

  def say_i_am(i_am)
    p 'I am' + i_am.to_s
  end
end
## ??
class Employee < Person
  def initialize(name, salary)
    ## ?? hmm what is this strange magic?
    super(name)
    ## ??
    @salary = salary
  end
end
## ??
class Fish
end
## ??
class Salmon < Fish
end
## ??
class Halibut < Fish
end

## rover is-a Dog
rover = Dog.new('Rover')
## ??
satan = Cat.new('Satan')
## ??
mary = Person.new('Mary')

## ??
mary.pet = satan
mary.say_i_have(mary.pet)
mary.say_i_am(mary)

## ??
frank = Employee.new('Frank', 120_000)
## ??
frank.pet = rover
## ??
flipper = Fish.new
## ??
crouse = Salmon.new
## ??
harry = Halibut.new
