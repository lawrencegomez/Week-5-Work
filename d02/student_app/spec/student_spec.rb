require "student"

describe Student do
  describe "#initialize" do #the "#" is used because intialize is an instance method
    it "creates a student with a name" do
      student1 = Student.new("john", 101, "cat wrangler")
      expect(student1.name).to eq("john")
    end
  end

  describe "#gets_older" do
    it "adds one to the student's age" do
      student1 = Student.new('john', 101, 'cat wrangler')
      student1.gets_older
      expect(student1.age).to eq(102)
    end
  end

  describe "#changes_career" do
    it "changes the students job" do
      student1 = Student.new('john', 101, 'cat wrangler')
      student1.changes_career('')
      expect(student1.job).to eq('')
    end
  end

  describe "#says_hello" do
    it "returns the string 'hello'" do
      student1 = Student.new('john', 101, 'cat wrangler')
      student1.says_hello
    end
  end
end
