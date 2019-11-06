require 'pry'
require_relative './instructor.rb'
require_relative './boatingtest.rb'

class Student

        @@all = []

        attr_reader :first_name

        def initialize(first_name)
            @first_name = first_name
            @@all.push(self)
        end

        def self.all
            @@all
        end

        def add_boating_test(name,status,instructor)
            BoatingTest.new(self,name,status,instructor)
        end

        def self.find_student(first_name)
            self.all.select {|student| student.first_name == first_name}
        end

        def grade_percentage
            all_student_tests = BoatingTest.all.select do |test|
                test.student == self
              end
          
            passed_tests = all_student_tests.select do |test|
                test.status == "pass"
              end
          
            passed_tests.count.to_f / all_student_tests.count.to_f
          
            (passed_tests.count.to_f / all_student_tests.count.to_f) * 100
        end

end

