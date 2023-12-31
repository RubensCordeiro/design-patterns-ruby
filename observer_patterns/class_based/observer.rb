# frozen_string_literal: true

class Observer
  def update
    raise NotImplementedError, 'Classes that will observe need to implement the update method'
  end
end
