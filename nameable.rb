require './person'

class Nameable
  def correct_name(name)
    name.capitalize[0, 10]
  end
end
