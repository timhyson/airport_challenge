require_relative 'plane'

class Airport
  def initialize
    @planes = []
  end

  def capacity
    10
  end

  def release(plane)
    fail 'airport empty' if empty?
    @planes.pop
  end

  def receive(plane)
    fail 'airport full' if full?
    @planes << plane
  end

  private

  def full?
    @planes.count >= 10
  end

  def empty?
    @planes.empty?
  end
end
