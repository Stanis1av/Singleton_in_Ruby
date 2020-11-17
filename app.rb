class Logger
  def say_something
    puts 'it method say something 1'
  end
end

logger = Logger.new
logger.say_something

# Недостатки: при каждом вызове метода new в памяти, создаётся новый объект

#===============================================

class Logger
  def self.say_something
    puts 'it method say something 1'
  end
end

Logger.say_something
