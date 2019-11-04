class Student
    
    attr_accessor :first_name
    @@all=[]
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end
    def self.all
        @all
    end
    def add_boating_test(boating_test_name, boating_teat_status,instructor)
        BoatingTest.new(self,boating_test_name, boating_teat_status,instructor)
    end
    
    def self.find_student(name)
        self.all.find do |student|
          student.first_name == name
        end
      end

   
    def grade_percentage
        student_tests= BoatingTest.all.find_all do|test| 
            test.student == self
        end
        passed_test= student_tests.select do |test|
            test.boating_test_status == "passed"
        end
        percentage = (passed_tests.count.to_f/student_tests.count.to_f)*100
        
        return percentage
       
      end
      


end
