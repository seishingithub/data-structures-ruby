class Cue

  def initialize
    @cue = []
  end
  def empty?
    @cue.empty?
  end

  def add(person)
    @cue << person
  end

  def first
    @cue.first
  end

  def last
    @cue.last 
  end
end