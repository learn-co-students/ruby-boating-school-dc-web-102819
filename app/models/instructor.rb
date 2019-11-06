require 'pry'

require_relative './student.rb'
require_relative './boatingtest.rb'

class Instructors

    @@all = []

    attr_reader :name

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def pass_student(student,test_name)
        found_test = BoatingTest.all.find {|test| test.student == student && test.name == test_name}

        if found_test
            found_test.status = "pass"
            found_test
        else
            BoatingTest.new(student,test_name,"pass",self)
        end
    end

    def fail_student(student, test_name)
        found_test = BoatingTest.all.find {|test| test.student == student && test.name == test_name}

        if found_test
            found_test.status = "fail"
            found_test
        else
            BoatingTest.new(student,test_name,"fail",self)
        end
    end

end
