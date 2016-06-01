class Student

  attr_reader :name
  attr_accessor :age, :job

  def initialize(name, age, job)
    @name = name
    @age = age
    @job = job
  end

  def gets_older
    @age += 1
  end

  def changes_career(job)
    @job = job
  end

  def says_hello
    puts "Hello!"
  end
  
end
