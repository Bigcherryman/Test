require_relative "test"
require_relative "result"

test = Test.new
result = Result.new

until test.finish?
  test.next_question
end

result.print_result(test)
