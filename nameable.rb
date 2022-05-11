class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} hasn't implemented method '#{__method__}'"
  end
end
