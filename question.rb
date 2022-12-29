class Question
    attr_accessor :prompt, :answer
  
    def initialize(prompt, answer)
      @prompt = prompt
      @answer = answer
    end
  end
  
  def run_test(questions)
    answer = ""
    score = 0
    for question in questions
      p question.prompt
      answer = gets.chomp()
      if answer == question.answer
        score += 1
      end
    end
    p "you got #{score} / #{questions.length}"
  end
  
  q1 = "What color are apples (a)red (b)black  (c)orange"
  q2 = "what color are bananas?\n(a)ping\n(b)red\n(c)yellow"
  q3 = "Who's the creator of this algorith?\n(a)chrisian\n(b)victor\n(c)chanel"

    questions = [
        Question.new(q1, "a"),
        Question.new(q2, "c"),
        Question.new(q3, "b")
    ]
  
run_test(questions)
  

# "What color are apples (a)red (b)black  (c)orange"
# a
# "what color are bananas?\n(a)ping\n(b)red\n(c)yellow"
# c
# "Who's the creator of this algorith?\n(a)chrisian\n(b)victor\n(c)chanel"
# b
# "you got 3 / 3"