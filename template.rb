require_relative './question.rb'

class Template < Question
   
    q1 = "What color are apples (a)red (b)black  (c)orange"
    q2 = "what color are bananas? (a)ping (b)red (c)yellow"
    q3 = "Who's the creator of this algorith? (a)chrisian (b)victor (c)chanel"

    questions = [
        Question.new(q1, "a"),
        Question.new(q2, "c"),
        Question.new(q3, "b")
    ]   
   
    run_test(questions)
end
