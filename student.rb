
class Student < Person
  attr_accessor :classroom, :name, :id, :age, :parent_permission
   def initialize(classroom,age,name="unknown",parent_permission=true,id: 0)
      super(age: age, name: name, parent_permission: parent_permission, id: id)
     @classroom=classroom
   end
   def play_hooky
      "¯\(ツ)/¯"
   end
end
