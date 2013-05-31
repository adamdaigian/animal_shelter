class Pets
  attr_accessor :name, :favorite_toy, :adopted, :is_avail

  def initialize(name, favorite_toy, is_avail)
    @name = name
    @favorite_toy = favorite_toy
    @is_avail = is_avail
  end

  def to_s 
    puts "#{@name}, #{@favorite_toy}, #{@is_avail}"
  end  
end