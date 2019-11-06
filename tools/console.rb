require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,so they will be available to test and play around with in your console

#Student Class instance tests
spongebob = Student.new("Sponge Bob")
patrick = Student.new("Patrick")
squidward = Student.new("Squidward")

#Instructor Class instance tests
puff = Instructors.new("Ms. Puff")
krabs = Instructors.new ("Mr. Krabs")
sandy = Instructors.new("Sandy")

#BoatingTest Class instance tests
test1 = BoatingTest.new(spongebob,"Parallel Parking 101", "fail", puff)
test2 = BoatingTest.new(patrick, "Looping 101", "pass",krabs)
test3 = BoatingTest.new(squidward, "Highway Test 101", "pass", sandy)
test4 = BoatingTest.new(squidward, "Steering Test 101", 'pass', krabs)
test5 = BoatingTest.new(spongebob, "Normal Parking 101", "pass", sandy)
test6 = BoatingTest.new(squidward, "Anger Management 101", "fail", krabs)

#Student Class method tests
Student.all
patrick.add_boating_test("Road Signs 101", "pass", puff)
Student.find_student("Sponge Bob")
squidward.grade_percentage

#Instructor Class method tests
Instructors.all
puff.pass_student(spongebob,"Parallel Parking 101")
krabs.fail_student(patrick, "Looping 101")

binding.pry

0 #leave this here to ensure binding.pry isn't the last line

