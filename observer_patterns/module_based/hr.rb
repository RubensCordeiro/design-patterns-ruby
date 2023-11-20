require_relative './observer'

class Hr < Observer
  def update(employee, change)
    puts "Employee #{employee.name} has changed its #{change}"
  end
end
