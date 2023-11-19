class Employee
  attr_accessor :name, :title
  attr_reader :salary

  def initialize(name, salary, title, observers = [])
    @name = name
    @salary = salary
    @title = title
    @observers = observers
  end

  def add_observer(observer)
    @observers << observer
  end

  def salary=(new_salary)
    @salary = new_salary
    notify_observers(:salary)
  end

  def notify_observers(change)
    @observers.each { |observer| observer.update(self, change) }
  end
end
