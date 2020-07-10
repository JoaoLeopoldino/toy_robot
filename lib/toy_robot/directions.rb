# frozen_string_literal: true

# lib/toy_robot/directions.rb
module ToyRobot
  # toy_robot/direction.rb
  module Directions
    DIRECTIONS_MAP = {
      north: North.instance,
      west: West.instance,
      south: South.instance,
      east: East.instance
    }.freeze

    def self.[](direction_name)
      DIRECTIONS_MAP[direction_name]
    end
  end
end
