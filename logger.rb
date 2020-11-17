class Logger
  def initialize
    @f = File.open('log.txt', 'a')
  end

  @@x = Logger.new

  def self.instance
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

  private_class_method :new
end
