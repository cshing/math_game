class Players
  attr_accessor :name, :lives
    
  def initialize(name, lives = 3)
    @name = name
    @lives = lives
  end
    
  def alive?
    @lives > 0
  end
end