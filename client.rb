class Client
  attr_accessor :name, :pets

  def initialize(name)
    @name = name
    @pets = {}  
  end
end