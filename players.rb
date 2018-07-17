class Players
  attr_accessor :lives
    
  def initialize(lives = 3)
    @lives = lives
  end
    
  def alive?
    @lives > 0
  end
end