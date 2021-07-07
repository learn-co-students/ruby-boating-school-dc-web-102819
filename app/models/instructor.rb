class Instructor

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, test_name)
    match = BoatingTest.all.find do |boatingtest|
      boatingtest.student == student && boatingtest.boating_test_name == test_name
    end
    if match
      match.boating_test_status = "passed"
      return match
    else 
      student.add_boating_test(test_name, "passed", self)
    end
  end
  
  def fail_student(student, test_name)
    match = BoatingTest.all.find do |boatingtest|
      boatingtest.student == student && boatingtest.boating_test_name == test_name
    end
    if match
      match.boating_test_status = "failed"
      return match
    else
      student.add_boating_test(test_name, "failed", self)
    end
  end

end
