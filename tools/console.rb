require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


kyle = Student.new("Kyle")
kevin = Student.new("Kevin")

chris = Instructor.new("Chris")
karen = Instructor.new("Karen")

boating101 = kyle.add_boating_test("Boating 101", "open", chris)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

