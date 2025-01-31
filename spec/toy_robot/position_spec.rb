# frozen_string_literal: true

RSpec.describe ToyRobot::Position do
  it 'knows how to walk in the current direction' do
    position = described_class.new ToyRobot::Coordinate.new(0, 0), :north
    new_position = position.forward
    expect(new_position.y).to eq(1)
  end
end
