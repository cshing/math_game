class Questions
  attr_accessor :answer, :display
    
  def initialize() 
    @number1 = rand(1...20)
    @number2 = rand(1...20)
    @answer = @number1 + @number2
    @display = "What does #{@number1} plus #{@number2} equal?"
  end
end