class Student
  #why do we use symbols for attr_accessor & co?
  #this is what we always see,
  attr_accessor :name, :age, :fav_color

  # using strings works, why?
  # attr_accessor "name", "age", "fav_color"

  # using variables gives NameError, undefined local variable
  # attr_accessor name, age, fav_color

  # using instance variables give TypeError "nil is not a symbol", the instance variables are pointing to nil, they are not defined
  # attr_accessor @name, @age, @fav_color

#I need initialize, I can read and write these with attr_accessor
  def initialize(name, age, fav_color)
    @name = name
    @age = age
    @fav_color = fav_color
  end
end

mathilde = Student.new("Mathilde", 87, "taupe")
puts mathilde.name
puts mathilde.age
puts mathilde.fav_color

# mathilde.name = "Mathilde mouw"
# puts mathilde.name
