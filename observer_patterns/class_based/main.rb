# frozen_string_literal: true

require_relative './employee'
require_relative './hr'

hr = Hr.new

employee = Employee.new('rubens', 1000, 'SEIII')
employee.add_observer(hr)
employee.salary = 5000
