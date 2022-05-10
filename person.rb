class Person
  attr_reader :rentals, :name, :id, :age, :parent_permission

  def initialize(age:, name: 'unknown', parent_permission: true, id: 0)
    @id = id.zero? ? rand(1...100) : id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def getId
    @id
  end

  def getName
    @name
  end

  def getAge
    @age
  end

  def setName=(data)
    @name = data
  end

  def setAge=(data)
    @age = data
  end

  def can_use_services?
    of_age? || @parent_permission == true
  end

  # private methods

  private

  def of_age?
    @age >= 18
  end
end