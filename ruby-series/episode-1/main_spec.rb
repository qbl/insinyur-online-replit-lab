require 'rspec'
require_relative "main"

RSpec.describe "main" do
  it "should say hello world" do
    expect(hello).to eq("hello world")
  end
end