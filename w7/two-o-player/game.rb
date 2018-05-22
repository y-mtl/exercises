require './player.rb'
require './question.rb'
require './turn_manager.rb'

class Game
  #attr_reader :players

  def initialize
    player1 = Player.new('Player A')
    player2 = Player.new('Player B')
    @players = [player1, player2]
    @turn = TurnManager.new(@players)
  end

  def get_target(current_player)
    targetable_players = players.select { |plyr| plyr != current_player }
  end

  def summary
    summary = @players.map { |plyr| plyr.summary }.join("\n")
"
-------- SUMMARY --------
#{summary}
-------------------------
"
  end

  def game_over?
    @players.first.dead? || @players.last.dead?
  end

  def players
    @players.select { |plyr| !plyr.dead? }
  end

  def find_winner
    players.first
  end

  def run
    while !game_over?
      current_player = @turn.current_player

      question = Question.new

      puts
      puts "#{current_player.name}'s Turn!"
      puts "#{question.create_question}"

      input = gets.chomp.to_i

      if question.correct_answer?(input)
        puts "\nYou did it!"
      else
        puts "\nNooooooo~!"
        current_player.reduce_life
      end

      puts summary
      @turn.next_turn

    end
    winner = find_winner
    puts "\n#{winner.name} has won the game!\n"
  end
end