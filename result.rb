class Result
  def initialize
    current_path = File.dirname(__FILE__)

    result_path = current_path + "/data/result.txt"

    abort "Файл не найден!" unless File.exist?(result_path)

    @result = File.readlines(result_path, encoding: 'UTF-8')
  end

  def print_result(test)
    puts "\nКоличество набранных очков равно: #{test.points}):"
    puts "\nВаш результат:"

  case test.points
  when (30..32) then puts @result[0]
  when (25..29) then puts @result[1]
  when (19..24) then puts @result[2]
  when (14..23) then puts @result[3]
  when (9..13) then puts @result[4]
  when (4..12) then puts @result[5]
  else
    puts @result[6]
  end
end
