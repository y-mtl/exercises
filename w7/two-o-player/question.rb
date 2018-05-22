class Question
  attr_reader :random1, :random2, :answer

  def initialize
    @random1 = rand(1..20)
    @random2 = rand(1..20)
    @answer = @random1 + @random2
  end

  def create_question
    "What does #{@random1} plus #{@random2} equal?"
  end

  def correct_answer?(input)
    @answer == input
  end
end