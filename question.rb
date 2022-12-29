class Question
    attr_accessor :prompt, :answer, :name
  
    def initialize(prompt, answer)
      @prompt = prompt
      @answer = answer
    end

end


def run_test(questions)

    print "what's your name please: "
    name = gets.chomp
    score = 0
    right_answers = []
  
    for question in questions
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
  
    if score < 2
      puts "hey #{name} 😭 , you got #{score} / #{questions.length} ❌"
      puts "here are the correct answers #{right_answers}"
    else
      puts "Congrats #{name} 🤣, you got #{score} / #{questions.length} ✅"
    end
  end
  