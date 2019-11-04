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

    def find_test(student, test_name)
        BoatingTest.all.find do |tst|
            tst.student == student && tst.boating_test_name == test_name
        end
    end

    def pass_student(student, test_name)
        test_ = find_test(student, test_name)
        if test_
            test_.boating_status = 'passed'
            return test_
        else
            new_test = BoatingTest.new(student, test_name, "passed", self)  
            new_test  
        end
    end

    def fail_student(student, test_name)
        test_ = find_test(student, test_name)
        if test_
            test_.boating_status = 'failed'
            return test_
        else
            new_test = BoatingTest.new(student, test_name, "failed", self)  
            new_test  
        end
        #binding.pry
    end


end
