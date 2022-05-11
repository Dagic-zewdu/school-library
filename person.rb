class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age:, name: 'unknown', parent_permission: true, id: 0)
    @id = id.zero? ? rand(1...100) : id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age || @parent_permission
  end

  # private methods

  private

  def of_age?
    @age >= 18
  end
end
