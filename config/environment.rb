require 'bundler/setup'
Bundler.require
require_all 'app'

spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")
squidward = Student.new("Squidward")

puff = Instructor.new("Mrs. Puff")
krabs = Instructor.new("Mr. Krabs")

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = squidward.add_boating_test("Power Steering 201", "passed", krabs)
binding.pry
0
