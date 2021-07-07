class Instructor
    
    attr_accessor :name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, test_num)
        testtopass = BoatingTest.all.find do |test|
            test.student.first_name == student.first_name && test.name == test_num
        end
        if testtopass
            testtopass.status = "passed"
        else
            BoatingTest.new(student, test_num, "passed", self)
        end
    end
       
    def fail_student(student, test_num)
        testtofail = BoatingTest.all.find do |test|
            test.student.first_name == student.first_name && test.name == test_num
        end
        if testtofail
            testtofail.status = "failed"
        else
            BoatingTest.new(student, test_num, "failed", self)
        end 
    end
end
