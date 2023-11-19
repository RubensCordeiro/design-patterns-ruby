require_relative './subject'
class Employee < Subject
  attr_accessor :name, :title
  attr_reader :salary

  def initialize(name, salary, title, observers = [])
    super(observers)
    @name = name
    @salary = salary
    @title = title
  end

  def salary=(new_salary)
    @salary = new_salary
    notify_observers(:salary)
  end
end
