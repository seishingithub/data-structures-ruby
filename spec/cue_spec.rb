require_relative '../lib/cue'
require 'spec_helper'

describe Cue do
  let(:cue) {Cue.new}

  it 'has a constructor that takes no arguments and creates an empty Cue' do
    expect(cue.empty?).to eq true
  end

  it 'adds an item to the front queue "enqueue" style' do
    cue.enqueue("Peggy")
    expect(cue.empty?).to eq false
    expect(cue.first).to eq "Peggy"
  end

  it 'returns the item at the end of the queue' do
    cue.enqueue("Peggy")
    cue.enqueue("Ellie")
    expect(cue.empty?).to eq false
    expect(cue.first).to eq "Peggy"
    expect(cue.last).to eq "Ellie"
    expect(cue.sum).to eq 2
  end

  it 'tells you how many items are in the queue' do
    cue.enqueue("Peggy")
    cue.enqueue("Ellie")
    cue.enqueue("Paul")
    expect(cue.sum).to eq 3
  end
end