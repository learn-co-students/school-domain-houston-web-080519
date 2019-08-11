class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}    
  end
  
  def add_student(name, grade)
    
    # if @roster.has_key?(grade)
    #   @roster[grade] << name
    # else
    #   @roster << [grade, name]
    # end
    
    roster[grade] ||= []
    roster[grade] << name
    
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
    sortedGrade = {}
    roster.each do |grade, names|
      sortedGrade[grade] = names.sort
    end
    sortedGrade
  end
  
end