class Student
    attr_accessor :first_name, :last_name
    
    @@all = []

    def initialize (first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(name, status, instructor)
        BoatingTest.new(self, name, status, instructor)
    end

    def self.find_student(student_first_name)
        self.all.find do |student|
            student.first_name == student_first_name
        end
    end

    def grade_percentage
        studentTests= BoatingTest.all.find_all do |test|
          test.student.first_name ==  self.first_name
        end
        totalTests= studentTests.length.to_f
        testsPassed= studentTests.find_all do |test|
            test.status == "passed"
        end
        averagePassed= testsPassed.length.to_f
        percentage= (averagePassed/testsPassed)*100
    end
end
