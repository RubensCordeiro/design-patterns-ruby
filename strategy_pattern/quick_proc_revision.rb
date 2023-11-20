# frozen_string_literal: true

# A PROC is just a chunk of code that one can call later using the .call method:
some_proc = proc { puts 'inside the proc' }
some_proc.call

# A proc can also take parameters
some_proc = proc { |x| puts x }
some_proc.call(999)

# We can pass a proc to a method for it to be executed using the yield keyword
def will_call_method(x)
  puts 'Before the proc'
  yield(x)
  puts 'After the proc'
end

will_call_method(25) { |x| puts "Inside the proc with parameter #{x}" }

# We can pass the proc implicitelly as well
some_proc = proc { |x| "Here is param #{x}" }

def calls_proc_as_param(&block)
  puts block.call(100)
end

calls_proc_as_param(&some_proc)
