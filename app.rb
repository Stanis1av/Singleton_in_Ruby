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

  @@x = nil

  def self.instance
    if @@x == nil
      @@x = Logger.new
    end

    return @@x
  end

  # class method
  def self.say_something
    puts 'it method say something 1'
  end

  # instance mehod
  def log_something wat
    @f.puts wat
  end
end

Logger.instance.log_something 'bla'
Logger.instance.log_something 'bla-bla'

puts '=' * 40
Logger.say_something

logger = Logger.new
logger.log_something 'fizz buzz'
