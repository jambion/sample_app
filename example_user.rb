class User
  
  # creates attribute accessors corresponding to a user's name and email address
  # Creates "getter" and "setter" methods that allow us to retrieve (get) and
  # assign (set) @name and @email instance variables
  # Instance variables are automatically available in the view, but in general
  # they are used for variables that need to be available throughout a Ruby class
  # Instance variables begin with an @ sign
  attr_accessor :name, :email
  
  # initialize method: the method called when we execute User.new
  # Takes in one argument, attributes, with the default value equal to 
  # the empty hash, so that we can define a user with no name or email address
  # 
  def initialize(attributes = {})
    @name = attributes[:name]
    @email = attributes[:email]
  end
  
  # Uses the values of the assigned @name and @email variables to build up
  # a nicely formatted version of the user's email address using string interpolation
  def formatted_email
    "#{@name} <#{@email}>"
  end
end