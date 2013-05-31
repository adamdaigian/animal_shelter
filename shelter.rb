class Shelters
  attr_accessor :name, :address, :animals

  def initialize(name, address)
    @name = name
    @address = address
    @animals = {}
  end

  def to_s
    puts "#{@name}, #{@address}"
  end
end