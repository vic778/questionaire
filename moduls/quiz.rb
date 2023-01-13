class Quiz
  attr_accessor :prompt, :answer
  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end
end

class TestRunner
  def initialize(name)
    @name = name
  end

  def run(questions)
    p "Welcome to the quiz }"
    score = 0
    right_answers = []
    user_desire = false
    take_test(questions, score, right_answers)
    check_for_changes(questions, score, right_answers)
    display_results(questions, score, right_answers)
  end

  def take_test(questions, score, right_answers)
    questions.each do |question|
      print "#{question.prompt}: "
      answer = gets.chomp
      while !question.prompt.include?(answer)
        puts "please this answer is not included in the list of answers"
        print "#{question.prompt}: "
        answer = gets.chomp
      end
      score += 1 if answer == question.answer
      right_answers << question.answer
    end
  end

  def check_for_changes(questions, score, right_answers)
    p "do you want to made a changes? N/Y"
    changes = gets.chomp 
    if changes ==  "y" 
        user_desire  =  true
    end

    if user_desire
        print "Which question do you want to change? (enter the number): "
        question_number = gets.chomp.to_i

        question = questions[question_number - 1]
        print "#{question.prompt}: "
        new_answer = gets.chomp

        question.answer = new_answer
        score = 0
        right_answers = []
        questions.each do |question|
          score += 1 if question.answer == question.answer
          right_answers << question.answer
        end
    end
  end

  def display_results(questions, score, right_answers)
    if score < 2
    puts "\033[31mhey #{@name} 😭 , you got #{score} / #{questions.length} ❌\033[0m"
    puts "here are the correct answers #{right_answers}"
    else
    puts "\033[32mCongrats #{@name} 🤣, you got #{score} / #{questions.length} ✅\033[0m"
    end
  end
end


