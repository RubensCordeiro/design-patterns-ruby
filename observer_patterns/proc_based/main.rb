# frozen_string_literal: true

require_relative './employee'

hr = proc do |employee, change|
  puts "Employee #{employee.name} has changed its #{change}"
end

tax_dept = proc do |employee, _change|
  puts "So, your new salary is #{employee.salary}?? Time to pay taxes."
end

employee = Employee.new('rubens', 1000, 'SEIII')
employee.add_observer(hr)
employee.add_observer(tax_dept)
employee.salary = 5000
