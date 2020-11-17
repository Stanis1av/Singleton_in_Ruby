# class Logger
#   def say_something
#     puts 'it method say something 1'
#   end
# end

# logger = Logger.new
# logger.say_something

# Недостатки: при каждом вызове метода new в памяти, создаётся новый объект

#===============================================

class Logger
  def initialize
    @f = File.open('log.txt', 'a')
  end

  # class method
  def self.say_something
    puts 'it method say something 1'
  end

  # instance mehod
  def self.log_something wat
    f.puts wat
  end
end

Logger.say_something

logger = Lager.new
logger.log_something 'fizz buzz'
