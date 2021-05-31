require 'rspec'
require_relative 'sort'

describe 'Sort' do
  it 'should return [] when sorting []' do
    input_array = []
    expect(sort(input_array)).to eq([])
  end

  it 'should return [1] when sorting [1]' do
    input_array = [1]
    expect(sort(input_array)).to eq([1])
  end
end