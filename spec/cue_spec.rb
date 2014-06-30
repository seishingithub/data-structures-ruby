require_relative '../lib/cue'
require 'spec_helper'

describe Cue do
  let(:cue) {Cue.new}

  it 'has a constructor that takes no arguments and creates an empty Cue' do
    expect(cue.empty?).to eq true
  end

  it 'adds an item to the front queue "enqueue" style' do
    cue.add("Peggy")
    expect(cue.empty?).to eq false
    expect(cue.first).to eq "Peggy"
  end
end