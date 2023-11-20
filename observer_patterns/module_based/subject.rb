# frozen_string_literal: true

module Subject
  def initialize(observers = [])
    @observers = observers
  end

  def add_observer(observer)
    @observers << observer
  end

  def notify_observers(change)
    @observers.each { |observer| observer.update(self, change) }
  end
end
