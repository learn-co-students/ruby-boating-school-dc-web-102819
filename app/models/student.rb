class Student

    attr_accessor :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name

        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(boating_name, boating_status, instructor)
        BoatingTest.new(self,boating_name,boating_status,instructor)
    end

    def self.find_student(name)
        self.all.find {|student|student.first_name == name}
    end

    def grade_percentage
        student_tests = BoatingTest.all.select {|tst| tst.student == self}
        passed_tests = student_tests.select {|tst|tst.boating_status == 'passed'}
        percentage = (passed_tests.count.to_f/student_tests.count.to_f)*100
        return percentage
    end

end
