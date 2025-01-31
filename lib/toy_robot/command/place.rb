# frozen_string_literal: true

module ToyRobot
  module Command
    class Place
      def configure(placement_position)
        x, y, direction = placement_position.split ','
        coordinate = ToyRobot::Coordinate.new(x, y)
        @position = ToyRobot::Position.new(coordinate, direction)
      end

      def perform(robot)
        robot.place @position
      end

      def recognize?(command_name)
        command_name == 'PLACE'
      end
    end
  end
end
