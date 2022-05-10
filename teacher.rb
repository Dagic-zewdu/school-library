
class Teacher < Person
   attr_accessor :specialization
   def initialize(specialization,age,name="unknown",parent_permission=true,id: 0)
      super(name: name, age: age, parent_permission: parent_permission, id: id)
     @specialization=specialization
   end
   def can_use_services
    true
   end
end