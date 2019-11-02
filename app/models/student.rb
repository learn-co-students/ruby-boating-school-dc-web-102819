class Student

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(boating_test_name, boating_test_status, instructor)
    BoatingTest.new(self, boating_test_name, boating_test_status, instructor)
  end

  def self.find_student(first_name)
    self.all.find do |student|
      student.first_name == first_name
    end
  end

  def grade_percentage
    student_test = BoatingTest.all.select do |boatingtest|
      boatingtest.student == self
    end
    passed_test = student_test.collect do |boatingtest|
      boatingtest.status == "passed" 
    end
    student_score = passed_test.count / student_test.count
  end

end
