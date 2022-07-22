class Person
  def initialize(args)
    args.each do |key, value|
      # create a getter and setter by calling the attr_accessor method
      self.class.attr_accessor(key)
      
      # Create attribute
      self.send("#{key}=", value)
    end
  end
end
