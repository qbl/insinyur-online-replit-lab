require 'rspec'
require_relative 'sort'

describe 'Sort' do
  it 'should return [] when sorting []' do
    input_array = []
    expect(sort(input_array)).to eq([])
  end
end