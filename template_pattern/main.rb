require './sum.rb'
require './subtraction.rb'

operands = (1..10).to_a

# The template method consists of:
# - A base class that implements the general methods used in the operation/process (Operaion in this case)
# - Child classes that will change ONLY the variable part of the code (In this case how the operands will be aggregated)
# - The methods that can be overwritten by the child classes are called Hook Methods
# - The benefits of this pattern is to remove from the concrete classes (the child ones) all the code not related to its core functionality
# I.E: The sum class cares not about how to display the data to the user. It only cares about summing the operands passed to it.

# Examples:
sum_operation = Sum.new(operands)
sum_operation.perform_operation

puts "\n"

subtraction_operation = Subtraction.new(operands)
subtraction_operation.perform_operation
