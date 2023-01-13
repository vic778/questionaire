require_relative './quiz'

class Template < Quiz
  # def self.run
    q1 = 'What color are apples (a)red (b)black  (c)orange'
    q2 = 'what color are bananas? (a)ping (b)red (c)yellow'
    q3 = "Who's the creator of this algorith? (a)chrisian (b)victor (c)chanel"

    questions = [
      Quiz.new(q1, 'a'),
      Quiz.new(q2, 'c'),
      Quiz.new(q3, 'b')
    ]
    pp "what's your name please: "
    name = gets.chomp
    test_runner = TestRunner.new(name)
    test_runner.run(questions)
    # run(questions)
  # end
end
