require "./players"
require "./questions"
  
def start
  puts "Welcome! This math game require two players"
  askQuestions  
end

@player1 = Players.new
@player2 = Players.new
@count = 0 
     
def askQuestions
  @count += 1

  if @count % 2 != 0 && @player1.alive? && @player2.alive?
    if @count != 1
        puts '----- NEW TURN -----'
    end

    question = Questions.new
    puts "Player 1: #{question.display}"
    print '> '
    response = gets.chomp.to_i

    if response == question.answer
      puts 'Player 1: YES! You are correct.'
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"    
    else 
      @player1.lives -= 1
      puts 'Player 1: Seriously? No!'
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    end
    askQuestions
        
  elsif @count % 2 == 0 && @player1.alive? && @player2.alive?
    puts '----- NEW TURN -----'
    question = Questions.new
    puts "Player 2: #{question.display}"
    print '> '
    response = gets.chomp.to_i

    if response == question.answer
      puts 'Player 2: YES! You are correct.'
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    else 
      @player2.lives -= 1
      puts 'Player 2: Seriously? No!'
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    end
    askQuestions

  else
    if !(@player1.alive?)
      puts "Player 2 wins with a score of #{@player2.lives}/3"
      puts '----- GAME OVER -----'
      puts 'Good bye!'
    else
      puts "Player 1 wins with a score of #{@player1.lives}/3"
      puts '----- GAME OVER -----'
      puts 'Good bye!' 
    end   
  end
end  

start