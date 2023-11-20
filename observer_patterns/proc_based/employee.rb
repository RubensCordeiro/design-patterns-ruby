# frozen_string_literal: true

class Employee
  attr_accessor :name, :title
  attr_reader :salary

  def initialize(name, salary, title, observers = [])
    @observers = observers
    @name = name
    @salary = salary
    @title = title
  end

  def salary=(new_salary)
    @salary = new_salary
    notify_observers(:salary)
  end

  def add_observer(observer)
    @observers << observer
  end

  private

  def notify_observers(change)
    @observers.each { |observer| observer.call(self, change) }
  end
end
