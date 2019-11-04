class Instructor
    attr_reader :name
    @@all =[]
    def initialize (name)
        @name= name
        @@all << self
    end
    def self.all 
        @@all
    end 
   
    def pass_student(student, boating_test_name)
        test1 = find_test(student, boating_test_name)
        if test1
            test1.boating_status = "passed"
            return test1
        else
            new_test = BoatingTest.new(student, test_name, "passed", self)  
            new_test  
        end
    end
        
    def fail_student(student, boating_test_name)
        test1 = find_test(student, boating_test_name)
        if test1
            test1.boating_status = "failed"
            return test1
        else
            new_test = BoatingTest.new(student, test_name, "failed", self)  
            new_test  
        end

    end

end    
     
          
            


