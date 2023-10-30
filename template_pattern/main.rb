require './sum.rb'

operands = (1..10).to_a

new_operation = Sum.new(operands)
new_operation.perform_operation