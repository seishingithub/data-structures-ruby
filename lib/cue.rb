class Cue

  def initialize
    @cue = []
  end
  def empty?
    @cue.empty?
  end

  def enqueue(person)
    @cue << person
  end

  def first
    @cue.first
  end

  def dequeue
    @cue.last
  end

  def sum
    @cue.count
  end
end