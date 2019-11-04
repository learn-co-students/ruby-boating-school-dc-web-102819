class Student
    attr_accessor :first_name

    @@all = []
#initialize first_name

    def initialize(first_name)
        @first_name = first_name
        @@all << self
        
    end
#student.all  should return all the instance 
#@@all
    def self.all
        @@all
    end

#add_boating_test student (object) 
# boating test name(string)
    def add_boating_test( name, status, instructor)
        BoatingTest.new( name, status, instructor)
    end
#.find_student will take the first name of the student
# return their name
    def self.find_student(student_name)
        self.all.find{|student| student.first_name == student_name}
    end

# grade_percentage  should return percentage of the test
# we need to find the test of that student
def grade_percentage
    studentTests= BoatingTest.all.find_all{|test| test.student.first_name == self.first_name}
    totalTests= studentTests.length.to_f
    totalPassed= studentTests.find_all{|test| test.status == "passed"}
    numPassed= totalPassed.length.to_f
    percent= (numPassed/totalTests)*100
  end
end
