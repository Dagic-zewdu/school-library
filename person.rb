class Person
   attr_accessor :id, :name, :age
  def initialize(age,name="unknown",parent_permission=true, id: 0)
    @id = id.zero? ? rand(1...100) : id
    @age=age
    @name=name
    @parent_permission=parent_permission
  end
#   Getters for @id, @name, and @age.
  def getId
    @id
  end
  def getName
   @name
  end
  def getAge
   @age
  end
#   Setters for @name and @age
  def setName(name)
  @name=name
  end
  def setAge(age)
  @age=age
  end
  #   Public method can_use_services? that returns true if person is of age or if they have permission from parents.
 def can_use_services
  is_of_age() || @parent_permission
 end
#  Private method is_of_age? that returns true if @age is greater or equal to 18 and false otherwise.
  private
  def is_of_age
   @age>=18 
  end
end
