class Question
  attr_accessor :prompt, :answer, :name

  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end
end

def run_test(questions)
  pp "what's your name please: "
  name = gets.chomp
  score = 0
  user_desire = false
  right_answers = []

  questions.each do |question|
    print "#{question.prompt}: "
    answer = gets.chomp
    until question.prompt.include?(answer)
      puts 'please this answer is not included in the list of answers'
      print "#{question.prompt}: "
      answer = gets.chomp
    end
    score += 1 if answer == question.answer
    right_answers << question.answer
  end

  p 'do you want to made a changes? N/Y'
  changes = gets.chomp
  user_desire = true if changes == 'y'

  if user_desire
    pp 'Which question do you want to change? (enter the number): '
    question_number = gets.chomp.to_i

    question = questions[question_number - 1]
    print "#{question.prompt}: "
    new_answer = gets.chomp

    question.answer = new_answer
    score = 0
    right_answers = []
    questions.each do |q|
      score += 1 if q.answer == question.answer
      right_answers << question.answer
    end
  end

  if score < 2
    # p "here is the user desire #{user_desire}"
    puts "\033[31mhey #{name} 😭 , you got #{score} / #{questions.length} ❌\033[0m"
    puts "here are the correct answers #{right_answers}"
  else
    # p "here is the user desire #{user_desire}"
    #   puts "Congrats #{name} 🤣, you got #{score} / #{questions.length} ✅"
    puts "\033[32mCongrats #{name} 🤣, you got #{score} / #{questions.length} ✅\033[0m"

  end
end
