class Test
  def initialize
    current_path = File.dirname(__FILE__)

    questions_path = current_path + "/data/questions.txt"

    abort "Файл не найден!" unless File.exist?(questions_path)

    @questions = File.readlines(questions_path, encoding: 'UTF-8')

    @points = 0

    @question = 0
  end

  def finish?
    @question == @questions.size
  end

  def next_question
    puts @questions[@question].chomp

    user_input = nil
    until user_input == "yes" || user_input == "maybe" || user_input == "no"
      puts "Введите ответ: 'yes' или 'maybe' или 'no'' и нажмите 'Enter'"
      user_input = gets.chomp.downcase
    end

    if user_input == "yes"
      @points += 2
    elsif user_input == "maybe"
      @points += 1
    end

    @question += 1

    def points
      @points
    end
  end
end

